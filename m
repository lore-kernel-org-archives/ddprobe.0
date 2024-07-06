Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A487D401
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720274723; cv=none; b=iIyv4CPK4WEfgCO9ZzOlEccP4Ir+rAKL/OfoqUSLMEdvoRf3Ejot0dFTkE4zZpbwT3O7o/iYIcNZljxVuRXxSAORV0hkGPFn6R5IYLm/BGpeRghM/zlyK3wUGmZ9H6sXxdB0VV58ycbrpqtp/ovUh3OfqWVDRQxcMn4nctuwjIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720274723; c=relaxed/simple;
	bh=6yppRkoxgwMRy3kiuPMzwxR6+pj54Bp/25C3EzYXEbc=;
	h=To:Subject:From:Message-Id:Date; b=T5f1TAB2LKj/O8HK2xz207cFWVuYZ4wItQFLxhLHmgCqYiZjMFD8ypPWH/KnPGVgC5G/uCpkLy9wFJgxsqTrVVwaFwz9jPg3v8qBg5tp9/2kyLmz+hQKM+CdlykKQEbV9jl8P8l14Oogl5sKX+Z0qcYM+v0tsBoxwIiHQjrSX60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYpM4f0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYpM4f0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE84C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720274722;
	bh=6yppRkoxgwMRy3kiuPMzwxR6+pj54Bp/25C3EzYXEbc=;
	h=To:Subject:From:Date:From;
	b=NYpM4f0ZA7S4jTbuphRQJ6XjIJsa1sfJMfQqoDPeazzPwf1HiLo+PDEZkEQfZhlgX
	 dGnjzMT/UcO9+Wghr5IrJDmnTIKlZvTPW/QcL4yIPxfY/RkZszp+Rfd+Iqb2CiDepV
	 KYJV1CKlLmHeTQmL38hfYneyRDa/d3+J+/gobBbSPSOByqO7TT0tvrgiUnJuhUsnUs
	 RHW3LmCk1PtDDLAmvzPx7IH2q1hBOYH7NJhMs5hEv/X/7lRuxJJPRbjBaOv7BdJu/t
	 HtHfcKmTJXSk9ZTYlS7cyZgduac9A0Nl6zYDp2H4WumUxmrKbnRb0/QPAQpc8rvhN4
	 ve4wyHxW1OQkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87ABC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172027472278.20542.7414832691666269209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d504c61247d2ae9ec7b3434c2c36c555e3723579fcffd4cfc2101020a6899b
Date: Sat, 06 Jul 2024 14:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720274722
