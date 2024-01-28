Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E611D22EE8
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706446697; cv=none; b=G50yjSzlMfoD6XnyVL2kPNMMjlICbPZFdeL4ox1YqCqT1KepWm81NZa/1faavOLI485qLmFOaat3XFWi9eIoOV2HweYvMMkcmQ2HA2HvAyIx9H+NNaCM6AHtO9ul7jx9T1QZ2ggGTewH+qzOq4GGJNPb7bncAlc1SJ936WstaQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706446697; c=relaxed/simple;
	bh=SVVkbgi0rNbXV5Ff5v2U2MvVe+2ZD273Mb8vl22kiUA=;
	h=To:Subject:From:Message-Id:Date; b=mKvmJx+pd7S10C8IYo8s9kBJuLZNgRi08WmlhFSpX6OIvwhHc5Z9BzMGygwXo1B2xQqcMTY/MC+UkW5nZ1IcAW2oRcjuc0+5xELQsER8ESWsQnmfMLBZDzaAeK6aoetoP/oq8/PeczpSAW1oTZ9rVQnZCI/k+uSRNKT3kR7td0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hng4Qtdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hng4Qtdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85023C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706446696;
	bh=SVVkbgi0rNbXV5Ff5v2U2MvVe+2ZD273Mb8vl22kiUA=;
	h=To:Subject:From:Date:From;
	b=Hng4Qtdh04Q4eaQbHRJs9feKENVWOPI+PjGfv/ARJH+qsrSe6L+Pg7unAg4G5uANT
	 rQVDI5S+TuAgR6Yq1MiK3i+hXgUXRQBFu32s8+s4fMjXXMP/89Y0WXgIEBTEDEi+6q
	 alKtnG9u1TzlegfiJo+YjV+zNApYUBWD639SCihCwkCP/Zmbp9t2yBXf/ztnG9Ckr3
	 BzVXNEJZkwpcB15U53h0L9L81ZL/QMqCXYIwLRQl+9Ne0UKPa5rVioNk2NUlUbxn9y
	 QZ2OPS/1EHww1a6AAslKt1FghbUh5t+gJyv3ht6o8mC//HWo7EoPLqB9fzVcB2Sksk
	 bbQE1p4/dDEKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6340CC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170644669638.11706.16027628517887803819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34343d60a727f739cf673e5bc228aac4631df69d6d7cc7cf073ff9e82809b45a
Date: Sun, 28 Jan 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706446696
