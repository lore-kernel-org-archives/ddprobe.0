Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437DD22097
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750830596; cv=none; b=IFBu+VZDQ6P0X12zYODTaem3cRcDpR2k4D7fXR5j+3hiQ/zM73jfWWwfffXYOjXtxOWtgEKHk+H3Xd5JA52kiIAhHEIGL7ebAZLXLxiT8T3yss5gHF7X/K/Eu8UTjkSYoRyP+Qub3ngGLknS4Dn06c6o72bwcAw6AwuUXFIow+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750830596; c=relaxed/simple;
	bh=VZ2N5aerEkhIEw1mm7V/AFwC6fGQLN27RB8AQ8SpCh4=;
	h=To:Subject:From:Message-Id:Date; b=s5m+6oonRRzbvv37dmwk2VWFQ/5ZSIbqvsDdIFa3cDtr2wLlprN3F1yXj1QRKKlLBZcoqnmaRLQyUBhgqgSTynaNERuqDVYBXmXCp5WitnFd6hjj6utgrHPFWP9PAzi+9fceoVFDtVvu50zNCKquGQu3alTQ9F0MOISjUUmmW6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddvH3SM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddvH3SM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D2CC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750830593;
	bh=VZ2N5aerEkhIEw1mm7V/AFwC6fGQLN27RB8AQ8SpCh4=;
	h=To:Subject:From:Date:From;
	b=ddvH3SM8fRkt84Vf0rSJXWfxsklh9gU5jB/p0wqrn1JVgUI5QjkJRuWBMJne88sMS
	 5lTyRiE5dkp+z50AQltGAJm0ewKFvvnJa8rtbx2q8Cf+C45KzOZKtzLTPTeEMzTGWd
	 NvkvhAksbba1PKLJ4U4GmBRvk6AQCMG4B8NCIR/O69T5GfhXKXXnbg7/VqqIwNLN/B
	 O4gH0+5Ly2IbVYy0Jvd66aGDhIdamoSBX7naFFXaJwnKtRnpnq7U4rY0Urw54N3ZSM
	 gqIve3J50mhDQF/aIiU/iBT2/crJPvpq2vuFH/++Fu6L1IgXaCLuEYHdBVMhoWNptS
	 0q75lApXpzRSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90631C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083059358.19136.12166578517306607152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764cd6ea8a96bb010a231f0ec681aa5eaebf0c36f2916bfdb96fecfbbe74043a
Date: Wed, 25 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750830593
