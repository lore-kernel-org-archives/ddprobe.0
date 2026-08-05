Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC963D300F
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785955234; cv=none; b=rWo1rF49IFD+hTurh8wlPwpSoScmALymiK8Y8qK18RSzjPXvwxFn7DtabV8SmthG/FTS62cv6X16wdqtC6F8i3o7sN8AfbHYk3mxgtS86vwPsk/chKWaWNSfYi5NYN2RwvOpcUoyWwx5Wd2KZXBIHS+NRGjQcvaInVRkn0lTTA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785955234; c=relaxed/simple;
	bh=5Kny0Junkg9dyrmOl8ljhMnrwsFH3nqodHTVsxiZgF8=;
	h=To:Subject:From:Message-Id:Date; b=rEIimC6cGaw4Ked5SiE7PR/SoGlwPjJ0NCdQhRcN0tdpVaS36d4r0do5UEAgrpnfSEiEHdjYUSa9+dIWBTv0MOh4HGVq/oQ+DV244UlOJG8FyJEk7zoOk0zwTWmWUkRsaukVgfdxx5+sXrjZR13LLqKigARQHVOmZfZHru/lmjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scUnCApH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scUnCApH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA7AC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785955233;
	bh=5Kny0Junkg9dyrmOl8ljhMnrwsFH3nqodHTVsxiZgF8=;
	h=To:Subject:From:Date:From;
	b=scUnCApHt+GyY1wtku+5wytsyCBBh+kSn65RND4NpH2W51TV+sCezubq+wpnrmQF9
	 ob920vv8XdfWdNzptCAkKDRvfdgVMe2NS8V7PPuC0x6VxzC86H/lRXlx0uux0HPpz4
	 O7Cc35jkDMFotI9BPLpjnAlBaCeYUSVDp1/rFc+bGJ38Y6TEHu89IpYjX18RTySmxS
	 d6SJwXGla9wp2Yj9dKZ+RcVyKT0v48MzuyClvCixPJemhIGeXocvI8d2bBTSfo8jUR
	 PH7WXTBGQ1k9iAT7EUo9tw4wXw54EXG5HvxbbxDRsY4LIsgEMGoas+7c9mP/Kt45kO
	 8kg8GEhZBTv5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FAAC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595523368.15634.18074418733874215423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462f394bfd441bb1cd4bd87938544f2d1f3a914a3b020921fb9c0a94c1b7afbf
Date: Wed, 05 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785955233
