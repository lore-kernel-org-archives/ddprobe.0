Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C202D7DDC
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772040894; cv=none; b=DgPhT1i59ALqGLB60pc7WG2uuOOvuaMRq57bdbP1aWs1QND5IBUeuee8WVcBFQ8hfX4XByXl+kMXv5rxQfWxEMG8IIm1hDAdcYks5LMSkw+iRF1R3YToef3K9eHwTATbKB2SHb8AaR1WWVA/cgfAz5QK0XrcsCvATkvxpy36RkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772040894; c=relaxed/simple;
	bh=1HmxzKfEcZs5YRM1qcLHyn/G6G8CQPI3nyNrbvVMPBo=;
	h=To:Subject:From:Message-Id:Date; b=qtp5/4c7VsHjIQq3RXYtFWPb/5iQmfi0YznHJOu+0XTj2z9mUEfCDhzFgfEHr0EWcMGNcuo/erTpN58zK8lYEZh4NT8hF+9wMtoZkQQhryMszNahq6Pk1jv/Q4fxWRmbzb1l2MFAZ2lnyGZEg5toINnBk9de+pDxIgt9FiaLafc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ij0y7KGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ij0y7KGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3ABCC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772040893;
	bh=1HmxzKfEcZs5YRM1qcLHyn/G6G8CQPI3nyNrbvVMPBo=;
	h=To:Subject:From:Date:From;
	b=ij0y7KGeuWjmFtJomSKYAxJoflSsMrDl/qVJKrFVWlaAHi+5WgHs4Wdb6W4NuECKA
	 H0o/VTLrn0GNFiyCI5YDKsuxcvy0mfvBXung7PDCKJXItt8FQ3EWL2Y6Iuhzzp6Brb
	 Q6TWuD1IKgVyHYULcXpSQsmU6JeuEmMSivreXmIwstzj+cu+ji0ZXOzo3gURf3k2dw
	 PDBf6tVUZyNCEYMKPsrcqXcgGWvbGzA7hYfu2mWF0AiHocHrfHztajQYZ6349R9nbE
	 7xTRrbvz/Qc5CjcXk6Q/alDhdEzRZd/uRAxnKKSC4L+hIPG+a80RDfR/y/fuDFeVyo
	 hnQx42C6Seh4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7389FD3779
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204089366.9074.7351713431844241306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e67f7ba11b33a4f2e5505ea3f39a563ea8d07ce99ff64d0902ab49a9c7341c5
Date: Wed, 25 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772040893
