Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E51972621
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766656434; cv=none; b=VQfb8rygd9a4XEmHXQE59l5uqG94E3GRNi0xBBJRmEgPadjgIozTKA6VqndGmf95Hk2c7bGGkTNtD4kPR/SZiba3nKANftsJgwiOvWiAK9HmvRC+5BCDkguXBAQ9XrJgqMWcctas0w76hXDqcksBXQvvohrXCj9Y+NQytftCa5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766656434; c=relaxed/simple;
	bh=zpMJwNbcqlkCwbKmyMcKu7se5tlLl1FCq+VItQe25qs=;
	h=To:Subject:From:Message-Id:Date; b=As1zQNO8swFk8lhheHLPD+eQkOdcqUts42i/HC4SuFjlrnBMXQQ95k6Eyx4Zt3KPWjK2GlVLnHnH0+x8QwlEB0sBwGwKcIs/d9Ja+Qcgh3AbyA66yTnX7+VUCbgMKITPKlx3xhWZicXlB/E6UnaLjqUtcKGz/aTtWTnaDmtwC24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bC58lXq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bC58lXq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E1FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766656433;
	bh=zpMJwNbcqlkCwbKmyMcKu7se5tlLl1FCq+VItQe25qs=;
	h=To:Subject:From:Date:From;
	b=bC58lXq1mPZC2k0vWtawYvIXNVThYXKiOeszMVekmGBz/1nC0iKFJ4cZgPds7EzR/
	 Cor1pOVLWf9ezyJl4mnQ1Ga1HBqEr/3rGvV1bCYXZ9RTXpjpm8YT7BbQy1CcB4USqz
	 w53AF0M6jBQYO2wbDL0mjlGDUl8syLQhIrdTJKEWrsOtvYJEwaFV8VMUbPnix6bayM
	 SwI7KzG68HR6NQbpeJSuknkL2jZeVuClbjB4Ca6qXw3Bnhs/5Ll52aFrF4wJKsPxWD
	 my+9tuNVVvgHtTbX5JHgPUISy6jGjD4tS3X41GvWfIWZfqSe9Lign5Vh4iJb2egKUq
	 RU8Wxfb3KQopg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94675E7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665643357.2307.14880236592148502088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e945aef5b493e0cd888f775e16f743626d5f446c152248ef8931365f6cdeaf7
Date: Thu, 25 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766656433
