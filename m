Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAD2382
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733024754; cv=none; b=I4HKhgajJ8heyx82uuhSvgtsm2L5vpW5O+9KbRVMx/dQ8LVVWAMuEzrSX16+0Lziw5PhrEtL4E9Q0Em9WAS9n9gX7AsxIo912gWpup683MLrD52AV0AiUcRnfKsdIotrWN7WW/63AtEuaGxxu5hkPJ9yHzj8b2u+Ei4lMrWFWNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733024754; c=relaxed/simple;
	bh=meZs+BvezIXkEAdmVPpTJH9WLCqoNUcN1kgLRHh/UJY=;
	h=To:Subject:From:Message-Id:Date; b=A0FUIOIGmL7sOsLP9eaJcPzrFEKQOYT7Dc3KwqLf44+C3sz4w0Pidl9xwKf8DcEDfIFod5HqrurGcKdBKvYgk7FIzQNlfc8WVQCxp53cD7LVQH9ApTWkgZ4Le/C/3x+ehkxXuIxzWH6GCukUEU0cKSMhIIp39xR2cPM0kDcLbp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppWNc4C4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppWNc4C4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBD9C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733024753;
	bh=meZs+BvezIXkEAdmVPpTJH9WLCqoNUcN1kgLRHh/UJY=;
	h=To:Subject:From:Date:From;
	b=ppWNc4C48eG3WNxpe3p204nnXLXuz2UCK2TuFW2ZhISpHMu3xO0zvXWEomB78XIpE
	 BTUBChU2PGVY2B809+fFMMBkHG0Qm4UwK/PtnpF4kckqh+8638IpbFvPds4Y66TK9P
	 d1KgAtylYDMaCu9N/gNEgLFNy6dGkzEafhUdt6/ZqeXe2wsBV1ZW0YG7JeL5oOTfSo
	 ieawdJL5TPh17Sfe1vk+KywL2unLWT+oQ1aVPVSPaEaQ5cwivz1qfakH9r2OQaofUk
	 Ac7dfZw3mKdIWLySBkOBqXVWKR5ajYIbg2CP09KYTZN2ZebPg06czWCcNb6dvEY2Jg
	 XFDAi1Itn98MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97598D70E0E
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173302475358.6890.11926116630992270321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feaeb0eafa9b1e0a55775e9188102350735f419d62fe053e9da1463a497f6654
Date: Sun, 01 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733024753
