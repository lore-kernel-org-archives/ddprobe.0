Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479823FFADA
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782736114; cv=none; b=HdC2WALQp225OGKKwt+JkuiSL5mh6DQDXzFLhIx6JScNsoSTOV/wXNv9Ch4R7x4keVkfkQjdWsSqwGJ0xUlPtqnO5mR5h3pxFaVGiuiMy1s5cWlXj+kg7D3D9buK3EU54TFOBmLPDF5p2a0oWiAV8kZyuo1KI/D15vwbNqZ+9po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782736114; c=relaxed/simple;
	bh=61dpNhZc6c375j/xDTOr3VWAqiaj77W66PBfhUcBpKk=;
	h=To:Subject:From:Message-Id:Date; b=KVt/194W5RtlIqcXCEGEidpFsO085tceVkdwuvGTZJuXh5TFUWzKyfyKTGeUT+EbA+qsQUX/eYxb05uAMmSxpmde/S0RbMVbqRSog61Qq7x7RWJhC5LA78Lm+KOxlKed/CnRomeaTYhS7LJiOmlgQ/RPftprqDZHLFIHKIBUm8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUB8bBTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUB8bBTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5EBC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782736113;
	bh=61dpNhZc6c375j/xDTOr3VWAqiaj77W66PBfhUcBpKk=;
	h=To:Subject:From:Date:From;
	b=lUB8bBTSHi98I9lCRiF6ZsUwwXhPn3FxFEHVVju1clrQDu6t2XcJbwZFzbXGQRAnZ
	 nRB8ByKyFgEhsj8uqAk4xadZ3vLG8ICf68sWHyrtnqWFHKgbHCAvyNlwDW/PekYUbJ
	 +jwlCKFTPrZfKQDGY7ZxinysQiggjI41FQyLjvfRQd+EmOcYUQsvsZ09Hs3aDrYbte
	 NITWVHy+xG8dQAvw3Vb3h8zCv5oRm/Wk08S48N1zdRii31oNtb48iAa8EAsMUXg7K1
	 Kl8nMM07KbFCNAOnJ45NNeN8CmMF0DZteg2NlMxXNO5SrsHDxTxrDDaXyzBFXBjEGb
	 H+7hVjRO97SHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE85C43602
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273611371.12148.13474420884841485484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbf5a86846adf394d9558a23ac7630d51d6878259ad09c952e41457fa1f34ca
Date: Mon, 29 Jun 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782736113
