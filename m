Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC208F7D
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764409374; cv=none; b=fTSLSldLQwq9ena2ZyALl1epXw/rLlVkmHzcELti1Dw2r9ijieHNZpeD7zMF6YW8knwQczbZi/lIPBtsbgsPtxz2TqBCWyXUN0c0+82TGlO33yd/mPQJ2ND90QrxxvODCyugYmMiGSiFP4FPcLJ+fMhXdEVwJq6hIdk43ni7QjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764409374; c=relaxed/simple;
	bh=g4Y4ckBuEqXtLdn3/2uOKM0pvgOKvjYauAAO1N/JXE8=;
	h=To:Subject:From:Message-Id:Date; b=CKWfaeWleiZn76vU+NuqIkQlstiQXU1RXNRABtaqH+v1fPCHO0awMq5aha6wMd5Res/PSWvW4qupyckg6l12Q9zTOSldV0jNAoFnO3vLlja52G0arvYhxl1SiuJnNqStsWtpm07mNmjK/tnAircgWCzT59cVjXCbPJxihZfrpJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQI9aokF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQI9aokF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31E5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764409373;
	bh=g4Y4ckBuEqXtLdn3/2uOKM0pvgOKvjYauAAO1N/JXE8=;
	h=To:Subject:From:Date:From;
	b=uQI9aokF1Zq3dCZ/sZTXDCoS828RNyKsY4jiPFogpFY1+dloLE0kPesJ/AZPNCTPR
	 wY0zJEFT8tYR+AYW2caYpugvuWhsbcCtce8IcEHslcPZDYlZcgnYWNmSQPkt/ZbUed
	 GkXSkjLAN4t+gsJ3fuiMcU1VOvM2NBe6wn7CNIcv5t9ahcWsY/4Bl/8WTmTpDEAUQK
	 NryBx/t3WAGzEUdW//4Sf+IcFJe6bWwqmep+dTkme3JEAC6M93GZVEyioUN5KhtgfI
	 GXUuq8hfMPZ8cb17ruVAgtDOH+NaHI/qpECvRIglZjc+mqRCSFGK9Hv80sjzBESOam
	 J3OPr3R38dn+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E12ECFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440937362.14086.10808519689242423056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e54a74766a832b41d8603e1ea3b68b1a3444c8b9c9fc4a920341f45c1af1e3
Date: Sat, 29 Nov 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764409373
