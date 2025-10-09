Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF741A9F96
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760027394; cv=none; b=Jwr329PKKNFCEMz/01BHHwsAtdwyaZAKOI9d3i+MacBE8NkX1Nwr3POMzBXnVtYCVEdk3JGup2sW2XkD7Y7QtyhLMOxOlvOn/k+AehxmDnw8aguXtmKZa3zhRa4LA3/eFZho0IRsFiLRZguYmhIO2HG08+xHql+05GQLQdZY7BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760027394; c=relaxed/simple;
	bh=QtgdBsFdnnozhtj1IkXHoGRk+MHKRKwIVb6KkMJewIk=;
	h=To:Subject:From:Message-Id:Date; b=Tbbvjp9bYsrB+HnQUX+NWrYPAb3HITMuEcPLJ7laCOTZAMnEYsKi/YP7p8v/H24q5IISAPFm0CH0Zj+uPXk8ttwRCwyYeComqk0VELp0AwTS5y/Fkq+05YInv9mfI5e2Ykpdy10HLklpRSb0JDFnFjJcQNKHu1zkj/8zwlYrArs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU43Q3yT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU43Q3yT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA26C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760027393;
	bh=QtgdBsFdnnozhtj1IkXHoGRk+MHKRKwIVb6KkMJewIk=;
	h=To:Subject:From:Date:From;
	b=bU43Q3yTDhwuDBWAQwRAI605R4s3c5lqqM4jVSOx8ukmwjEHyPuazi/BLGb2JEfsV
	 s52ioGftnyX/Ik6XdhxrBZyCo5Z/hNifcCyBFXTgicBWrXzJYAOWqw0Ync8A3rNoBL
	 Obo4BVdKIUnFaHE6A94TcKde9lHixSzLdRXreudrQfIik2Qqi3tE87kR1dDKVS2RRx
	 zeen5O3L7yE1PDZRKd+QWtt8uhsYIEnPhOR+X6wa9+sd9CYg2XliadwBEG7ncxctw/
	 p6UMuSnltUhd71HBjtCG4vZIT8h1g8aQwQfG+red5poPMN0RTiA2aD4eq1CDhdETeQ
	 JrA/fDDsxETJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA1CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002739357.3856.7968200153145314104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a83d2a77e5a1d3709007db13f376d32556453c48dae5e1198c2463aae4d54e4
Date: Thu, 09 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760027393
