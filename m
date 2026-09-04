Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235A636B07C
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788502234; cv=none; b=dPnvHaIHzFywlllzsIfxpCZe2Seymz7HXRCqWyVbbmGqERneoaCcfTE1XQM3nKwXDuj1mU1oKxLEHaW77OLhotTyMtN2bLsBrV+NvsU/ITomH5xmFKS0dCgO2a54JC2wfPyE5LCSAkg3c3V+NMd4VmblFyL7zcWlg2UkWunlJZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788502234; c=relaxed/simple;
	bh=xKENAn0lY8wKWZWjropzf3oN8fD+tFZpCrwRxWMEPB0=;
	h=To:Subject:From:Message-Id:Date; b=bwEPrj2huuumfz1y37A6sQggk5Ii8E2sacSa95wg1N0/UQRZx8gFVXnGpIgGQs4deB7zSDY4YR5p9YnycUziVX558Bc/8HywcXk13SetkABGtzIuYwAGXWdN0fftB9KP5pnbNP8gwM3YuUYO3ga6AutDrzjhcuog5ilvvhZTIWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ej2NNFV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ej2NNFV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD952C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788502233;
	bh=xKENAn0lY8wKWZWjropzf3oN8fD+tFZpCrwRxWMEPB0=;
	h=To:Subject:From:Date:From;
	b=Ej2NNFV+X3gGolfNlzPmMUDYtYK1rbb0PRW3hsvYTK5YS2rW+cdUTHE615E3iztVn
	 TJ/kBbygZ2UacuGN52TR8Sk3b5saTpoOZGCrS5OjF42oUFzKUInd7Z+EpxgZ2+OdbF
	 Zv//RZnnCzWVdYftR5KfaimCwEcyGwfc7ADyqT/qMXMnlFYcGF2id5xp7U3zHHVFRI
	 5tjOrnNoBreWv4novSGqW22E8x0bHfazTSBDApWcsT1V1iX3Cd8zpjh8CNDI9YHVcy
	 PkVZi5ETnXegcnUvvO1sxwco0uWiTqjzyedLv+2rjPdCqIHEO9hYW65ruRPRBf3P/o
	 rEvsvgOBkLdvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A2C61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850223368.19835.10264602926525573228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8cb479e778aac52db372d570b8c7e474f9205a8f0339c6e58731f19df6a029c
Date: Fri, 04 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788502233
