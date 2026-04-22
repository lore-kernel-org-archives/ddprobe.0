Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D08D3CCA16
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776853054; cv=none; b=HxXbOxE8PYLUh2+3V21Ysang+Pd+K9xoBhstxO0qtYv0vk+pjAQhacdzM6Q1etF2kaU6WTDtDc7jBdWNHdxRbHi4FWb3By9GpfK65D3thwTAUan9kkWyW/WUfWRG2WtEIc3Fk6JPpMirTKVgVEIT3L2zNP1ymUpneXK5U3rBGsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776853054; c=relaxed/simple;
	bh=wfSqbXcqMb1DrhfQRq9VFTiSRK75RuRS7zXF7LSD48g=;
	h=To:Subject:From:Message-Id:Date; b=HTnyZXaBx2JnoAteRJiOy4d6gkH0IE+h6X8dJpyqWP7D5iPeRFE1ukVfJG+SdiPnV+kN+NOJd8SvS9JbfRvQrE4COA3SboqWQ+bu7Ah2A84ikX7rnMygb+22vWOM0fq6xT2zqGVwj+JMCCk7scNxbYcectfxtFirjZgle2X3Pdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+Xgj46a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+Xgj46a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB60BC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776853053;
	bh=wfSqbXcqMb1DrhfQRq9VFTiSRK75RuRS7zXF7LSD48g=;
	h=To:Subject:From:Date:From;
	b=p+Xgj46af8aqTXwFm3YqfHCcCEA0H8eH6SoTwwEg1ePVMvD4PQqbJeSqMEsMP0cyO
	 CAiI95CtetJ0quBEwoTDpqI1KBF4ie1u5WAZnjI1k1+fQb9EUOtjZNeatUN0KnUhXp
	 LNzVwOKuj3UgvHvn11BG/z9h1jf8MwYRfPFlzag00rWbP+qGk1n/JWLUHpQa6aVDP+
	 TDn8D4lMAbHlLMs27kIS7MMHBePGH6zXqC3w0whSnz8UqvGcoGzQGsnOFUj91+b+nu
	 qP7dRk5InTF5Epdv+Guo7lCeagK76oK1bCIwiHIS3MW9kBROt3mf5D4kHdNIEO7BHv
	 k3O3jGI8ds9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9574F9B607
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685305368.17091.6766017265583205459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2091e1b5edc8734ac4b6ab791094bb93fedcbe25deee518ad0db6a90fc04f016
Date: Wed, 22 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776853053
