Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75411D540
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706283497; cv=none; b=rSK61WvbHz7y2WlUGLTERdhOtt2DNTrXzirwvU+JJI6kVNXaV5w9TLjKqzwhtzrg4JqaJpFygNUS8cJY1womb9EV52Sc0e2TJkpO6xZeEdyrOtOylZbEzfCPYonUAdjSVK2GR0favZ86bowmo9KNwn4ZhtrqRGdpDQs2UtDoRZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706283497; c=relaxed/simple;
	bh=ClimdIIrDs0QQqXpOQqwU/6US690o1UgFMFGM4nWHu0=;
	h=To:Subject:From:Message-Id:Date; b=eZVkQSMX75iuWFTLsS11sIje19keiqJ1cL0L5g2rOYwuIPbDs9GW5DP9T0IMzt5SdPwo9lDwLkevhpt4gl3i+J2fEPsvPpsJypZ44ryRo4fFhEo808J6I5nkn766zS5g1XCr0/5l+K9ldqJFwG/DYH2UmRvw+Bi5v4Kp9nq58Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8GiQ6Wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8GiQ6Wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E7E9C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706283496;
	bh=ClimdIIrDs0QQqXpOQqwU/6US690o1UgFMFGM4nWHu0=;
	h=To:Subject:From:Date:From;
	b=W8GiQ6Wd+BZRLRyRpYTH4DYZcmvrfo46IkfRQN+OYyak/kg9F8CJy5In0wh/IGszR
	 KxwEtGjCym/YFbL93upsCCaUXL0tlzQZT8BDGphpEtbMMDiuzNy9EbzftAeQAlVsqS
	 sddxShAAb2xI4jCnEPNCjMWarFaRj9CX6Nmo2cWncTqBlmIO+UoUs7EBbEypkAJchI
	 2LnCwqGu+PuLFBh5F1WNj72aQUfKN6byuLDPo7i/J5jPcK2iUuUFK2bFR9EH7/vUha
	 pQRbnpX2OfYxuqR89imZXIy3ipVJ+fpJsmDRXQG1OWf7meR/ifGua56/vV2Gb9CLOq
	 eLdiOx29wCSZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63172C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170628349639.6640.17377757948085296028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5260c4295f29703020533724f14278ed17833c0efb7922e3fddf000cd2cbc6
Date: Fri, 26 Jan 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706283496
