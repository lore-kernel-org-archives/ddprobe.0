Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7531B813
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713847223; cv=none; b=GxWKZzMQ70u4FrTbGyp89MHcVro1XLqZRd9/srizFKsxjO+v87wxwEMD6M+eboWy8IbIH0Pr1mBjvhfQ7XCMpeg2kBIOj5M7/u+81rcwClh6XWcrAN+UcLdeLsoZW7f+aSRtbu1H3fcxfwApdLTvR6O2CYEm0TigLWgILCfJZ+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713847223; c=relaxed/simple;
	bh=6lRYHEAsWjoHgaljW8hT8+ie/jWXJW6tfeyfXhWiDmA=;
	h=To:Subject:From:Message-Id:Date; b=dFFYpU9aFoR5pHdRm2cE2BJw6F3/rQvGVwkSwtGC+hZSr21pdIkYBf+tMZSCV0dMXFciCe0AZNTQBajGQNkQZVO/nDLKIruLF0wHO0yKlvOptAzFwEqPnsxGuR/cXhO7L4R8mSBlCkWTZs0TfuN8/x9mRgkOnR+PQu9/o3eZGfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULbuhEOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULbuhEOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDD37C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713847223;
	bh=6lRYHEAsWjoHgaljW8hT8+ie/jWXJW6tfeyfXhWiDmA=;
	h=To:Subject:From:Date:From;
	b=ULbuhEOXpWeF8uDkxtk3HuaVI+SWna9bg1VqxLDithE0FAjW4HQ+u8tJ6Zper5Zkd
	 7MPW+HLrCcbv6/8jHOiCSqVSSjeaTmkaUJdEtw6cKa0CIxofpgxYlEgQFBpcscYGyb
	 +TVhgBrzFX5y9tSrvbib9JOHIQsaEDnEH+1PhqR0jepzyKz2YaW4WdmEn0UaLKRuft
	 cICQ2C5jZ+GXv9WqTQ1kV0Fhss41HfjSEOgCGjW8CWobFK5PpfLULNrlF4t5QuV39g
	 aSQLCydhkT9iEfJFY4c5cl1/UH3hocnfFZnavcxyvOags1bNlipj5L5LTdnqwAvifa
	 QM2a7jtOHGGWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F87C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384722279.8298.15267887851916082527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e424281331c5eef4eca6933cca4127b9037ffd12aef097d2474fc946fb1dcaa
Date: Tue, 23 Apr 2024 04:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713847222
