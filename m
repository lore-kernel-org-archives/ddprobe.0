Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4153318DF8D
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745529594; cv=none; b=RtAHa0CLJybU6dQ4W+ug3hCb99NIdxU7aUxc0U+XvMAFrRTsK59VdnmqxxMUhcr9QCrkyJxC5wubBDzX09e9uUxlBOIoyN5W2CfiAc4I08E7uxkDUEsetarEAYJTuRfbVaQBVHRJBjazrk2ico7z2qoBoJFMpaGFAW5Zr5y/5Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745529594; c=relaxed/simple;
	bh=ijyyN/Ailt++tH3vudI9C05ckCsjwts20gPe9xUtVCk=;
	h=To:Subject:From:Message-Id:Date; b=s7+7JfXG4yPkCKQM3EuPK3s/jcuqoVPTl4me55wrkevUc4ZZpp6bhXTdVhfLHT7RHIkmQnjxR2tetYv2LV2taROLbqxqupeVJ8f1ouaPzWLSZ/BkzvR5HiEkaugj5bki8Q7hs88oeyo+o1eDSqo/kDbzCz511ZbOMgGzrQV5wCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ct8pUbQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ct8pUbQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A481DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745529593;
	bh=ijyyN/Ailt++tH3vudI9C05ckCsjwts20gPe9xUtVCk=;
	h=To:Subject:From:Date:From;
	b=ct8pUbQzhQviz+fISHqjD3qtklIvIuHTzBTBsxO+PjhEZnYtpaL7wQWWwFNRGcgiL
	 VNvMTg5w5oZfFKumnOziYB2Or113VniPvD86g3WhuFKC/ybU/LwyIDDA03OI12h+N7
	 p71KwwAzut0XO1iCPjz4QNvFa4cqugrNJakhc0InWx3y7fmNDBipA2YLcXz5g53ssG
	 DUfPBfcertmg5emDetOWi+lEyN55tLVLvnSoCe/Yy+V9rG7/FGQpgqQotprLLOZEeD
	 UYRs4lp+DTR46PnccDSr+8X7mVIIYhgjKteMmZJeB/O+yHhd9qHJOD74Oz8HlGsjKY
	 lED0P3mmQNS1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950B4C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552959357.4684.817585752762383716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc8dacd2e39f0e902c41335657c109444396e1909a274fd9e938af3765aadc1
Date: Thu, 24 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745529593
