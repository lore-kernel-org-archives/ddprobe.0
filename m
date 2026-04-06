Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F48F257843
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775454334; cv=none; b=K6XZ3OqYoCKMnd0zpWogSNWpZwRacrSsTh0StomWVuc7d3/Do9Cp9N/IORwDOUE/LXIpxuoHahhXKGKnA0ZjxFKqUbbjZP4j0MgeaZvhPsyrEYcttyWgWQ4Y/dkzCV5yFuoKawOQkoWGiGt6SPSiV7RRqCRVYttkU2q5WOgDRSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775454334; c=relaxed/simple;
	bh=+BCqBNwuYALeLSNt3wTahg1Kc2EfuLPmUtxJLHqEzL0=;
	h=To:Subject:From:Message-Id:Date; b=vDY1jv2/D6ABdrzqj1lJoiFZuI34h51/6GqZjU+w7wNLqxfwQbwNm8Bkb77KnnCDkMHMETpZKp5WuRahcWcdwOiiFB8bEmFEbW+qMUZZ7Mfw7XTBJwV+4OiTgw//7o0U45ZhusOsPYtY+FD/ZZt/GeJUbw1/WDSu9gTcCIRiAA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcZ28XET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcZ28XET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE26DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775454333;
	bh=+BCqBNwuYALeLSNt3wTahg1Kc2EfuLPmUtxJLHqEzL0=;
	h=To:Subject:From:Date:From;
	b=gcZ28XETfP/UFhpsZ9pNtxe+G7UsM3JHFND/zjkWl7hWWuYD6SWg1RjbzBcCZGKuK
	 gGlLHK4UEXe1gNMCQ9WWR3z9Xe1KW6I3lVTTGk3qNUf6jwxzXwFVNR0ZhIk0gDVDY0
	 NfbggkEtH5Zgff8pKo1Wu1YRJJqZDOonM3DzaWR7KU7eqh6/K+XogB3nmNqlr6oLiF
	 R0zGp0ZBQCCGQYNL+uwFI53vbGCV2T/tXf4wo0TSr2nYT8MythuvdU4lCyl1uexYus
	 d9d1W0j62E42i0ht/fSNT25hR9veweOb41lfu6Jl8b4ignHmlzKJlC8nxiJ8lm0n11
	 EaaHZuAFkce/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACA9E9D83B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545433369.11879.11639131601546621227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec455d4539d7713c736a4ecb4a2374023c17176c5b24108daea8f36eff937a1
Date: Mon, 06 Apr 2026 05:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775454333
