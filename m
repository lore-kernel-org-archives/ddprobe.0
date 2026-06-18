Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CCF1F30BB
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781759794; cv=none; b=Mu20dmwltoOk/cmg0mphY+tMan9wGcOhkASBwbEBGL3hleShu5c8vvazx8r7VSCSHUpmGOJCdqdJItijf1krvss0wbJODBTAYHmDd9abqOlYmGkK5eCrJgN1xXooOilw2FOc0yxT597+OJb0VVI0YEVH4RTphep5IMTPJAYGNd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781759794; c=relaxed/simple;
	bh=dK73ALdTgMd7nXqsMTJtSxOCo12ZuS9U4ktP7mPonpw=;
	h=To:Subject:From:Message-Id:Date; b=nCcTNUAgh4ANvU0eVs6xOl9eFt86W4A0MnnI5AOBcyzFNERGvv81/nelF90yXaH7dmmYXsFQT05rdy5DxH2fHJaE7lL86N7UP5J3ElPVE0Diwnr9lPo3sv4fqWXT07xEMQxi8GqdDmQpJ2kN9WdeWEbvRl6MBycwd5czcnlfMUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfirPzM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfirPzM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65F5C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781759793;
	bh=dK73ALdTgMd7nXqsMTJtSxOCo12ZuS9U4ktP7mPonpw=;
	h=To:Subject:From:Date:From;
	b=sfirPzM78RN6a+PrEgL6z/buvmRFgPoYlMj/kXxtPsc7Q2p6mnIvF2INooe4oKRd2
	 yW9GJuPuR1WiXahJ1hRWqmiNPT4wU/drst14PrEHavbzMlBQ29V/fMGSi/xJex0SyN
	 lpsAU3x3qLs5MA8TWK0M62LN2SiJ7GXyYqwEHua1l6pWZe6dm0bnJkn4bbH3hEmUEQ
	 IGudSMUJOULV+wOth/v8fB2wFvgfKwCRNqieVapVT8yOiyeObz5RaatB6xkrtIgs5u
	 7CbnKlfeuwdqgZe/bUliMhdA8jwMiP53xA4w07/ruDl3BLtJaYI4MBaZUhh51sBMG6
	 CMu0fR/ko8e0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F05CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175979368.9482.326987149063329371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f6145be03be5832eae5e18575ebfd6b08a913fc63c6cef746fc09376524502
Date: Thu, 18 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781759793
