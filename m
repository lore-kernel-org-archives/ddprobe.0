Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD87535DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 19:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738437954; cv=none; b=VPqU3ihob9mv7iNKvbQ4joPCvaXspDnnUDZV2hERiuT5gtZeEGFQXIVQR4QLstoRbkTC96JeZFbm9dC0N5HVe9ISST5GcT2C0nK5lciU4mAA8HCRSKbRrg9FNYS3FWogQOdmK3Nbkscn4h3e41yYmgeqwv63MddC5bDiiZCtkNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738437954; c=relaxed/simple;
	bh=odValdOv1GJL12644kN2kbSJ1O+l+3c0NwVz8Ccm4pM=;
	h=To:Subject:From:Message-Id:Date; b=tje0mtpvqkdb5Z6yXO7sybS302MfURq2Cbyq9NyP/SBJ51HQXPMIVueoW2gGbxQGVsAVaSYEKnzJ0EmMG/DIBPzpoh46ugZORC0KFs7I90Bu4/5OGDw9xoCblTa1YF+V9hQXpMYbfYKmDvstwbf+142Jl/qabE52kbhm4dEo0B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTHwaM1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTHwaM1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68B5C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738437953;
	bh=odValdOv1GJL12644kN2kbSJ1O+l+3c0NwVz8Ccm4pM=;
	h=To:Subject:From:Date:From;
	b=nTHwaM1BNaR4AwrswlKWN6XNj4mdJt1lmM3zOFfpI85mI1Y191khuPGhHa50sRABE
	 jN4IbmbaCEmBmwzjlwvqlIMBvawvTQW00BGouLdaaIyEjO1m0cSzCKP7A5bg7QNk5U
	 aoD8naSxDNFrwHsV7ExVs40x/gZDb7PmVR85TTXyW99QPHKTxQkdou371x1hx+Kmup
	 q0vYWACC0tbB3lcM/f37J9sil/EQBUoOSJ+nRouWv19ZQrt1ugTch/5cX2ijZsa6Xs
	 bqyJOvlaM5XTUnXd23wfwn44Iqth42hYX5KW3BlOeLgzhx7aOjsZLG8RIQle6zuWab
	 ELNumimLgLoLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A4EC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173843795363.24772.7718150558824087666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538e922a10440ee1d8a0d376f58a0a94b5cf66a4a36ad288a59673cb908946e4
Date: Sat, 01 Feb 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738437953
