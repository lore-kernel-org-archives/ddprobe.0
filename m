Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5338A1E487
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734485754; cv=none; b=O9vDPU50bmXNlYNB7BsJlAxrMXzmpXConcpKRxERYsCU6MBIvgp2Pg2ARBk7qaHTwMkbGd/azjpBXaBQO8Mn3lN1PzrhwBFk3FtsMwpIg3JilDYu54HfO+Aeny0LJCqH7a9KrFsiYSB8N6WnZIlYPur3jpqr2AdKghYP/l19qV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734485754; c=relaxed/simple;
	bh=rW+2dXz0nR45z1EBg5EgUwyuoXIzVEPV1BjYyEBUNzg=;
	h=To:Subject:From:Message-Id:Date; b=AW+zcx/Xqt4hYPi8LZJL1ZaDmNHNOfFrlW5HghGXAk5rL09U2tWuZxcY2BThP8nvoVYpHPYPFgknnEoAToI3nt39uecVgr12lKg+bgPVxBXBNAJxbHH/Nt5hX5sQKdxOqyZjTyPy3U0GgfENnSwLPgDRqegR0//wTobZyNZi+yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjIjTsUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjIjTsUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88FEC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734485753;
	bh=rW+2dXz0nR45z1EBg5EgUwyuoXIzVEPV1BjYyEBUNzg=;
	h=To:Subject:From:Date:From;
	b=DjIjTsUi8luYGKlLpHSOXs8m9OaJafK3cNUftmF9c/Pomc0nIS0kxGb6Ff4vUDWmO
	 uXU6SQAv4ljW+NiL2VYX+3wamr6tHIwfOzzJ863VlMmagXmCcRW5478X+zKAdfrxdC
	 cwqwEcxLHHw1jEL665liDO3U5hBLmJxkbcZGJVUdElt93/EkpaiUdvdb0uWVca3HKK
	 7ZKPs7MJ9HlY+hDZh/WyO9e3/9vh0XEH2HCVWuzc6lds2mnGM3YhEfVHvaEZ99F4AV
	 L6T2b9oy+IGOEPvbs5YJ0Z0bK06/U3VpCl8G7ltUySi5dBoKee2fVqH0ySdzA7Q4iI
	 cF3uv0yW1+9xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D593E77184
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173448575362.9945.16410303500206955236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb28a8e4f9ed009d0cfc0141432f63ae2c8fc87a98d93786acadc9800f797d7
Date: Wed, 18 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734485753
