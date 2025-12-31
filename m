Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3189E242D7B
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767150834; cv=none; b=Zh39sJ0JEtSvq7TmTie26DqmKmomXCGedqr1j9dPtzgAwOouBkRG21dZS3aPKl0CTFEBTyDys2jvwOHL0qtiSUBNyWZ/yvoE6rCjY6IbwDtWNj625egjSg0PTHxpN5U4lg1sb+frkq7ZLQxTGBFOjx8n+U9/4iGmK4NxgdmzJbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767150834; c=relaxed/simple;
	bh=m5LqivCQGkFkHt9CyhmoZOztvH+HlwUq5lBJaK+fOtw=;
	h=To:Subject:From:Message-Id:Date; b=W9zZzy7QiiFSDEcTSokllTfBD1vf+lrjvH/BWwkyaAtCDKj8i7HdV8k6d0Z30LUA74S8oiiWoGtDjMn7rH3yhBsgQDFu/ajJM5rKi323/KlcgdU3gk3vCwa3L8QtU2JVdI/dYVALDB0uO67gmbW3MKiBPZWFuYIvS5VUn2SnwQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJY5bMad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJY5bMad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55C6C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767150833;
	bh=m5LqivCQGkFkHt9CyhmoZOztvH+HlwUq5lBJaK+fOtw=;
	h=To:Subject:From:Date:From;
	b=GJY5bMaddzQztgVTNZRQyo5E0VSAoWVeTbhtGPeMI1XLDr1gPhojgAJKgPNTls9rU
	 T5q5e+ojm2nRT/UznutjW+p4uSiSfPLHLPGX4b8wrHuuBfTzANMYRrHRBg2sSRORgH
	 t5ZonxD48GaBJqEuw2CgcqKfG/SE9ly2mrcaeUdjokSIAaXHlGjEEOYifsafQHXhU8
	 pARNpHVJLGezi7zEbERK5yXwSj7VkECpSCX7OPkUQNFUtCuKT7HQDj3UzXu2vf3VyC
	 zxuPTTq+ILDbWIUBJ6UcWQ2epvdAvpkvTWjtk7SXf1M9oUVskJMoCdCIA75cL4rrd4
	 pbrZmmkprc0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94380EE57CE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715083357.12394.158225519547619675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a27a87f79398a12c2c98e9be359e302510949d30da4d19ff72d5f1a0efae825
Date: Wed, 31 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767150833
