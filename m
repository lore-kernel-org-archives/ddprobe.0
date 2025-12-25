Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2281C247280
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766663634; cv=none; b=PWNKGEooGPMgJhwJ3M6oN6ZsW2o52Xc+4Q7fEzy9BVDjS22L7jZdA6O29hf7VAF+fDB48XVUcvAd6ail2X4cxBfCYjfOx++UlHIiHphnTI7Qevz7ijbvOkElcO+YUQdEedc/BJM3FbtUNFSK2xpWw+cE2dmNA7WzmVaViRA9ql8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766663634; c=relaxed/simple;
	bh=UyRtIqjQ7gKo1VM1azNUSV9NfWFmoz9DYhjHgylWkZA=;
	h=To:Subject:From:Message-Id:Date; b=oKPsBpy9rOFK2F0g19qYf/7xcy6E+SiAFUXuL9Y//GK8G5WcyijgumCPFqh1ylqQep4nRezMKH4wTzU4QauFJBklETuBxe820EnsQTGL8B8ZUUtVND+MD9f7PrRpMoXng1iMHnOlBus5ydn3P8GOYiZWXRSCVPlMr6g5n8eaG74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrmWcRNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrmWcRNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F5DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766663633;
	bh=UyRtIqjQ7gKo1VM1azNUSV9NfWFmoz9DYhjHgylWkZA=;
	h=To:Subject:From:Date:From;
	b=qrmWcRNE0rQPKQwlp4+CsPVgiV4ma2y4FQXc38V1xk8oAKRR5KS4NuIY1Cl++dCf6
	 odyikrAgNnsfpzWdlSR6qFoA2nbfMIkPLryv8yqS+cwyCVvPu0Tsrn0xXqM7iNfvjj
	 ctKkpRSZybCMnlKzdYKd+UE/XOeX9AP6uZbhHN8ZaJ3We17VxfaG+0hsH6MfYQPoZX
	 7ckLU7//4FwDqQn+gZwtg+gEFv3iZEHOvBf/XL9E0fFIwN43CB+13v/W9LA7OIpgcc
	 lJWspqUYr9CPiodSGITcD//KYFe/HnFI5W2btCMQinsgnsf/8pDJdJPA9f2WO3fvnJ
	 IBGfcygRVNCNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963CFE7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666363358.13494.15548462635651476714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e0a59e04c38b484e8c74c2aa61fbfce74019501d010d39727cacbfec1118f7
Date: Thu, 25 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766663633
