Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1360072618
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756951794; cv=none; b=Lar5y4urOiEACiHzuZ5nGRwMVqg7ItssOY8DShxstWRR33HdAjkzrE/6myaZfeB46dXTeUQ48AR/oGaOerGhZAeUkWfR+5x6QVHpbBW76urZwfFld6ST7UzjYXE1g+XD5z0t/PWREdcSi2+Zuen56P/YWmckqT1S5xwwzPxeWoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756951794; c=relaxed/simple;
	bh=WvGN4saz+skGR4hKGEVJfRXa4gKaEShohUr/PFL8U0w=;
	h=To:Subject:From:Message-Id:Date; b=qxUW6xUPT4dLfpJ7ZlQvdiHriONIFL52HWWcUOu7auSoajStPhbpKSuBEa/SVscpLnDgtlSBPJC7keRLbza2YFPUo4z2ELyx6DBnfCWSJknqROEXH1WYmnIr8sZaOPsjQZYGktgBCOU6uplDfb3KQKxiWlZHuwcBfZF6AxEmmvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvRZtbM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvRZtbM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ECFC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756951793;
	bh=WvGN4saz+skGR4hKGEVJfRXa4gKaEShohUr/PFL8U0w=;
	h=To:Subject:From:Date:From;
	b=XvRZtbM36xTPhhn6keVAWiWTJd29zLt0kYs+ZpQeUhhD/pnng8GN34BW+UK7XEOoD
	 +ANSfF84TuFSqoT9JyZHevNMXloDS6PbJFXQsbyfevxZU26lIQHgyC88GLspiZM7AT
	 9O2k/ji5/TZnMWvRqw2GI/EG5eFlYXAPaIOVYE8wLkUXWM5JaY/wvlSvgRYcIsMGDm
	 lbvmo4Ngwlj148tUvKwr4hguD+OnNvN2e6nMtW4uxvzJuXwIeSg+gHoNLihZV9JJU/
	 yD8L7x4zD/qh8Z7SxgG9rXqGBzChvcrvb+PEi6gA7zAjREKAqlLnH2XQ/m/qIWFrwR
	 uih2CRBSq/UBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310CCA1010
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695179358.4316.6608579320895272183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ceb4de11b1df6e5f96d7b09913f948bdcdd0c921278d8057e9e416c0ab6489
Date: Thu, 04 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756951793
