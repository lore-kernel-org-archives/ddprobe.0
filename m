Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2168D17C227
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722995154; cv=none; b=a+GMnsei8+4l24yqU6XK9WP8vLMA0O9YKd3Gb2M08PpwvPV820bh8zjqGyxtfXx+9fHQbMF71dw48MRXCSHAiVlWnuP9LEYaN58xLyRWKI9bA8nn8Af4vMtMo/VBZ/nIXjZ/QcRsSEwh3ByB2zzd3rcI+WpQwV0ujEaJ5lm2Mco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722995154; c=relaxed/simple;
	bh=WWeXgE5nHApop5yyX2HpYnghCFsvH8HSdb1Hiw1Trl0=;
	h=To:Subject:From:Message-Id:Date; b=L5D3Stuqv6etDVfPHK1dEdSvK8id2O89HNu5aia8o2kOy6zpNfLxpZzLDhf36zvFEOEndKpvFo4/1LXplmja3TvZrN0E9cMrpuPxeku8J8PfR1IdrnhNDv4uhnFRxY9k0SCTnbzMWgVT6H+R0iDvasoPUIQgH5x3a+t/aUq18N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tll1NNpi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tll1NNpi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9951C32786
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722995153;
	bh=WWeXgE5nHApop5yyX2HpYnghCFsvH8HSdb1Hiw1Trl0=;
	h=To:Subject:From:Date:From;
	b=tll1NNpiOxr4a50aFfpqNaVzPtPHAnCKxwVhm3U9zXU7Fv9rhRECiuag1bbU7icn7
	 BlKBr3iuDp25z5w/Kwwe1yfP9xZHP3A3PjOLrCQVdoTfcJ/hp8bSpofiVisOgiz8iE
	 63X5gsQqZAvdPV78jgvZFZnX5krE0UoodgV9Lz/BGV/KoCvhmKSRPRhRs6PPrmQlNS
	 /3mHN+SwFarF8/V+EmzjsHrw0hUeMmhHarQYO1KrOFOLINqP9cWWCAcTUpjL9Zmrs0
	 jyDSZiFbsSD/k5BusvfCm6PZ4eVl2JK3GntMg8jaYd6xe8HBXZxNejr5+ls0wUA7SR
	 26DYdfpYil6EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962C6C49EA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172299515360.14764.6060657232822664695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd804dd559a8e116009f144a581e45b04ca89a1a0135e3e230d1680f0c6819df
Date: Wed, 07 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722995153
