Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444F139ACD
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715751143; cv=none; b=AV6f75uUv/WczeZiEIu8ItAurARb/NiGnJJ1jJBqmkx3ZwIbOwnA0c2qd0+S3OuACXqMztkXDS8t5Ot3IZ/eud2EkD2DKc8p3d+gxmWDYCo/R/dwxJgzVUF0N5VxYuP+pXoLj6waNmBZpy504DNKMOs44JNLwr+ll9TnonR55gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715751143; c=relaxed/simple;
	bh=imMBhNtJOi079OD+6fbyZzZGt0q0crX+kB0tcBDSyPU=;
	h=To:Subject:From:Message-Id:Date; b=FOJhWxMC5skkfIujBr6I5SS77cu9rDXZKF5/q81kwnlOMSDMKX7D1ngV9+VkmeBsRh9z8HsaEy3nzUOdTqgu8S5Y2oRNTYE2YbeAEAmBPxYXOpl5EinnK/IsMTpljMploq01qBJDw+H3wSksX/ictPqsanIrtTmHlrb8pXx/Llo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afUhqcKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afUhqcKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6E4C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715751142;
	bh=imMBhNtJOi079OD+6fbyZzZGt0q0crX+kB0tcBDSyPU=;
	h=To:Subject:From:Date:From;
	b=afUhqcKAY9W5Qw2cVAoP2wPOKui6oihM139Ov5r4d0NZ7yFtvAmIEE/CIIaJCgTo8
	 G/wIRg6Qk0XpYoiGd7Mdx8CjQVSNlQvN3QiU7DJlf4RaiETJuoOQMY+tW/8omBpc+e
	 7rAyyLhD0UzCnCoaudcfT6kk0I640HrL8L2v5fzdk5ay1RVQZMumRzWhYXetgIqJLS
	 Tlm1hUZiX92bMtRmBO4HkPQkajV86dPhc8gPAAz2vywQhCG9HxelsKNAylgg1UheLE
	 IKjbnORG/FUo+e3NGaB6bUxpdhAGZoIjU21v350kntLrAMKEip9h/JdkvEGNrKNsuf
	 AdVAwfZlLEUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C554FC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171575114277.14054.11197693231773266271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5f8dfe240956e61238c7e8339517b925a53362d86d404754f93aa5ced2977e
Date: Wed, 15 May 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715751142
