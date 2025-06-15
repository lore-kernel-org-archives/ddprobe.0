Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225937262B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749998994; cv=none; b=dVcrqr5F+r8RR0bj2sZ0aLhToFvTFgCuuscjYNTvODhsLrDWo/bb1YtIxQZV/ZtrYGzTmMhr7IrcfT89otGuu3PtcBm26ZbdTWkC6hPmrpNHT1Um8SiHA2ze0lGavAVwJ8NP0clKOgCboIiQRIFKmnfecAs8CErVIrAL2JZ2SfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749998994; c=relaxed/simple;
	bh=vpvncBy5kKs6CRyw/T26K+pr0Tk+g+Er9dstQmkexrc=;
	h=To:Subject:From:Message-Id:Date; b=hzw32olu2YNXe5MZLnhY2AljQ2REiUftDjuDulyc32SctCLfaQK5aD8WybniZB/oXD4392xPDE9Mj5Di5BCZj59qsbSyrgyNnCvELomKokwMvevuMNyjou9zmfFG7xcHJqXqnVPflN7p9WFjJg6SLc0+83IZJvHsNbWIjELj4Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jy+3Qc9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jy+3Qc9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4880C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749998993;
	bh=vpvncBy5kKs6CRyw/T26K+pr0Tk+g+Er9dstQmkexrc=;
	h=To:Subject:From:Date:From;
	b=Jy+3Qc9x7hfViwo7DfnEBU5U/R0fGOZhEJq8uW9Kwz+6D0cW5pt6TdyFyqy5BG+I3
	 txIJlEWwTTRO1vSS7USG9Bs9RrNMlfLCWJj3moDYRsXQOkW5bvbX0f0xSICdsVi8Jr
	 8A/V4TQT+pHXEvd4pNzUMe2RAgLKUy6e6nucjyyOZtdgKkkPY4OCWs1udc4fkriszk
	 0WjTplMc4c6V/W97xNagI0CmEeIoYgrjLN3vUMufUvtH+meEfiXVjgoMFNDyh+6HGC
	 En3l3aZYFI+6noqMHifFfhYpnyWxlTKVanHfj2JZU0pt6RMe9TA8g1fds2jLIpoM5Z
	 HqMzYSUw/db7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93784C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999899359.15352.15061697079747552003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f7078daede212b13909c9f7db42de0545962127ff302a6fee2a3c6cd077c96
Date: Sun, 15 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749998993
