Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65DB1C3F0C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765682573; cv=none; b=SP8QAHghgT1/eqi1PJDD4hGeMW48+VyuBH9iWGL+Y1WXpYJKH3IkylDCV6835xc46ljZJeNZQTq38xYDpUDfXTL9I03d40WkwOaaqxuLoOPD59SGpQpXQ5T2KrNZFEzTqdOlFZOYqkLYgfrOPx4yfIkI+QFk4uPJOrnsKzf6Ovo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765682573; c=relaxed/simple;
	bh=16/plgtY8tGuxbOojIhNEiRL/hKO7RZhnTfTt+rt2uo=;
	h=To:Subject:From:Message-Id:Date; b=pyNpL3UhWeB2JHfbdhSXOc5wKguxeoI5ttiEQrq9FiCcKNycaSfOTnpgCkaLhtyGLYOSXk24dum0MnsE+OzNF2pSshxzgxkdbD9r2feT6kMJ41Pf3N1BuidI4l4Vhk7Iy26XpjWCUhMXMH3UmNSKVeiDBB1SEIzuwzTIzGtWoTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcIBqIhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcIBqIhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA9FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765682573;
	bh=16/plgtY8tGuxbOojIhNEiRL/hKO7RZhnTfTt+rt2uo=;
	h=To:Subject:From:Date:From;
	b=gcIBqIhOVIlO3d+u+7VooPcuhUoRmLPGj9SXMdGLCo9IcYRVn6i5+KprjvGUuK7iQ
	 08cErGuWnDXrcFMVZ/uM+Ke8DgXKTd8UIwU4vmBMvGMjsUagbOaeIa2S2+6h+oMmjZ
	 j6nXYZbCgjluvObM8plSEedtX4v+TVEUV6cZ5kOdwOS1vwYuOZvgzQkceo/4C2wrX5
	 jL8YEK85XaV8AtZXeLkikO0POyOba3KxOCDREoInpAQWFtgtNDBt51tFZubKJeLXYY
	 bbpznRFOOb+tksWs2hIhhqX6gEGkKBM7iwygDuVraF2tDfhxvEKpWW6mgWwnoDlk5h
	 5KqQcorD4oJGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF3ACFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568257360.22496.7622612498370163226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ac15881796386aac179e49c082a97dd1980aff9e09086d9051b710e23b8d6a
Date: Sun, 14 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765682573
