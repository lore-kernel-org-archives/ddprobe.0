Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5171367
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749257994; cv=none; b=S3IT6xTh1PlEY48+bDUFzjz5MlEWQlVzcr8pfuNnW0Cl4TcJEJcZZ+oQDViqeV3kx8jRRGa/2LwhQj/R6P4HWQ6bse29OEMIlu3ce15vUfaP3kpWQuJrdDTtHoOmBWh1XMw8Hpq8vG56W+e2mzVoSmYsMe1n0z5Pm2aVa0R2r6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749257994; c=relaxed/simple;
	bh=TCjdsnA8Nq4quvYTTgHzwMXwMqf9illf9AocTfXbiCo=;
	h=To:Subject:From:Message-Id:Date; b=PMswSm/SohKbm3tOilM7QFg+XoDAI/BHXwxKIlgJphKB9GZWFJEPSq76He1STU33E1NARkt9d6caGCkrXSbmt4Rv60Sy40PuKdHy+1lYtQMnrAlNrZ2UuzLBc46NwbIZYJDRMG1//ifC5TXtFNDZH9mIZmKY4Uh9xWoFRJvq1yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4Z17mTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4Z17mTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A455EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749257993;
	bh=TCjdsnA8Nq4quvYTTgHzwMXwMqf9illf9AocTfXbiCo=;
	h=To:Subject:From:Date:From;
	b=L4Z17mTxnBDxK4IZRP3HxSc4IYHU7zia/aXGu7sYDTQTW0Q/BmuR+etxniWrEZtBh
	 ccWMcjzms2pEpYguFB3EXaxC0+Ph4iJ4RRgeFeKuld32UH8EspX954EoO7nlXEVIVr
	 Eu1dl5VQUnNGgLOekKetS2M4Ck8hIejS3ARtyRbB9Y4P2OMr8xxpB5OF0dAc2hAds5
	 SSa017vBBTpPhyixFpu5iy6/nZqcGTPSopQv5VeZDIezb2ejQQ1RLcugCAvAQ77GQg
	 hqSCtDIgmXHV7YkmKMqefd0IE/BHrGnbxXfY/W+gCHZx1gOGH+3ynV/nnIEe4twbCF
	 Mp/VbdCsLgcmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A71C5AD49
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925799358.19356.5117115554783786849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6eb4bccf0ffe9eee648d0f0763de8d91bbd895be7a8275a85d9ae37e687e60
Date: Sat, 07 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749257993
