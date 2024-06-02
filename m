Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CDF639
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717313123; cv=none; b=dLIldYJK0s1+0W2WpMfMvT3Qf4Blt96vHm0IVnQon9GYjLdRJb0ywpvqJ3z0+ZVsG0/c6mgjiRsaRivscpxRb9rslDkqeocmcttAGyHNTIRbZPz38fwGFnPm1TiVBuYjMIop1HXnxDvja66d16Gesx0rm7B+vVix7wJrX8Jmi0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717313123; c=relaxed/simple;
	bh=pLpxyEzScRtQtlNL9hfCtoWwcEbEP3w+OremH8r/UBo=;
	h=To:Subject:From:Message-Id:Date; b=Ct20bkSqMcF29HRpkWQ8cy+09d2AXvAgl8PBP5ufrKHkWdeGnv3yPKegOUKFOtBJy2Rz8wLNSiXaaNBKkjtZOkb65R4Qi3a7Q1ZeisFQUlU+YRVuAtMjznbgpFAgtnsgIbvmd22oXPRpf+6O0EVzT2+WUn9zBipfuF1YbHGEFDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4mE7/vS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4mE7/vS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9060C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717313122;
	bh=pLpxyEzScRtQtlNL9hfCtoWwcEbEP3w+OremH8r/UBo=;
	h=To:Subject:From:Date:From;
	b=Y4mE7/vSsTSEVAdxYPuV0V14uBpX0920bjBI+OIuiuc06N8nAsaTSyRxFf0kn8Z96
	 fNjimmOcmairsgxqFcu+1Ryt9thX5AaqBszF6uhVSfN2rRIrdgu33Uc0f9GKzpZ3pV
	 wSokXJzcpRL87yT2FkacBGycxYmMEnfuLrR8X0LdIvV49weXN++rd34etRkw4K+Diy
	 QhiDjMDLI5wH12oGLqVwZCz9yiVSaxYuL4hMg7261yMLtawFFvpt6b7J2OKc+ifpc2
	 0CQXY6PiTmJHMueU3OHUAONmig7VIEezaBmdB7fYAkElIAwlGtIUvcnzXAuhRtdgSX
	 RY7BNi7sTrcUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD884C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171731312280.8549.13667493103694379702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced5934d6e977975eb71aad2c5727e961aeda0296ff82f5eb73ec42e18ad1745
Date: Sun, 02 Jun 2024 07:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717313122
