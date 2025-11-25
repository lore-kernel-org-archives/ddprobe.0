Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138B9214A8B
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764058974; cv=none; b=lEWmNQYGUTgFG5vJX8aZNaGrNcPcx+7oqinCgpc9PFN1BbUTQGaDB3Wl5HAp7b5BFMAjO/j/YuY5pv6WPM9PQCgOElXBw6h+zNe6A79rrHzaKn/JiHAW5A1QWKNbja+h3ejAHETT0IAJqOUB1vPR+OD83pvCFxRcxHefzfWmdSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764058974; c=relaxed/simple;
	bh=e3mvAepNFOlukNBqifKGD0zgL48TYfcCAH31BfDcBe0=;
	h=To:Subject:From:Message-Id:Date; b=B0UZmpxjY2K3rp9O2muHhoN1raHgNVmaSQEvryHJqKuXvOdy0/feI3IasqUUZO2rWYLLaAfs6DX5mSgkgouOWYXoNHprj/8q6emeJ1/UZNqVb8uzI3qgr0aAO/vZGuiwCMUEqjXKLN8WK40dSAVi0LGtIUQ7NjgUI1SL31ZNGvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ2890E+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ2890E+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A352CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764058973;
	bh=e3mvAepNFOlukNBqifKGD0zgL48TYfcCAH31BfDcBe0=;
	h=To:Subject:From:Date:From;
	b=YQ2890E+h+eyRoSHGZ9wW6Gdeshek9k47leeITbKebBcdJMesQE7O9lGN3sP3PFe7
	 2h6XzMEfOAkF+09rmMAXeh55bCs7W8ffI9kYSOCT7BXkR+QWQQd5ZVpSaMl4VOm6Lg
	 gsK1BBMeycGkrZoYIpxgkNUDAHWpg6GQ+6i5YHmd/Sdh/OdPMCNvzZgZPym8Oo5z4+
	 5VZKK0Jxll79NXd3us0YS4C61R0GFkFKxbzOUK0HaAEi0SYYeKRNZbi5tI22oDnJNm
	 Dm2YKBf40VN0PRnP5n03+kYbxAmMukLH+pbIlj5vI3unLcjWDJjC3HBIfVaFwt29xh
	 tWGkeuwX63hZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC38CFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405897358.18097.16072362757965461632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77d6e5dcca2a9123568e0d2acc19e910c78ec7280c7cdec62b5a8a3690013175
Date: Tue, 25 Nov 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764058973
