Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3478315530C
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733607954; cv=none; b=CflXnirK3YEcspSjoxCXPb4Ya6KZXsczHbbkZkvzb+vWyJu9mhvbEpPONCg10xKM0ZgNRxUgWnT57Xt963DS28DvfLNt9CRTJ02Svkga705Zjr5eNTJw4k8sWabUqGvwii9AQ9diBPR4GW2rI8TyoC/REukWy+5I9rmE7aSA+Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733607954; c=relaxed/simple;
	bh=aKHTLLT0w/+3147FXJrXnESFa4Jz6fUlnlnn6sfiSgw=;
	h=To:Subject:From:Message-Id:Date; b=dHxg7SRPyL0cWfSbaD2zBx5fsIaBHuymEQr9BqIy9JOcx3ylAO2HRtXxtYt6PbFyKsrPYK2jqLKu91ZIH05BPB7zA/iO6H7X4emxniY6uEGi6Lthj3qe2eEfZ+jbJI65MA/lkk9NyUOXs4Nn8SZGOxFW16zrwxvohN78cTbjvOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPuIybA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPuIybA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5592C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733607953;
	bh=aKHTLLT0w/+3147FXJrXnESFa4Jz6fUlnlnn6sfiSgw=;
	h=To:Subject:From:Date:From;
	b=vPuIybA3HBQYQu3zV9+1uzZEYzEP1Wfyc51iTEdoft2JIAlrzaK56AvZY8zybeoAp
	 U3mjwzjiP67Ts1et3EvX0SibImbvLY7K50S536DFfEACdomkrC8PuvOs0+IWq9x80v
	 /EW7AGqoEs3I15guS7dpfAE+yVIwH9jCBlTCvIjW6pAwQqNcpm3cPCJrfGDOu6rHX6
	 6gEW9KnUutiynLPhVL/xBFSrzm6OlnfYIdJskgZDnPhzmz9DjrWmPhmx1Ns76ObTJT
	 GZ+w2+J3IUTxBfpVAmr0tgdSt5p0Y4ha4w7rfq9bFR6xjUKdzRW3vL3I/KYFSVnAkd
	 f19SbaXyANCCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCAAE7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173360795363.4191.6659378150357708266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc0095bc68b95d31599faf98e6c547cb6d4dda1ade39986078aa8b2bbb7f64f
Date: Sat, 07 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733607953
