Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23914279910
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757201994; cv=none; b=tIDxK8lLmYa9nW+QRtDE4hVlMjP3CdgL6LdnVvMWklcGHO34ee1aHHxVY+8p4SjeU8CAIanYPE5O4S3H6fCUjTLCeCL8Rem1pzrITwua0rSRTyLjmOQLoGfRTtJXcGFoZNwQLJe81TrAPes2SDXO4EnILBWGON1NceNRfIp2Q4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757201994; c=relaxed/simple;
	bh=y1ETj6ynFoJm9J0P85SYapHER5vqPA8uihqMhhIikvM=;
	h=To:Subject:From:Message-Id:Date; b=F07lTggj4Q4uQlK19nfEnd9XF97ft0yUoZIBhfw0HOcV0Ujgb9n66zeEB0hDNlozo+pRxxNZWZmnPXeOAE6X3yNKHesyzsnHbRazg4qZOjThnhV/wL5mKX8cZiNQLHeb7F4JCmsHTY5L4RwurF+TgfaNgXgiERR+4+hukWnUAL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cem6rJJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cem6rJJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A3CC4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757201993;
	bh=y1ETj6ynFoJm9J0P85SYapHER5vqPA8uihqMhhIikvM=;
	h=To:Subject:From:Date:From;
	b=Cem6rJJfCXEp1xd+iNgvjxryK+17ruVsskp+acmlv0o1W91MOOcTXbCJlQLCx1g7l
	 GqnptBrvjjSydr69MIzXvnY6NW4yOF39w4XRaEaJMF7QwRPAO/Pein89AB4jSca7f1
	 L6k85ebNK+5ej1FvPPrbWcHi/Siktb7OiQEmWYBzftcVnJGMDEpXbwNrYd97Obo18W
	 ACWrdwyvpn+jzQc+IksAomQ5wo0vg4dS2muTHhiQdGzLKRTRzPhpWFxDvhsgyLDGKJ
	 SmVijwGfTEZnw7gUowJxg0zAHPEWuvNO0zllqFIzeUwJif1f6t/z4JSKWo9prHFk9d
	 7mnny0YWRAeQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E656CA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720199357.28693.6862896384422698987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e74f92ea34f2f62f92385917d962f3f6fd6c87206b68bc0fd8445a7787058a5
Date: Sat, 06 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757201993
