Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E57E15A8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744070994; cv=none; b=fJ6waRun94/lHmDQfWOhIVLntM6cIDcx+opzM84QzJ8ayoRSxZY7pAvGo8NHIZlOwzfzEd6MG6zYNR99N5cgbK3epZ0xhsmeGf8lWO4yO82nUX86YkgLQrdW5/tHbhYCZxooQ11DDORja/bze19v4YlXQG7Tp7PC5WPjG+dizS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744070994; c=relaxed/simple;
	bh=nncLCj5pIAvX24etM4SfBx+E8xcFp2RoqzgwX2vUUKI=;
	h=To:Subject:From:Message-Id:Date; b=mGEMeHAvS+qSpPAFYekcxSOTClORhtUcU7AeUkjuEO7d7XOolZQzUEZNqsXIz2P/boZWnTPZX6mNKT0p2JXk1089wMYiLe1TYo/2nkU4566YxgMbx+bOO6NVrBJdirKMiNfFNwAeSp/zDV3Zk3W6+LrlqkQtfJXFW35asGMuVKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msdeHAhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msdeHAhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9284C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744070993;
	bh=nncLCj5pIAvX24etM4SfBx+E8xcFp2RoqzgwX2vUUKI=;
	h=To:Subject:From:Date:From;
	b=msdeHAhGB1iForM+Gyr1crBD5utDvYVWyXyTzgFtg74SCkwykoqDUjOxCigR1VkT2
	 Onl/6A0SoZWWqOCT3qqlT/wHzXNYfQF4CTk7J2SS+nozs4zBnAum1VJ8yTjHsrHMPh
	 h6z9nOj5IxWRqQaO6vwCRhGgegvA/0tzCRnbto1BwzbFkDnB72eTeqLJ4zvq1pPjNc
	 YJnZIavwwKXzWMRm2/c9AbgszdU/GQX0hv03uG5FOzoOqJCWbGW562oyMkt0uVV7Jt
	 LZhesU/4iFS+C48NnZ0cABCxlUwkAAgVzzg811K1Sr0fuABjUpYeZA5zfKv06/r2w3
	 XbcaM+9rrU4Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92584C3601E
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407099359.14242.7860953779441504888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9021b6cd91fe8d1152c31de55c208705fb64a6534a8a38f0c998b146c918a1f1
Date: Tue, 08 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744070993
