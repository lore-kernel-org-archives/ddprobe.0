Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4732848BA
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780362274; cv=none; b=MLLrJQ14ibbh0gOSMcapNFLLjbh0Sush53jTr4TUHT3yuEIviZzhfM/P/dxygewuLXBTLPnLs5XqwBdn1J+gZavmB6K66On1KkZt6a1JPzCh4RsofPaWCCz5BJLwenatEuOsmodL7GwkqurrYs/5tI4XpaYhmh/WZJakscYFROw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780362274; c=relaxed/simple;
	bh=po5OZTmyb9Jak0CfZhnbXhWRMwafquYDTYuTNhDEBkc=;
	h=To:Subject:From:Message-Id:Date; b=LnlW3BuqeG/AYoLwF+5wfQfJ7vAgdCOCyR/48o4UzabdP51Rx+ES+PqXFxwb8olcwQTtMR2jmmv6iIq4XxRnfPWETfzqB2rwjobAxFeDH5Xpd8YAmIFwb7+7TngCx+ffl+COOnE2Y+3ST5IE+oHpRQgRpfPIxewnaAQlnUhZwfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHRg7dP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHRg7dP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C687CC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780362273;
	bh=po5OZTmyb9Jak0CfZhnbXhWRMwafquYDTYuTNhDEBkc=;
	h=To:Subject:From:Date:From;
	b=lHRg7dP9axuyWRi/Axs1tq2sDvlf/188gO0Qjsv4rs0rEijnJr9a4OWYWkAvB/3k9
	 SP20iiwJBAfHMVE+K8vl+ykU9ET3okWfBiGml6QHNs/jyNt/+J7vMyDcXDcNRDDgPB
	 O3h8KSQ5FBlzyMjBaCweTmKGktXprpZglSCuN4Db++KA+CyReACr0cVZ7StHWX/oxM
	 0rWCqYWlnc2qLVjBKMPBpg+6FqjIIaE2XYz4mfpHAyc0Uxmzybky8IMKb4wQ/SSSM9
	 Nt7NyZiUTM7Cm9LYPXG7O/RveKfhDurMxKXOijSk3qY3YwDpllaKq0DC1HkicDFE9W
	 Gl46+vIr1TKXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF30ACD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036227368.14058.15567966908229640399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b727a1d484187f41cbe4ce9360b2d12ef06553b561c3a3d282eff4d171fb05
Date: Tue, 02 Jun 2026 01:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780362273
