Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527A07BB1D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733720754; cv=none; b=BFThvxM1o0DwNXrqGkFCrYR0KbYhYpjxOTvd2VkLtNV0hnREUGbcp1DV2hTzG/zpw8+e+i6VemqS6gpV3u41g44Dmyb3LQ3r3FdiIOMmJI2enpLsFGJEmknjdacADjenxZUFpeO3mAtJRFeFMigVsTn70ZGtou9l+IGnMhvK9ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733720754; c=relaxed/simple;
	bh=GFbz5KqDxusqm4wvANVaUBUoMNK/vzJuIf9dC4q4+bQ=;
	h=To:Subject:From:Message-Id:Date; b=NAGY3+sywGVANWa8WassEmbBbPx6d8Rd9WdCIuivTe4JqM79eT91clW3vutwup3VCpfYAFpTXx22U+vE2tULFMgBVY/0timFf9r494EfKjFnY1CbqxrxOaJle9iT452cc4rgIu7a3e7UjDWpXjdnhwoOm+tkWEpE0VD89DimOZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1qRk731; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1qRk731"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9ECBC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733720753;
	bh=GFbz5KqDxusqm4wvANVaUBUoMNK/vzJuIf9dC4q4+bQ=;
	h=To:Subject:From:Date:From;
	b=R1qRk731Ap78aBQpN94pUE3foXVcaznI/u6AO3GedS0loqAoU6vGRkbGAB1B2aHng
	 abz/K1N0AOhlomaL4PSedwjGxjSrItmok9IWecw/fiBqLM8LmMUfuvlrFFfW/v6N+h
	 sXF/IibGHHG516PZWmBzOUMxJqzMTqovVTSQmFYzb1Pj1MG8oqFdxCoqvdnhJWyoS+
	 N7sazvKeSqT1P6ipLEJ1qJ2Ewkl0kY1OU6JyQnOz4haZfyTzDNiHSvbquhJ4TNH4A/
	 mZSMfvKeGW0NYIvH7VJJAGgGM1YWDLkIYNlGs7kFKalN4USCKIveBreUtdz+ADQsMV
	 b9KVxxM/0pnHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEFEE77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173372075358.351.11675774750335667246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87dac9d3c5c5187f9d8f3a792e1b6af06cefdac15dfe63adaa62912b64091e84
Date: Mon, 09 Dec 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733720753
