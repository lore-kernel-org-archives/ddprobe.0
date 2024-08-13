Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74EA18C907
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723539953; cv=none; b=PAUbrTNdceFzJw7JeY83MFbRvY6Da6OobV7s7Pt3Reka5vZPTpZBeCHt53EA2KI9WHcWDvi3X8NPROlsGyKPcaQ6bO3PiAzCYQweiwzYrkglnFPgSKub6/yl2m0DvJ4r4qZmiMjLOHhV1+IsKouFO4qapO6eoQ84aPWcun2yk78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723539953; c=relaxed/simple;
	bh=KoFNUirXyPz81gzAcNLs2hg0bbFW3rLD6IGowm4tr5Y=;
	h=To:Subject:From:Message-Id:Date; b=eTkFKFXp21QPgpHBK3oD05qQ8LDfr7hU0lHMuyS43NtT48QmnALM7cL/k9a59aPGdLSzEirgbLWwHW0e0aoZEJ9sW7ns2HG76Ufn4Yp+BgH7PNcYhi3E6tGW9341K57nbyZFaPjOTQXIlhOrBtsR2Dy7VUua+N9CxE2d8jvTaYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2bbFkYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2bbFkYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB619C4AF10
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723539953;
	bh=KoFNUirXyPz81gzAcNLs2hg0bbFW3rLD6IGowm4tr5Y=;
	h=To:Subject:From:Date:From;
	b=t2bbFkYgwUSpyHustCxqcWZdcYYhxEMZM48/UZqoH1gNwr+WjbD9jiD/0AzADN4oY
	 wYIC4uWFc8lFsFkC9N+uhtKoWGqlUm7bPKKgBrR/2icS3gB66w+HLukxgrQp43uLuM
	 /ZesSL5ZXZ+Zww4yi1KKrIAcNrMhkWZzh2NT43U1t0ITF3EKmEGsEPyrjo5h3eezye
	 7oqbYshCpVg6rRabPF2MecAz/ziT3SnhEcdVQotNgQK5MaGScrrammSBtdjtbLIJY9
	 jB43eJ3gqlRvBdRd2zJ/GBzzQHVeGv2R3jymTpE42JJufroKIk5ojTSTOAjcobJbvd
	 y8ZeRRB99CYFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEE0C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172353995362.6771.13798843166968584697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58cfb55dcd91aa093cd0c0d8f122503ce363f3e2d0a5124a05f0574213919ad
Date: Tue, 13 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723539953
