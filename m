Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCDA1A28B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 01:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717464323; cv=none; b=del26ylz2Q7iTkF8jZKmkFsVy8b5/xZQX/Ot0NLIqIUNA7FhX7CldGXIDdyT3ItPJcbAUk43DIwBj/076FulodTOakNKwxCjJ3GDpdnQgnCen7mPKmCrstnaT1oB0Zq3hPg8yfEzr1duIJwLdLq86E8LtO8Taqf04OW095kBZR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717464323; c=relaxed/simple;
	bh=84oTXwZS5yZyclg6FuyK0LjyyUrmHKLlZ/E/4747tC4=;
	h=To:Subject:From:Message-Id:Date; b=F6NP2Fo7Zid3ZQZH9inKnAEa0a7Hvkm7J6a0vaNIa1J/d5X/CsbLOHrJbaoLlfrzTPO7UIw5AQXugCIrtXvL7M9I0hNWEfDQTAlbrMjZGVghudJZh0GaGIXXaPdpPZP8DFP1+9ME4h90Dx43ZRwtds1vSDbvqvfyu8b3pg2X1zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUXWfq2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUXWfq2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08B7C2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 01:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717464322;
	bh=84oTXwZS5yZyclg6FuyK0LjyyUrmHKLlZ/E/4747tC4=;
	h=To:Subject:From:Date:From;
	b=dUXWfq2XKvgSQmil+/1NEYvYXfav6O/b+3G+ooy8lpJOY2gOIj59RwFARS2PbDgtu
	 30+5LN6X80BFmdtAQH9jd/T5pL+STT+7F+Al96f5RfNsNX9K3q1gmcojRlVRG8+eAu
	 TdABnOVxbGwJKEikIS2WRtrYbwdTO+fSaAQOuv2OoBzxYL+XFHkEUVLBQd4Bu+5B14
	 O87Eug2xDhmE+rPThTGoA7MH6iEbtQg6SnscWYhAKGI+Efc4BMyoNXyC46dDSsgb8e
	 fPgxV7bqk8yO/6CvVwiYstXTEyQX/Nn3A/5NMJxZDCUC7g/DdT+uINLDN46+Bqc8k2
	 EuSGslHlWU6YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC047C25B75
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 01:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746432276.9204.11218197234973285075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a7bc263b460805c78cb17b10fb662c9e666a5d98e4fec34163127a661c0bb0
Date: Tue, 04 Jun 2024 01:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717464322
