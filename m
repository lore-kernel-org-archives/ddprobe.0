Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5602D1624DF
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790448034; cv=none; b=EY+Oe0fqCGLyIqXd/4jb1uUdqE50ydGk6yoySPxYIM7/sDqeCuqn/KpSmWp7Xd5O7eeryj35SWUp39bapF0Ts+8cenciNKC0Dyid5dOu+hBNS1hYPh5Jfk8LoYjtjJUQy4gESxe/AbbJUUFEBLF0t7JO7Jyn1Pg47qi+K3cVd/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790448034; c=relaxed/simple;
	bh=qImMrNyvXSptin7QUeTMfcWop/k/6VuIt82/sc4CeNI=;
	h=To:Subject:From:Message-Id:Date; b=I8br33fxVPiuoLUWBE11n1b2eZOgm2wQpke9j/5iYZyipUyAsUAYfN1mEfOUtwXkJWMHsXHTijInDfa1WVqqJ7ZjaLnl/gsWZtGd6DhvDSiWKyKGqz2HF7OWIqVXXxrrnUe0sxQEcQ23VzEaJGF7gQK/hvv083BCdWokijhWv4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWBQuwe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWBQuwe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AECC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790448033;
	bh=qImMrNyvXSptin7QUeTMfcWop/k/6VuIt82/sc4CeNI=;
	h=To:Subject:From:Date:From;
	b=hWBQuwe2rxJC+xloTlTt8ELkapOzHQ8u3EdiIEelmqHZ0Bj+FdBERjaScVz9fDuQ+
	 huboks4uLhjc+i+v9v1+CC7HfawGkYVeB8z1Zm1BTiCZlQvnAgjRYvlcUIjjqBnnkF
	 un+PyrESFB7VEV1Lrkoz8pbO3aMJrIohbO4kVuwIHZfJjd13ROhb04nCOmSIoW280z
	 muK/NTI/DPw3wjdP2aGb8VfsBZczRIdPmlGnhLl1Wmg4ACnGaGai4Qh1CYYkvajj3X
	 209NPVYYieoUKNIiNpTKsEMJgpUM8Iu15bewYcL/Cq9EIXAEm/CiCng/i3lXD2mswS
	 qvCTdLCJ0KYZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD874C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044803369.26118.7328257951143830124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f96ea0112345cfc661c720eb7ab99b1a2c0e110beabebefb4fe60d20ae2975
Date: Sat, 26 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790448033
