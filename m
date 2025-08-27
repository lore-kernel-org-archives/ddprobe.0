Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383CB30E0C6
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756270794; cv=none; b=VarwXycXRlQ7zGU5iGMWwpTStLrX5mGbGlRtG8G1yEUaPF9pwAWPA+tAX+VkHKmrhRK7pzQiUyY2RJytSAGKy/HSkUEPEgtQUriOD0kj25AU7KXupRR0R0jhchaxDgcbGlcbEwpzGMnlKZlqGplhv5s93t+/8OvLVVJkicn/M5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756270794; c=relaxed/simple;
	bh=Y/AVVAtsIMdpEygTKP1kkpuEZYjTHufhOLGc5EjP7lg=;
	h=To:Subject:From:Message-Id:Date; b=Af04/1zI2T1JPiK9ZoiYjn3ie5zLJ1Kip6Tk86vnxuQleKuviL+8rD2MzGWAT6m0sIx0RiCePcBcnn+wVr/IoeGfjwRPyUiEsGly/1KFQOIiKl8U5apgs+e/HkEiEKDAw63tcQ3KWzS0P5VhMvTirxALCYiXT4YuSQFcKjcgEQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khNf5j0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khNf5j0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54B8C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756270793;
	bh=Y/AVVAtsIMdpEygTKP1kkpuEZYjTHufhOLGc5EjP7lg=;
	h=To:Subject:From:Date:From;
	b=khNf5j0FDxIbqxqeB4HlIZ77upru6mdkTVoEq9KPw8w0Tr1ZSAMt8ScYoe/lJb1Hi
	 L/cboF8K0Bt8zEtChZ+qDEVQFW9kxQvMIPLDTBXMcAXY7LgFpYfzp33aybfoEpKOLU
	 B0azDdCpTz7fL2h657JE1DYKFH4BxApdkmhNwg1pp6/rWBTXzx3p0ycdRe3P63kV56
	 2idQ7CBSZ/Ouqajn7063I+AWq8lOLc9LFoGI6O0JD5fxG5On0NrgeH91WxEn97WpAu
	 Cn6SyjwtutrYRr00Urvc86NT9RuiXGqniPWHNddO3EOwp79noe9otAvDIemaunnE/i
	 6msC1PcUjzKZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD2CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627079357.13697.10114433137247632612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62cca9cef352657cf2e520adbc19b36fc83711a6073f636d03d446d1b3533e6
Date: Wed, 27 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756270793
