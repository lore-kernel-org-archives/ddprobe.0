Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518502D3207
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753169395; cv=none; b=XoQ066v2GUroa+HC+EWv9PPcEhZRuM7K93RbFe5kNMjhmY/1oK+HqmihjwhwvUtjyp9Aom5+hkSEgLTOdw8Pj+UjSuY7KRahd6BGj3fB0Ca+xmgrT2qvxxvk/U58AHhFDdlTfF9iJ7ZaUhl0kieUUqmAdjcjMOrzthVapujXuh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753169395; c=relaxed/simple;
	bh=1a6QSD9+5JqjRSbfQzMOqz6CNUDWcc3p48i6q3FkRJU=;
	h=To:Subject:From:Message-Id:Date; b=X8+juCGOXGX/xjOq4gofoQqWGWusOYtbbfFmPr9X0guUriQpTTrQClMien3xj0bQoHoF2bDXne4DJmKHVxM8x4wT/b4DapYfgFRgn1hptfLmKecHl1VrZ7cTwY9AHmypssILU1Hs0c96mBQhIpQEKE0RA61h5smsd8zbK3cM8Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvCJxRgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvCJxRgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C890FC4CEFD
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753169394;
	bh=1a6QSD9+5JqjRSbfQzMOqz6CNUDWcc3p48i6q3FkRJU=;
	h=To:Subject:From:Date:From;
	b=NvCJxRgLAc5YDGIsrizVcJ1/U/8ENJPipPEANpWXyfq17urfa1ekhWgapdGJSnefZ
	 JrWynvqbnn9xAz0PZHTchVQjjvKE/hmOvdWDh1e/Ogl6oGdNEzGSsi2tnINubumLfk
	 gZKEe/6n713vMcTW2nPbra77KoYYO+dZqLjLsO5FGYIkDdJvHNqEHmGi5pK9ubj8Lg
	 zzvpWDeThaIZR5CpU9RhLhUxHcZq9kgN+GikwNJAmIsrcLnhg/rJWCZR42fFZZBXwY
	 9BJkc5fJLwaSH5ffJKP54tOIr0PsaYh5jS1ueUp2fsgBbziF2as/Tx877JcBj+uCHy
	 04h3wr176OgNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971A3C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316939360.18552.1423003395082898955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e0a6dbc6a76eb2505b5e8df09fcedc27a0dcb18994672a67704a2cd0457ee5
Date: Tue, 22 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753169393
