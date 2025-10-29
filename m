Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D642EC0B5
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761750594; cv=none; b=Dt2PHJ2IIYwVqj1uZIzUSAiunFtnb/wFEywiu6MetrlB7OAqzX8baMqrOO0e7oY+FTYNyBIZ6EtA4UoG0Kugqc9OlkvO1jGFSAQjcI9+V1b4PUfjUyejq4ET7enINsu4F2s6Jqdj1YURFaW3rKHdVj5UgO7XqoVV3rbOSuyRoL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761750594; c=relaxed/simple;
	bh=YCUNfxH+/w5m6fIHCZqhJG+G9JW0cHWoi5kMPOfldRI=;
	h=To:Subject:From:Message-Id:Date; b=IoLj21LZjIbYRjlI18OkrigAxqPQbDDrYxSbUY6JxBlA6ARcP+8LyJ7Pk7Re4N4mjIGohtAQnuvBR0iCc7tj/A7pvsBMOQuIHirpA/+j+QTKrm/XZ17GbLHamCiozn7+tjiEgM2o3AGOxZAgMvm2tZiBX1sjTDeKj74a7MaFX68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzVwaswv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzVwaswv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24E7C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761750593;
	bh=YCUNfxH+/w5m6fIHCZqhJG+G9JW0cHWoi5kMPOfldRI=;
	h=To:Subject:From:Date:From;
	b=kzVwaswv15dQ5pp+r8EZUkAgP4OPmJhgvIDvZhwIyWBzmaxfK0GhJ0dKioz59HGjY
	 QPTOxyrM2m/mnmTHS42/pW1FXHlDctDCRo9gcdR/LPvsxqFIztOaWolgH29sO4Wg8N
	 BtrPHXC1SJMDt9sNhEXDDfhA1/u8z2a6jK/7lGW/v8Ha0+SBfnuH/27ZZEkz5jmVHL
	 xuJm6NRlz6Uo4kYOnIBNiD32nSW5TkxlrmpT8PSkTpKaP6/BwMDXSW9ZAt051WNbjI
	 M31lVzC9UBjlWwX+ivWCImdM3UI7ArvK8soWCibgi7+lxtJ9nro++fBLPUJ97isngZ
	 eQb32uZRx/jqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36A0CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175059362.4116.14159799885520595266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8193f93ffab75eef5324a01d3be6526dfe29b0339fb385ee4978b8a8edc1cc
Date: Wed, 29 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761750593
