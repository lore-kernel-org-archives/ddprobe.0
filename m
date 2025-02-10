Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE80126461E
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 23:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739231754; cv=none; b=Qc5p4G8R3ypD52MCYqIZzy8+o+xByTUaRHJZrIhuhIcTHxeJSSDLHojVAxiP4ModWePr+bGYmwnr2iwS8OtHW4BlR1Zyv8Lso8HmPnw0nvS/pfqmKQZZh/gTJ7lItlAaYa6PqUnPKmFoQ6oA6afDWsr8XVVOHu1oqI3bLI1bQK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739231754; c=relaxed/simple;
	bh=BXx/M1vb/LKyz91j5NlleWlPSwIK3wKVmf/yNSaCuKs=;
	h=To:Subject:From:Message-Id:Date; b=p7WWyvXYbSjgfXfr9B5E7BV00WaQdhZOkMc4t52E3CiBXQbOsekMCBA7FL8fa5LtWDBhzIHQ1yG4eNnzMDPrzrZrNHFnjAKpe1Z1KGNdUjJf7uEJJy41RyJX1tpIM4JEUXhx3RPxq8e1qQLUhXxXqHu1+zTkonvzut5v6ovU/0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=striZD2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="striZD2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 391BAC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 23:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739231754;
	bh=BXx/M1vb/LKyz91j5NlleWlPSwIK3wKVmf/yNSaCuKs=;
	h=To:Subject:From:Date:From;
	b=striZD2f/c3+Il5pvABLV3hImraVG2MN4NMj3vl7nm4NxFXR2j76G3hUdt45Vm6O6
	 zgaUItJKfAxyGdr63Bwp5e3kViCncK92GThUk5u8OpTNH9rSl5ItRGWziluLt5lno/
	 cS1kc/0dg0ZKUw7YQegtkzL/24UJzmj/T21l+gjyh6t0tJlWbDbWApSUH8asBzc2aM
	 a2L8rsfJ2iKE7BUIcDSVB1t5zNhCresJ0JqdPBmh7jo9tTUb5eTR4w7SIofBUWwHgp
	 jCb7lJIm965ygCAsYXz5KRp9039JGBpmHKaGb67hb6d3cXIoovwn4Nil5vvp38oNXY
	 kceurqvWwEuhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBA34C0219D
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173923175379.11122.2232427473402166435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3d530dec46d25423aeff275ef6d826c58cd2384a71daca95e07500e4338253
Date: Mon, 10 Feb 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739231753
