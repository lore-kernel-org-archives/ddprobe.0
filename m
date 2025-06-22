Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236AF1EF09B
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750624194; cv=none; b=Vo3Yh6QUI+n6oOMx98yar6CPQiYJQELU7PSOir1QBHlB++GDuK08NeMTA4rPNbOG/LqMzINvJNZcPhDRkOa1vEuQrMVZYIEBjMxWYbRjHa+lYNZliFm4u2nbyDJS4BhOdNJolBkQzpINw3i9KDpM5txsvc/azShdT05MJKyf0o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750624194; c=relaxed/simple;
	bh=TX4CJYyPMx76cBC9EaC1tl9XcXHpd/HhfYjy2Croghk=;
	h=To:Subject:From:Message-Id:Date; b=o5GTwPsr/DRDuHsKvUK7JrIRRUPO2N2a7I6God6+i28acbFDXQ+ZxZyxuLByLxR91by1YZdDRYzIM23oGAXzjgvmz0o7LjkfnY4pnYVzjGikAcnFfaeZVyL9leW+zZ/ZbHN/GbJcdhKBZP4XjDAL+fNOApGe3reI0ielSI1e0m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dThqAsBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dThqAsBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8267C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750624193;
	bh=TX4CJYyPMx76cBC9EaC1tl9XcXHpd/HhfYjy2Croghk=;
	h=To:Subject:From:Date:From;
	b=dThqAsBlZ6DIYW4pK+LH4D5uuS8CpGXoNBnD5skmw0XKe+JTvgJCob4ifEbDnDytL
	 ja6vR8iMp/hltt2M//Dqxte/lH9nQBr5XqWOjqB1FKv7MPJJfTZfPzSmNorTkfi3bS
	 s3ITNHdaL6Z4vqwSvgmd32hYhUuoZvqbgBWcw7F6CBUjf4cJVRSoaf8v6po8FEBWiS
	 qyTh4Nh8/T+miiVX0Uv4wCRRaJuAhiazaPjkXd9nksoqbWp0BerPKQMmELx4HnNFJ+
	 5gcR8ZtIykudh0ejQGqEtTyLtzBE/slG9Ymbj3FysuwVZX86e+lNbPU/ug7gk+ubH8
	 bVacD2cgeOYUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95038C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062419357.20964.11849273307505207229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465339a0a691d711b095752c50cfbd98fa4da5921217876364ddc725071ae320
Date: Sun, 22 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750624193
