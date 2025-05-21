Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352E97DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747811994; cv=none; b=OgdBk3r8K9LqjoDWzjDrrPv7auqrkQuPQn7mstsi7fV+AysradV1bBW32Cu9UkB76jeXSl40jazd2Psa7Bf1SghGj1bwwTvKKTv8b3NCRcqPZ9O7iXViOnhbLfWzqFgabKLdgtm6ADGEYGPaG7uaBL+tir0lN1IcpA84e2snW2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747811994; c=relaxed/simple;
	bh=EOEA0CIerPyjFWKiAy+T+ZatXZmg0LVvVskzugt8BOc=;
	h=To:Subject:From:Message-Id:Date; b=UWs7IvkJ45yxfYmZeVJ/j47/Y7Ojy+NGehwxPPnFdPp/g8BfFiOaPqckN7w6kFBveQQK4S3SCDgG/AzShjHYsHq82fhgBE6IYAnp7Ul3FzhvFy8S+LmUPEtBc0szwaZbyDhZUXAdJqlnoay/10T18BbbAI581jU/m3N04Ro5eqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esQQTPWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esQQTPWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD4C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747811993;
	bh=EOEA0CIerPyjFWKiAy+T+ZatXZmg0LVvVskzugt8BOc=;
	h=To:Subject:From:Date:From;
	b=esQQTPWDl8MOFj9sKELa6UXW6mNKGNHomkCW+u6E7JxGRyO1N1LhjocAwig7zmeIk
	 Ty5dsP+nYCRkpq1XENO2/SxvbpFLOCY0in/5B7A9EH0E2ChQR4jcFKEjnNJv6KtPB+
	 9ZcRsmkbkKmOwoDz3AYhdbykhvW9mDVnEfQ1PfcKOsiAuC46XtiEfz5Me3vHZEEAhe
	 Z4QtPFLhITjnK4AyNaomeahlL1xTX9oqIch3VxTFfZEolfR11xTedP2wm6SNnCa36G
	 shluN97Aa3MZNBaZcBlEQpj+rQpJimH0DC/NBfRmUBMdZ+ReG+aQMPaFm1vTjBTepz
	 as/E3LokV0qsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D98C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781199358.6396.2982645402422778956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe3289855edb0d40b2150991da7be47b5efc2091f7665bf28bf69358e1bb125
Date: Wed, 21 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747811993
