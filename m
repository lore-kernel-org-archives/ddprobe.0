Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B7419DF6A
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759734594; cv=none; b=SkM06NssHA0Htiw6nnxmYZ474ppD5/TaaurHkUdwdoDv9+Hc9RoES0GFpOQCp01kH5fGhBdMEFIujt8hCC1zI8uUwzt+6A6exTyHZUmV877Ngm6dy/BSGmdOY8pU+05AevXVJnV8rB7y+O9kd7k4YZOvOoqS9wWxrr8tDKhUcXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759734594; c=relaxed/simple;
	bh=XR0PuKwXC6wGu4SGtg8Rzk87nmuD5k66jjCydBrS7S8=;
	h=To:Subject:From:Message-Id:Date; b=iHEztQiNeaxU7cvus3dWsoj3TZUEY46VqvdwRu71Ftbsb9EnVyQnPFK7hsuXJ9+2p0KXfCnkLEzqzd10epvu81AxrjTRI20DwgZq2Y65Ld5AuWVs1Y0xejr1PNZ9nJCvmlWWV/FUHV1uXiR+wpFVWePcuotbwEnyg+EX1G0wfBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBqo3Tuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBqo3Tuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B221AC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759734593;
	bh=XR0PuKwXC6wGu4SGtg8Rzk87nmuD5k66jjCydBrS7S8=;
	h=To:Subject:From:Date:From;
	b=OBqo3TuzofIRc+AlbS36ki/UzK5zo3idgbIMymafBqjpIu+T8rTjUxXFrGE+i31Tr
	 exxwno8k3avDzOQI+AH6hnGODoXMCh8rP8QotUYksqx6SK2vkCM80tdLpgkt7ht3SV
	 HXsiZYYRup5DK1Wc4Zqir2cpiUjSuK7b+zO9iF+nlxlNvZ1c8dbRLifI3pXxSNWxq0
	 N8BKdplhdPfpbL+ws4Eyw4hI9ZpbDNkFfcvoYxhyE7qeKYYMCUXtNgXaB4Ki6OSzXV
	 sdD8HYTAxttuGdbprPQOZOzzXFvPmbPiwe73Z3iqkAnd5hTgZ2t0l4jyO2Dz2aU48Y
	 kKquThWWF1qpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0750CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973459357.15534.5749536784399503783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf7440a2280ff670a27984d6927bb256211014c0e1f26464af586ad370dfcbc
Date: Mon, 06 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759734593
