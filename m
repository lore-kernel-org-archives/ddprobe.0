Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3000E25783C
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760257794; cv=none; b=W055HzpIgqqHhKuCOZ7ZPjdKZ49k2G5oCR2JMOV2332AC4x7pWlnEAahM6plOusQLEV59P35mu6gzzeMi0XWeRZ1F3X8eD2HHJVWfOxi+ikyBFj18UL2EYY9YL5t28YVRvsOa0v6vfdvmYtUQvFYlS3HFWgfSWgG3S7U4wmLwjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760257794; c=relaxed/simple;
	bh=Nm9Yp/fryLs6zDBLRRbFsEaVi3vWv9/tdECp68V5nBQ=;
	h=To:Subject:From:Message-Id:Date; b=XIVBu9c1ZnY/wr9Lk8AuRRxZMZR+c9sCdZphWa64sbBpcbbkBJWe+DVDRvkzeqElHtpfGbnNIDqNGNz2VoYXmUQEJUPFMHpuj9d9AJ/oA8KgEH1SeaHid5eMcCv6++qhzjZCy4ZJ0hzjoKEOQox21gxd43ax1cqK5VUCPOYr0uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsZqnGOU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsZqnGOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61E3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760257793;
	bh=Nm9Yp/fryLs6zDBLRRbFsEaVi3vWv9/tdECp68V5nBQ=;
	h=To:Subject:From:Date:From;
	b=VsZqnGOUnc7DVGkTTIXT3jxqcz1Ml+wWWoR3u3ujWrp1KQL9YGd5CnUAuWrmmC3ew
	 +f9oOuZneloFBc+kDLj8a4NmQ/Md1WqFG0SuZeL+zTNSgEJyD8PH+8r+LPMFS6ZrGv
	 51RocjSsDAYm0J9qv4ztqSefI5tmtlREg/Ea8/gw+pHJU3sdQ1dTydAjpOXErzGHnF
	 o6pxPXdoXkqpvcgPJVk2Om7LwC2Cq9QlhA7nFUjA1JUFNukrk+xL2/t5OYmrmsqEAH
	 Lgm4DVDMiHeriK9j5CbCxascOH3j9HVAxgIZUQCYBE7c50p4rFB0qq7br4unVEPoC4
	 1ihc+VL8aVvNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C33CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025779357.24238.12434353946434751923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ab995c0991ad71aa67930900e60b2f4f2ae5526d405736b8d0b970364117e8
Date: Sun, 12 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760257793
