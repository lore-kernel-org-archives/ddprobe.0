Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457D733993
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741146534; cv=none; b=dp0UgcfxUxE7fXL8QFEywL9lt9h4p0opdrnMRSndPr23CTGflUO1f7kKW8/eoq51VfhxzTcz4I6dCR7bwLNmdZLXkhvyTyHsP01pjHSXLaTCuv5c4hjJuPQt3nPbWoOjgLj4aKntxwSifv1ddB5ntI6LNq9jL6Ty4+6VBBqdDfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741146534; c=relaxed/simple;
	bh=TfzhOoiYNdPCOod3sgHInAZcQ54Ea/LcZU7Q8UnJ85M=;
	h=To:Subject:From:Message-Id:Date; b=nQfsa+0fo4ztHDF8LC0xByw1Jj3wAyNlnI3RGv16rCEvbogvNvgduf4FbdsxmZ9ZaHzobOM8KTpKyCzgJDeTG4SJGPXvB2geA8iYI0bYlZkUIo3DHIuM2oXhDrNGXeinxlV7ATdeW9texbTJEaw86WM7C/W3PRjxhAIVN+GCi38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0sg436o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0sg436o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD567C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741146533;
	bh=TfzhOoiYNdPCOod3sgHInAZcQ54Ea/LcZU7Q8UnJ85M=;
	h=To:Subject:From:Date:From;
	b=E0sg436oJXA9cxoNEpxV+qKtHLsZsFeKvtIJ8CPpyQmoyTJo8X4ql28jWYdcw01R0
	 KdkRvz3czlDi/dkI5ArTcFRXlBPO4Go+g3uDcUSN+mXxbLyPBe6iyVV4tDMI6nzhHf
	 he/EQsrC6qJggP2ZhTHkzJk4+rf1MtZdlOX/8cML+B8ckGEGfPeKMMwxK23nIzqbGO
	 gTkeNVWJMANbsGXvsktlqczvOA0FeauUtkSIwOPQ41nt6wIk/tYqy+yNfUUwpWQj2r
	 yr0CRpwPbI2laXFS4nBWUgPLXHWGq3nGzFRD3WmKBTRgTB4Kiuu+nHyYmqhrzRNgbC
	 oHzDql4ywzJKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D92C282DE
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174114653359.28294.2656420428862027444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a6edba264b6a9b504cd3350d1142f00e1c3e9f9c17e07fc402afea8bc9f19a
Date: Wed, 05 Mar 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741146533
