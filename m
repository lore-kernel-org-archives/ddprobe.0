Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4285D101E6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753908594; cv=none; b=skeH1s5R6X/ot/SdNbbJPclhMd4jGlI0VJD6Cjh3AcSs2x15LFfaYCHmCOX4oQ1Lm6rFN9UzqS6NfddCLIY10vzWqErK5NEN8ZO7jFPitLNmrw2ftrvqUCRUFqEEmb2CRj2II9LtLiTasizvl97WxyohqUxXQTPjTqB2pqIFOJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753908594; c=relaxed/simple;
	bh=hozfjbuJCN99H3JRdKSKcjoVHFI7HxxdbXstPdXDvro=;
	h=To:Subject:From:Message-Id:Date; b=g1Qai0FWG+sD/gA4Ru21eeF6GT+klP5RQDLQrvix26dUn3vloqiegepr4FiiEPt8PmM9zg50PcGklRuK/yDygsf3RhQ0T4p9+X/Iajusg30LPricJfXwqUGzfp7OBpc3jgl8Ey+7/6fEwWOne/So84YIcOXFNqF39Ai3a2ClmWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrR0E0F/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrR0E0F/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A502FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753908593;
	bh=hozfjbuJCN99H3JRdKSKcjoVHFI7HxxdbXstPdXDvro=;
	h=To:Subject:From:Date:From;
	b=PrR0E0F//pNP4jlWeGJVU/ZOar/13D/f05sa9qwfTvX6NoTBeVABKQD9mqTgvwRdl
	 PdFRFj3T3hTsynRT/rMTWxqVegcmLV+dHvYFFLp1D/qRAP006/elAZBGQBgnbzoysy
	 YuH7WEimt3DwypGp6tgpepPIA9A6TmIwb9epWXN5jlOITk/v2jQZrBdmCT57AWHeiD
	 lvlcdodH9xVCZ9XnRP1ElM4Wdy61Shu39TbNoRXpBXQ2dHKdG9BOhW0nrFHQmKBb5i
	 H5vD0aoyPpnjCADC9dILSb8vk2uGSpjZCIAe/j0vGGW3KA/bTthYcPhQefT2oxDg6B
	 Xb00F9+yEWlmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D62C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390859358.31504.2625764209874733367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077766fdbc3e121fe08220f37d38fa43b2b43288e39270b4ac8aa5adfd38daf9
Date: Wed, 30 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753908593
