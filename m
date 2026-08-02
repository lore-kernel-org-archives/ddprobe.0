Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E69218AE3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785631834; cv=none; b=HUrWu/HUvw6SOJVnwp9ZBDDiNIPngbkB9b3VTsznzua1H4O+H3jpClSmzRvKLR+HdKnXdubxzgIWTF7qRY8IQHagkVllGkmXcGys4yqqcM0wQzXQA/LNBgkmshrvmJeCDBKHT1/9TrbidZ9Q6/WmpqHEUl3+B9074yTM4VpGmEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785631834; c=relaxed/simple;
	bh=fSpugaUxhDNRL2Z4E6ByFBaMdbM+PqzRsZ0jQRgtjAw=;
	h=To:Subject:From:Message-Id:Date; b=JVFhbGrgs+BeW+l6kEbGI/5cIjnoYHjFIikn2tfszPczEKEtHnOdUJe9b4WO5ovrKvUwewirHuxPoKcqbr2PINuKxcWFJ6zr5tmmOMk/Za9nvy2Az26o0Na5S0rCeoX0PIW2Uu4YpHrA+Wb3HOOfWIcfmzIG8EuwFOvOd02p6+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHP9Tv4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHP9Tv4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1463C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785631833;
	bh=fSpugaUxhDNRL2Z4E6ByFBaMdbM+PqzRsZ0jQRgtjAw=;
	h=To:Subject:From:Date:From;
	b=IHP9Tv4ak4F7Ye/FmY7MRkESchuNqx9VPvoU1EwAwcfPepOlVGY5MTFeyQELJqAFF
	 jL6vxojKpUzgkEES62IsVdQ3K35B1hR/ovt2wbbCkvZtowY1XWGXZRz5edM0fny4ay
	 QBRV1F/0EN5TWhVPLb/aGu7aft+Es0jmuYctXWHGMEHEOKf76EDzk9rUqoyLowkXZc
	 4vQdQaml65wk7pzOIY/8NANxbcgECtYA+7bcJ+NXt1n6dma/IAt1gkJYjxFFSzMiih
	 HovEQFFucDm9C/2uOobZCWuNy3X/6sDhhsCWi3uRJBMTIKQutA+u3pYvvIRO1Y6fb6
	 zwjMjQnri0xfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABED9C55172
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563183368.11360.4602651481824493338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a4c2042d076e57252bfed89b2be2d0a81f744d9e999f762224ad10f62c18e7
Date: Sun, 02 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785631833
