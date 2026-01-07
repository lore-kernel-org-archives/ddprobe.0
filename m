Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209FB168BD
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767746634; cv=none; b=c2dX/EAkb7dNUUkJs4/kT0bEw9CUKwzK7qmft7VUuL/Ln68xNHJGTqTtULaTf7Ihu6GOKNZDnWV5sOiA3nlO8FkMOi4zIfnoWEVC59PfoLvLkhQMqemMTO8UnxKcuLfofw7WAbvccsDDWFon9JPnWwf8btn4orKisRMo0HiCpdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767746634; c=relaxed/simple;
	bh=TgwycD28z15g0tQDAoXz7U2DK7AwnS+5uZ7V7zhC7H0=;
	h=To:Subject:From:Message-Id:Date; b=mZUabFyFgM9STkxALxo7Aw6xaE8OfPMkQAOKYlO90OGHP885AentjxHuDj4/MBNAqgkG9agmopxAWDr/07Bh6VmPZCogfogdbtrUrhd3MGRQd6s6JCd1Ul0JgM/u4YEELRIiGpAtrFPLzpJwlU3KnA6m1rAYmTS2SCXa4eqev44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n07c9cV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n07c9cV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0116C116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767746633;
	bh=TgwycD28z15g0tQDAoXz7U2DK7AwnS+5uZ7V7zhC7H0=;
	h=To:Subject:From:Date:From;
	b=n07c9cV5PK40sW/QmuDcqn3NAb+M4DvvM66wInxnbqkoUi7FLj3ANtTj87hFpaD0E
	 DxxjkUJcFrXRtrs/C2wlojBpEcAzYAbIQnS5cgHJYbMHtcQMHt8Um1zymvZzM1XOKU
	 f1iL5agZNxLdaftlGAZzK8vrPznTTqHAX/iEPze9WFqbQBja82jlV9Dux2ZPP9VMwx
	 7hgJn3t9+RpdRp5o6ZD/QWaTb23faFVC2ZbmDR9B+qvoiGu9y5xKi47KSXDR7qVjJD
	 nKEAIIEdfa9qRqk7vw7+eVFML/dDbEvzhLDA0ZaBZsKDrX9/KXeyCehReLn94/AXXz
	 qKVXOS72uwvyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4DCF6BE1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774663357.10310.12168876734293373144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb4261e376fcee37a9c6b9975dfd00bf3f4465562f1d381eeefec2506b4a2c4
Date: Wed, 07 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767746633
