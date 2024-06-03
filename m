Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586A610E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 05:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717392323; cv=none; b=BoS6mSj7/sDFz/LTNBFq+XCM/AQZqT6yzOosdL4hoZ3dAE3sMwv64oCLa3wCu8tTL8cB9G5nOMLM/viZbXv/Zhjo9YMSA0hOKIY8nXVeTFf1S2Ucq/f1ZZeDdnePDP+2wqf7MFCJpRBsPqPe/dY9rQFPZUsKEh+Yws+ndPuOhVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717392323; c=relaxed/simple;
	bh=+WO2CenywJ3mHLqZ9aHqCnfLZ8DNmjDim4/1an1keJk=;
	h=To:Subject:From:Message-Id:Date; b=sYcu40n3z6AmkzhuRdkU8eesdigJlKPXwo9q9HqdKrMUtfNATFv09gvC7Lgk64rRdIasMGlu3c0aOfV8LyIRhClzEMO/29em7wod1t/SBl6+9HiM3cHXKdK8SsFnTG9FaO6t+x2rlyti4Zm9MzSirNGCS4o88ostFuo5aRWYyzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYTHJCOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYTHJCOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD34DC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 05:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717392322;
	bh=+WO2CenywJ3mHLqZ9aHqCnfLZ8DNmjDim4/1an1keJk=;
	h=To:Subject:From:Date:From;
	b=nYTHJCOBDFd6a/IwoqYj3JKeycIuVc+X4xRaYBvtbJS0LZGHq3X/1w76gf2hBbUAV
	 tley6GIAFMz7PI2J7CdYZjiBL3O8PUwRrBNeC2JxEYkt/i5udVPI4MwUH70R5/dPhx
	 EeYM8fUmhC9I+D1V5BDF7J96CGYXTA03j3wH5dCbolokdnwIcGOIgFw9o+tw5turFG
	 n5xBxxUhGQJv1Kl8lJIMhwPwm2MMtbR1J9Jb76kOUKuQOf73FCYjJO3dZceIXNvgmp
	 zJEnwt9hDXM18+ymxjMplIgswBDN1JCqzWA/Tjst9I9qfaqFx5AUghAKSo7lHt/yvY
	 ToCE1m2cXpagg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38DAC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 05:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171739232279.25667.14446625594737797710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3aab82c4bb7e56487afe74519fb32136856759690cc7ca04577530dc669daa8
Date: Mon, 03 Jun 2024 05:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717392322
