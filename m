Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB8F120E6E3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748873994; cv=none; b=ihO0FT550xcxIhjNu/FBChHvavCAw5qLUYNFFbMsLMDSbnK+D+XEswqORrAjCUZbrPq9Cg/eXz8wQBu/OvhFTFd5UazG87unQMjRZBvH5ZgHJ+6BGtzGRfluM3JTjbTqa1baMahy4lX9oSOr85TcTC0WSscSIpMxKr3sAITUJdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748873994; c=relaxed/simple;
	bh=Q2fabL/gguVsA0eaYdrID57+x3xaapjOhW/nv59P0iM=;
	h=To:Subject:From:Message-Id:Date; b=ENg7UgOEgw419f5/SEyD9tQXm6FoPN0+kVZaokPDjbqmZ0y9NJ/05dEW2X3MdBUoaemwqHHaOoXNSnZQhhbuhDH9q0aOYPHM7uJ4Vupp5BJ/zMNDw6PRI0ODrzfH8RApTn3LLFeLWnSF6UkT2cHiOc0VKA4130i3L4TZfyk5+ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UB0a7k+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UB0a7k+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2F4C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748873993;
	bh=Q2fabL/gguVsA0eaYdrID57+x3xaapjOhW/nv59P0iM=;
	h=To:Subject:From:Date:From;
	b=UB0a7k+vlNVC7TFoUza9zqzh6Co4Mlm7ru33un9ds5VIsv1htmbtZfBM5YEZxzbKA
	 AvE+QxBBxxgdU0jMt6VWRgxNOzyvfs2pTLCc6v5EeMFtzNr+yMfMmxoIKa9LzNrHi4
	 jKUbyKh0aQK8NFxo9xbqLjOdG2ehec/ovziaNXJlvdlVOWSzO9gz/si3HK9vpH2XgZ
	 VCZBBkT4jvpAeBnyWCgtkwMyWiad+NfR/BVO9WDNI6Ry4M7FdszFZzY7DuJ6I+93LX
	 HDx7gBuhxCqmVnzreMB3+qCuAdBEMYQqbzkmNRRKALWSbW29+UUKQy/8xsrb9dBVV3
	 DSGLisKGa/Hmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B362C61CE5
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887399361.18089.6001580573095640389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801e68fae97a2c0ad219ba7a32af707c129f9fe109b91aa8bbb2baddbe3ec57a
Date: Mon, 02 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748873993
