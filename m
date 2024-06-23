Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565A7762FF
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 22:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719183143; cv=none; b=LPsjd4HFSXVmALkImh6eHpNuunOtupEOheLbbyUXNhN7yDntSnwWYzoJxrT4bAwaLDTePaCZKdVTE1OwKd8fkg6bBy1ZGVRFXFghJb8oT7AzXoXRZ8XAqkwK1HkE2qx32SqM175cOWvdz+yFC08qddgypTaShcIiB4Sch8uNmPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719183143; c=relaxed/simple;
	bh=G12pq57artrlEgxXCkKiZaWvzn6rsfozsjgAmNFL4kU=;
	h=To:Subject:From:Message-Id:Date; b=rnp+kYS8zf+118r+YmSujtT+jjrz6lQ+wVDzh8W6H2/+fhyvJ+Z6REbnF5SZbVx0EP357M4op4JafrR0Dr/URORWRn32b15jupQAvgKEhC3gMBKClEWkorF6F14FA/FDWe94haXvYsqLqbPh+W2ew7ScKmoTyxZ3U9OblVZOtc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z90HUD3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z90HUD3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E35FBC32781
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719183142;
	bh=G12pq57artrlEgxXCkKiZaWvzn6rsfozsjgAmNFL4kU=;
	h=To:Subject:From:Date:From;
	b=Z90HUD3ofA1JHMdeSHZpHOUq2iRq0uAIQ7htzmOcLAtkZ2oYckSDOGSRhq+vA7RK1
	 bU92mr/njmG/nRm3S9KW+suOYQycoRcJ54/GmhD5xDRk3hCuSJPfbCdPNipa+tfRWR
	 YQbHXEHWla6HX6jktRAobFjjGBMlVwk/5oz/o7usZUOLM4iuyXgLNFGxD7SqmdLrXG
	 TMbtUeghzMXKaNJm2WVYeqRE1cIwiEUrj5CWyMsp8YcN1UH5hZqjb9taEgqAFHJKkR
	 XOSk6up7B9gFS8scL6S/p476KVyb1IdhUP+szNOjQJss/jAsG8CgFxrnUokK9dzadW
	 7QnkJXi09EhGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFBABC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171918314281.996.86527498140483571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2867195b33a2e50e57668ae5f467329346ad4f6dd1968c027f171f6dc8399ef3
Date: Sun, 23 Jun 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719183142
