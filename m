Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E02AEED8
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753507194; cv=none; b=NJUteI9X0UghLnypThlkNSRrEwputOLAKqMPDFQJKLZVTo4+eIWn3k5sIqmGqyJoC0rUOvhUxKFATUpDG+4SFZTvH8gR5dFkDaY44es98KNZ6dIVhyPr6rySG7vxORoMVtsqPksXnlwNddkyCQeRsfWaD1sWlQEpnMOqf9dR11c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753507194; c=relaxed/simple;
	bh=/C7i97iWiWSvffG9oGoMAvUWzYq1bzozhCD0OLpgRTc=;
	h=To:Subject:From:Message-Id:Date; b=l96xoaxJy/XbK2hRrzYc8dFtM9RaVCvlsqfOwBryzhds7jluUUjWm7WkARGPsXvateXApLU7zbSCjThjQlJgprO5nRutP2VGbQIzHXTHqVtK/z54kEVK+F2PUAyO6oHNkoZg64xOVU7KkP7zIMYoq0afzI1Oqf88fD3PGmUA+3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWbG35zu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWbG35zu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F475C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753507193;
	bh=/C7i97iWiWSvffG9oGoMAvUWzYq1bzozhCD0OLpgRTc=;
	h=To:Subject:From:Date:From;
	b=EWbG35zufAXRtEQFtstAPf3VY62ZyU0GLu8F8x7nWkFeZ7BwDXhIU9l9xr19BSsDV
	 BHL5Nhk7Jv5eDSskp8RRvcuJxYINcTMLaCihka48Qws1Xt9AVQEhNzALMi9KZio9vs
	 4qUog8Z+8VoCQOG1XuCnkoPGEPB9TM/26quLoPZYD1l4fkjRnlXoEWOfPXdQHBZPll
	 o0GuwR3ZUYFAIYu4OCpuOLYLUcshjOPLeekYGqqpTN54Fw3nNThC04qTK5QUx6xcBh
	 sMq0r3TYQt9ZB7IpPPhz7Qx9jl40RLKSpf/ILOeFluEi35lhxb3BpZZk+6Bw6EpQwl
	 xWBVgjpZDctTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0B4C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350719357.31008.6969159606128872121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cbcd3715e570612006f50911c4f6f312afec10fdb87c0b1ca784ce3f3f5b860
Date: Sat, 26 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753507193
