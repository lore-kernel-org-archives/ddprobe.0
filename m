Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298002153FB
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750886994; cv=none; b=ZfE0qYOJ/8899bqNVK/bpyJGMBf/RCE0O2U9pnIY8ZAybu/YblO7EgMqpdh65UexBsseEDnuPW3LmW6GuAzbqc7CwIMd8bvbecCzHyaRZjSx8guDMamYpvZ1DMV7haf7gx4N9OBBqo3b8pMZO3irLPTzh7zf8sGgcPB/ZP8y7nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750886994; c=relaxed/simple;
	bh=GdiFsBlOod5b5lbpI7wEo/R+t7X4z6veSEPV1NJZCTY=;
	h=To:Subject:From:Message-Id:Date; b=iI04xsHxQXXi4Q7ZcciYOfERr+55DbhyHIj0J+bzwoXe8RkcvYqD8OzMwfkvLjNlh+UKwpplW1kQgO57OkomTKxE6K35/kfycDBJBA2wFliSs8sByx4l/lQdub+YTIYS273niA3axI8XHYHZB3bCg7iItkI962PtTQFSV6iGrj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcI5HcHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcI5HcHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8064C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750886993;
	bh=GdiFsBlOod5b5lbpI7wEo/R+t7X4z6veSEPV1NJZCTY=;
	h=To:Subject:From:Date:From;
	b=lcI5HcHA5qZ0qEu9F4hIDrAAQnpj8ROHdxV6gCcf6dhJaIKpLVB4FzSxM2d0moCa2
	 HZur9P2Wao5C0d8Nrt49ErWw6fkW7vKu4mlTFfjNUHZGMbjUWAKH1yaCUehtmJHO2s
	 nbhaeRTO4mGbJrLiSZjRPpyDCoyNiNpRj3aK8WIlkKETyG9NqZnBDwYzg/pXn2QvG0
	 QSDDIymne0c1R2nYVZQ06MHq0Y8X6iSz757kFGYilxc2kR3qKZ3bxBzb1RK61YZIc9
	 BohlpvisJGT29OquGwln11Fb7PRoe9MLBpS20zW2dbgD3mQyDuhpXzvO753X2UeaMY
	 t9joFD+b5NUZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94045C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088699359.7102.1635703479877527856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21af8d92da33cf984bbba5657ed74f40d21f1ddcde597bd4d221c31da394c13
Date: Wed, 25 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750886993
