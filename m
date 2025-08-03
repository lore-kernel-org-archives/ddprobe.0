Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B0E1E9B3A
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754204394; cv=none; b=i7kmfO98moTnHTuZPo1S20we6OgHr9CCEadMwIrcSyPeoA0y6fQ5ONqoadauDDRlyQ/iA7eZ81xdV+bcWHDZtA+DBoJNqV8RxurSb5ymHTj6gFxOLAnfUjUnZDWuXQEBIy8fyzpfwnbJhOMImB6fQn0gdjuUXldrqm+O3r0UwXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754204394; c=relaxed/simple;
	bh=E9wn7DrSKImgZRloic1i69wHIx6D15VNQW9iVcfhJQQ=;
	h=To:Subject:From:Message-Id:Date; b=qcYsRYeVvscTBd4TK8OVEjSq0HOS1w61zXfgANkMPs7FRL6embgcVMgCmDHDA8hdyuAhtBlGjG0EWJQwf5e7O0W+X/TiOJr3sHwDrA9foDI8lYoxxSJ6TkhhYmY97FcANHyvLjShjLTNQz1oeccai0kf7oEF0lN7Se7prFjg/dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwbTUh+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwbTUh+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFB6C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754204393;
	bh=E9wn7DrSKImgZRloic1i69wHIx6D15VNQW9iVcfhJQQ=;
	h=To:Subject:From:Date:From;
	b=fwbTUh+KE7ZIIJZ2+IKH7jdXZuiAqj4gQSf0Mu87vMa4N/9ceB2f9Pj9vrcZWdhwc
	 +NMrNbqLCO2tULGYpKL3qFHLn9eWpmwI3G76XUXlXxrCge8QkTuWrCflGqx7sPhll/
	 bIXiQ6PntiMbW454tijGpFvS78lnr36rtHKpmW9YSYH/0XWmMRH2B8+ZJ51fmkYYcH
	 xaNupP4B8Ovfbx7JGgLqISQX4Tayk+HV0ut0hQpjN1DVFPpZb+O5Wi0MWW+/lruwMq
	 JkcjInfhkUkpx8vPpoat0a3RxxNp+A8i7dR/QpUcRIdhmSlen7fGeWBh1/+xer0CyJ
	 lfQq7Kil6ZgrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915ACC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420439357.18944.18082890018284292996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f3c3e95b8fc170b3309a41f46e903530a59753da44ab4fe54800c01e588570
Date: Sun, 03 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754204393
