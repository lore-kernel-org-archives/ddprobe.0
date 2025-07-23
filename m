Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5671DEFE6
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753286994; cv=none; b=k56v6477vGTewu4wj6LcbHkCR8fVq49tWayMsQYUhHaIhg5+ECKD98HHUIS5i3yeB4486bztjWHLNXX6ZYSxA2fGxFpzP27UGYxlLmlxIFESrcA5kveC5SyqCammWSJUiSlocjYmWZ22D/oDDfE/sShsu0sMm5pCKWIe6L0GepY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753286994; c=relaxed/simple;
	bh=Fq8loX/VrAmpAQiT1KhGJ6nNFrEXrA1NERehmEMkxEU=;
	h=To:Subject:From:Message-Id:Date; b=lYh0pEgTLyi3T4Wyj5vbyszxToLIjXvjA8+NZo+tUUXyQb+Ge3U1gpH0/98sm6iw018Y+RuepBxD4Kwn9vx7a8Yeh5f9nbDeAd4nd0cUs0TJwJQiq1Bb9lO4USugK85yIhbuBWduVXpdwXhjZCS3HdtuxKoeck2nc8bP+jI/y34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDXSLuIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDXSLuIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00B2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753286993;
	bh=Fq8loX/VrAmpAQiT1KhGJ6nNFrEXrA1NERehmEMkxEU=;
	h=To:Subject:From:Date:From;
	b=dDXSLuIX8d83obc1MlJNIH+NsNuFXGRepUgkNRwrfakRGpeKy35SelVrLNN9ypSpX
	 RsmubSTw2ulT4D92Ziqdxi3wpbvojNbSNvl39MlEdwWs2W7q0sjSKffl6gby3B8MGM
	 eBNKVw0I16xJujpOtc7CN2HDt7Al3RUiB3vt6A2U4wTYgRdMyGxkyDIOjboOmRB0Ql
	 eouuhDEH4GGRPUrh8QQolrmdHiLo4PqZYf/Vsdb/6oTP2gVcvjn2F9LH84kLofkzN7
	 iGtGnvb9RMRQA6gRwu6ye+gbL9fJG/fO0aGZMp+ifL8gWKgdFFUBdvpdNKLx/921Rx
	 r8vahy8pEMqNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DB1C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328699358.17921.9611887735144143406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14d1a5499f8317b4c47d914da07462c221cf25a5afd3e9af2d00040da9e4a09
Date: Wed, 23 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753286993
