Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB463093AC
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767693234; cv=none; b=s5hWXcHvYUkTCZcIDj8ZNoA02sG6Dm3uCCnNxZaaOlQ7rvljSnawufhhTRGcEU90w8S5WJADThTSJGb9AqIumgSVBSBgBamMxDAUHwRR3tvVJfr8nrfBS5uv8U4gB9U7j04RjGPAEq8SDsp/rY1ZuON3Lgs+HgRO+fCk40FFJLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767693234; c=relaxed/simple;
	bh=i6nEDk6DUt5mJpX2jdP8Z8ZxB1YKEgvmnwh5lYVdHl8=;
	h=To:Subject:From:Message-Id:Date; b=DNNhiJOrXcAt5fHGmn8k6Pu42hhhPaD78EgUVQofQBpE6z9BtM1gMGfhg7qrbSbITjjH8fLEnG9hTRKeNmBQ5uUW+81IzdfkCj1k03zFoR5RM1+KOJqP0tp5MRpJ7QJ897oxiuiEv94D3F3BCsffUAWuiojAlhdRC1jMK7DGoKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjrhweEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjrhweEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C261C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767693233;
	bh=i6nEDk6DUt5mJpX2jdP8Z8ZxB1YKEgvmnwh5lYVdHl8=;
	h=To:Subject:From:Date:From;
	b=CjrhweEPwpirtVjC39SuLzX/OuafAUpWZ4qzekcM09qCGr91ISEBVmkYjPzYNJHSk
	 3T8shJFzlPv23rUZg9Ua2Q8uzmpXjysCh43T60ZelPVHYCsli40FLchnmqtzcNswx8
	 ICXeFv2k9MOR0btaoTzqUtcwrvPS/GpR3HovUcU9Q03trPJDpgeSyD4DxcT/7QCB+e
	 MQ6NscQ1ulE5D9DI6CpQevx/Cf7VOtxlSXL6hPtVXJmOTRhUjc9GHYNdN7LYQ6w4qr
	 pW5PShMbq5KKVN4oNn9MD+tFcws19rrX2zoS197KhQQ92pVPX9xEObM46RaK1yJ787
	 2uoSL5H3oDYJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34DC47BDC
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769323357.15349.8440612114956091409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7604d212bf134f2055d4f71812c35188c5eafd75a2958bc919c04d05ac5628ae
Date: Tue, 06 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767693233
