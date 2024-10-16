Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DA0FC0C
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729043754; cv=none; b=V7R5q/iK7EXoXyzAV+oYt6ywnPdUEwTsDkQ4xjh/mwS1IchaGAT59/6MsU//JLfBdDB0/eesm4mj9nb8aPOjOoahG+WqXO4fJaYh/DyyD+n/9B7FLerjiigpunV10C9rUQU0pX4MRwQ20nIGXTCDFUZM1EJg2LHAW3TlOAa6Dl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729043754; c=relaxed/simple;
	bh=dZHBEm1kYiI1Z5KHfTvSr7ULuqnkTPY4zuMKRbjolFQ=;
	h=To:Subject:From:Message-Id:Date; b=krHmehBUdXP4sTus/Sdj6RA9TascswxrbkgGyUO6lV7GoFtABZA77/PL99mZA1TrghdjYOxuMcYUreJ+1yR+BiGxxVd0GPtDXbTcLLUXm8YEqyDZx7YepYZwT0KqatAfxx2Kswv4Azas74vMLxCi350QeQ0dR2dGhe3nU2J8hGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rl7HkNWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rl7HkNWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD015C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729043753;
	bh=dZHBEm1kYiI1Z5KHfTvSr7ULuqnkTPY4zuMKRbjolFQ=;
	h=To:Subject:From:Date:From;
	b=Rl7HkNWKQc14/7uY+ApefO4MPvrkYBKhgJ14HyleeJHPF74YoIhrVaqiM5bgH3xoa
	 iVQDi3lhSmcfTnwYbEDBMqonAmX4FhBjudXv9MdyfPawuDLnW/CgtGUlOQL6QNcx9I
	 1F1RCk2B5eKCJ85r1fJwXzTZmvd3FNa2/f6zJet+HAUdqVYJSMy6pcB2jhyRkwBw5V
	 rNo5KZREZd2/J2K0kWQM9NHKzUhdlyuB9cpp6AdHxqrPVai4rUdFA9T+l5ElsoprfF
	 7dEYhQJieMdsBwZ430KwagMJRTzSA/VX3N1a/hm2CEJBFnJLIuw3vShQ9b19L/0Ywt
	 bluolUnRFxroQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B37D2068C
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172904375359.13439.12474125271286904278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8408c04b778b847f684ef83b4a8d5f57878f97b3fea0e7193a00447beae30e14
Date: Wed, 16 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729043753
