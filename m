Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E0CA55
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755983994; cv=none; b=M2mB/EJDb7Fv8lGFXLKN2zYg4R5kNW9EmmJ0Bl0L9ZNtnN3rQZen39V5KtLSGmSeun2dWLkajdymTw9fsEjws5w0CzVOrWe9QcPZw3Q5WVMB0+TG1FzZsBNTyfsG1IAmnQBRaBjgRx9tGRWfRBaGpeNL8k4oU35UgYzsQcRiFNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755983994; c=relaxed/simple;
	bh=M2dyr0wGNJAifQAXIitqr8lNgTeMamxuUAGBI9StcYw=;
	h=To:Subject:From:Message-Id:Date; b=YoXEx2ct6eHFO/23cAoowlCUukL2lbosBPvKtTdDz9cpj7hqrBY0G2WYlHk2C2pg3pMAC2DuDDzx5MBUmeZpxml49usrAnLa6DeqUysM8w3GP0V7vEOKDBrBGmG2BDR5iOS2WykKlMnSoUBTZoaLI4x9g3qAYPBuA/YOJVzNt/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaiO5aIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaiO5aIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755983993;
	bh=M2dyr0wGNJAifQAXIitqr8lNgTeMamxuUAGBI9StcYw=;
	h=To:Subject:From:Date:From;
	b=XaiO5aIMUElEKWyVsEo2uE5tNLrwqNXS31UJ9HLT39bzAb/SPabPxHRBeTaRjL0EK
	 fZOx/9+Dj1ZvFP1Wx9/PAndbICDvto7Wlgvf1lSxe2aGD4yLToTPWgYYb1RqT+KKhG
	 xJ2AhV4Aa9jXGZCS9F5HEGS6FfdluWzyEOim1jyOZRBwq2VBgZ5sQWm4oHmKpP9sYp
	 RuUZ50NwLrMnxtvhPbzHp06A2wyxcFViQnpg3i93ldN4a+oqs/4jKVXKp7hmOAEmCR
	 uPNEI9ddr22nzeN+z/LXTkGEtHH0tOaSxMuPmoMEEA2VLQ+S+ZM16fOSPxV7oNYYux
	 z0oz62yq5Nrxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F0CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598399357.3642.10713160965639457874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b052bea9f8ca3fd61cac32632fc7c2365405643360939eb5ee1e8da6b0c9865
Date: Sat, 23 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755983993
