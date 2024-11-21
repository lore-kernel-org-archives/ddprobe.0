Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306E479C4
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732204554; cv=none; b=Cv3bIhr5nUW1LaN0ORpy/72ulBsMXXTZKuAU0phnrjVL5tjq5CnrxPFlugXxduiwLWfK5QFfLZSzrfTSyrzI+g5W8zgncSXLbmxM2+MQi5YwTnAlUyHv42O7FIzN5QJJEkA6P6YiBqdbrvcWeucmK/xIcqdzxBN9zf0B+qHofbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732204554; c=relaxed/simple;
	bh=b+Jm9Delyetv5LkKLX1qdDxR6CA5EEFtpMemAwQFjDc=;
	h=To:Subject:From:Message-Id:Date; b=IWWgznEc75hzisuXHmka2K+VQnk8cPFDzx05/5ax9f2jSk0nqUniOf5CoJWrKwjLTmBhMz8yOpk70FQLTywTxF05vJ2BGXOBkw0apeS5TpQVKJd9xGryCZh+iZGxn6kvgODV0g5MBa2efchC8xdKblo+AWynOfxwzYNtdX46YTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LehD/Dtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LehD/Dtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC66BC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732204553;
	bh=b+Jm9Delyetv5LkKLX1qdDxR6CA5EEFtpMemAwQFjDc=;
	h=To:Subject:From:Date:From;
	b=LehD/Dtn5p7/i4MkXQ+Ymtyj3Ovwj+YTk9G5wM2Q18MQP9eUbF36i58IwfO2w58op
	 NDrqu9SIdf6kKt5cQY2IVF+GjNmq/AnXQn9Krw+9LSsS7hn52vu5cHqY3opaaTc7pQ
	 QubEyAbqvSqA6C3fOVCpsWNGUB0DH37U2VzIu6XrPtlaeK6Xx8xPCXO/JB0HMVHXGl
	 FnJ1U5s3Se3ivesfU1OXogUxdL8vy7fr0rMdP47YIKWcbPuAAG9lVe6fZUhti10Igg
	 xTNA/49DwRO6R6isPifKMajBmfSR8zp+UhJUY8YTPl0g7u1MbQ0lBYS5/c2QNAn/SF
	 Ey2fzbfYglP4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98180D7877B
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173220455361.5706.2180479150327714427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed70e6539444d7ba955c3cc89bf529b67f64909e36660e396b988d590db0dbc
Date: Thu, 21 Nov 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732204553
