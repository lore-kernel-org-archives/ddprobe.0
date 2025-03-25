Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3241C242918
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742933394; cv=none; b=Z6Ww8u8VZX439s6qpDR58Ij09PQG0I0dzmLSoSOQddaIMUsv2xQCGhBrawt5gwuOgaZbrn2avjTM9ud1kwhcqsw/ROGUOMnLWakKY0RpXq8Zedo7B1wZPRI1sLdhDSk600i3XCVOc05oklX8nbqH67P1ife1Bpry9Jm4FTWQmxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742933394; c=relaxed/simple;
	bh=iAFAqZGJTzGa/Fu64u4BNfFy67sAkfsVg7YmhCcEsEk=;
	h=To:Subject:From:Message-Id:Date; b=Qz/GZJWQFJf67MAXY+cGkchdfUHLrAzwZV6eBj+oJ7qU7BMIDmFquopdJPLv+cR2Bgl1f0eG0fyAMoScuESW0MQtobSNavFZsJacDTP5qVZiheDbp5Oqt3KOR1fW/uuWhnbt7QZOKJOPtOBH2ENyt+TUi5x2hmh2AFAhn0eCeYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIYkJIbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIYkJIbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB97EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742933393;
	bh=iAFAqZGJTzGa/Fu64u4BNfFy67sAkfsVg7YmhCcEsEk=;
	h=To:Subject:From:Date:From;
	b=WIYkJIbRQdz4l/s/ydo3ghqJkgsVNNGuTpaJPGFcBooPzt0v9Hsm/gz6pkdhZJxpW
	 t4u1qqPBhx252RgvuKbYuIIs6KpIk8S6saUTuNWUKZcXI5pIwzYttw7VdknPvac88S
	 T7NQglCncdIKh9ORYrLq0vw8M9jdt71l9cC519WTvfiTQ5S8zdTlZWMdNPP/S8ekVb
	 B1Ep/60py21/VEn7T5EcI6FekkbX1VzJTKhMaDjuCBbB3dIOOqZrhDD3WHYwACjsTM
	 n+7W3aVyClNIj6oAzl+qDdMHddQtDjc7VbAcg89mVHsaGZqqm3rLxTn1f9nLdZjIhL
	 166XBJiK92ygA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96491C36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293339360.12259.12984955373059337631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153eb4d15b43885cc9be5075f11132100c405cd40b7a3f8dc57a25aec277e897
Date: Tue, 25 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742933393
