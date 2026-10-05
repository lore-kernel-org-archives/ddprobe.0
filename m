Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BAC153BE9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791168034; cv=none; b=lf7XUU5MnGoi5CgbKNvn2dbGBU2JGq5ByjH4RO4yG8yG2A9qepRbBQ0AtEFZ8EWpo/Fh5YGxM0lNoxVNvZ5IyUE43N4rgE74tIXzZyUuwbyAG62+6L0qCN56+oYSC0f/wtOkZh7Vgy1oJZARDgWXwH7/yUiLR1NSPMvCaYjNWlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791168034; c=relaxed/simple;
	bh=zVZcLzZb829kXH03ItzII2x+opUFCgJH1mlrRUrAUOw=;
	h=To:Subject:From:Message-Id:Date; b=GEssYAqY0jzC97QC0SKze9OKSCA9jm47BAHbbXtNk7sQ1iOAY3J3PWKkkDVx2241XDJJxNpygsnJXYFCqVCb5sehRA0XqRfeYAYZm4dVUCVoLF/6vcX4rd1g9Xzp7ze/OGbOdzo/44m9SkXOqWxuKJd1wa2LY+rrZi+NKi5k8TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKb1OA59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKb1OA59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2232C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791168033;
	bh=zVZcLzZb829kXH03ItzII2x+opUFCgJH1mlrRUrAUOw=;
	h=To:Subject:From:Date:From;
	b=nKb1OA593+T48d+2PmSsi0SvieySvaazYH7Cl2QCI/ggpO1SaXtuqTTshQW+M7YvA
	 XHQHpTTrn60ROp1HONtr5jHh2auEc20hqnYPvb0qfujVDNp4a5C9S1+CE1Szn7lZ9D
	 IHErjNuMwNbQi5BazUrwarDoKpIK/tht4KADjeKvMyu9e7nul1EwAqHGenxPjvq2+K
	 wc2erjVlx8yvXfqisNWvOzcg4lFBHbFmQ0t3jExQmn7zZFAah/pHtzCfhoP9loRgCe
	 lMe9YZFMjvmaXEdq4gFXGV4k+URMEKuwEd0LSBOVYYVwan04zD7l8JQQoCtx4Q97Kp
	 lZgx9Uyp3xCJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECACCA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116803370.21508.3972665559311065688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892b86fdfd0577a788d9f74e2d83edd4a18134dcd8c1694805f7ce2230a4516f
Date: Mon, 05 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791168033
