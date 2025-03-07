Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2CC16EB4C
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741358934; cv=none; b=IkGAxkudXpxlffaoyM8tqU60QWbGn6EBWCY6AH0qe9H6fG3Jh0iTCiZowk/tRKpAyFOTYcPOiGutWo1ODyMrLa4jnLL/v+wkhXA1hLQz7Ua8g81bJVGPxENL/PWIa9HiszsAmFteeWcPqvJ4vkFJ77X387RIe76aSYWR77rZrWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741358934; c=relaxed/simple;
	bh=FOy3XzHBRsBS6J9Y1/XKAJGz76juEhvhGgRVd8EFN0k=;
	h=To:Subject:From:Message-Id:Date; b=DaLy00nmnXwshaxjX6R2kdzVEkE1FswpxGrJdySiKxl7LOUgW8mXpI5+4cFLhMDG35kMuf9VTUWm/WcIgLUvJ/dHVt13c1sMZ24bh2V8z2yP3Rq7bCjbGk6JLCimwb40qqceUcvbECLjEk1jrjgGdYYHrM+67VvgVX7G7nkiQD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZR3H0vWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZR3H0vWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7800C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 14:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741358933;
	bh=FOy3XzHBRsBS6J9Y1/XKAJGz76juEhvhGgRVd8EFN0k=;
	h=To:Subject:From:Date:From;
	b=ZR3H0vWWO3cUwrl3gigKVQvOZaOZ1tMRiokzc94Z3Xl9uEB3GIh97IdatXThwlOtV
	 of/m1LPCZVWIbPXz5+lE/0Y4B0p+cVAc4gUCXnSiUcAxVYgYVzG9wrciLn9ePiWQc2
	 0/uUQixRg7r+iCGGkTXQye70IeK3HpjWK8LYLjljsvRG12vP/Vb7nsw1ZZXoVh9rhs
	 yooqR+3SzNQumiWjFDnmbBPGXvhNALah5mc20aLzazGFChjIoQkui4aKDo3tYZzzEi
	 6oXmbvYzSPm6bLMCtIJe3WXuRpPCqh6xQdJNo4QC0hrdIQ7BY5PYZ6x6Jy3YlmCiVd
	 yPf5/anNfTkBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95607C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 14:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174135893360.11296.14834746204146062327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83136c12c4d9ebf003017b061e15f67d568d5cfc9ace486c073d6d6ee8dff4d0
Date: Fri, 07 Mar 2025 14:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741358933
