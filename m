Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2492F1D63F0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777089454; cv=none; b=JuxbvtA5IN/JpzLgrgLD6shPIHovl2zkxnCawqA2SFvZF7Vx0mj+w5NC1zyBYPTtCmoFh0bvfYfhH0qhyYv5bfGWQ1+LmXEzahEno3CdeWuQVd+BLYnJWUmDb12Q+8e80LHJLqu1FCJmDjI55tJL8X+fd5qVqagy9oZW5jZF/FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777089454; c=relaxed/simple;
	bh=7GguXnfcGB5y5QaPGs5QJalwB/p3nvbqd6vK9YYfODI=;
	h=To:Subject:From:Message-Id:Date; b=lPpQmDg1niztU7U6VXyKV3JjU+ERIudA29RHVO4B/wd/wuitt+tqTFauIfy+6fWGzokJRZ04tO6LZp2l0nCxpRD7SHYPCNaZhnfGZKGaVHVG/noEuZitTPa7rZuHnOeLfBdFuABVh74WdmlbOABrrZwaUwowkOXpAzWUADHSphY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6A5ubww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6A5ubww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C214FC2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777089453;
	bh=7GguXnfcGB5y5QaPGs5QJalwB/p3nvbqd6vK9YYfODI=;
	h=To:Subject:From:Date:From;
	b=s6A5ubwwF+HEnsXgZjpdXHnyGrF+dCBOoSmKpW7O3DWS0NZjxuCph7/sTKh24gFHf
	 4ckbsLKIdh+LYA/E1Kmbz2YJNJWwQVNv2ikaqOCkFJKdA+FVNw5mYSDniEo4wekHuN
	 K2X1sND0Jfe2LTgECGIF+WTC4hOmKv+CcKqlKLS54nC+uO1eAMuc+ZEVgifJEQaDyV
	 wGNmTZwkf9acYUGWQCoYIkyo2dX/xOWpCktIYJdRPX12Zv9kFCyj3DGov22YD49qRq
	 CrNfFfRGaXs/kswJTRE/Qsr6xaBbhqBVI/poOIG4e4I39tzlLH+9ctm0HHLDmthJPm
	 p+nTxN5pzoiNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5B4FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708945368.21456.13384773345684324428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa72431cd93f0ed012a99487454190cd5c15ab360565b6c8a70ddd0f93791977
Date: Sat, 25 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777089453
