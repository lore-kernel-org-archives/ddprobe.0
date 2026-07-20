Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4E243636B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784560114; cv=none; b=SNNdKZgPPfwAOZG4xOLlDgssw0IQz/cBrPY7RWaVKlsD/1I/khZDwgNAcJVKgEZG4z4Hv+Ve4JB3z9M4JQ1AvG9ugxGzeytnjvEzcuPwm+Kov9vw/LDz+hh0FHXosi/MMTVDPvbEI3OLJuGXu6WzHbGnamS1/FbBJo5eVrh86Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784560114; c=relaxed/simple;
	bh=WTr2piT0U00rr/vodDqQgqjnl0eWKhHj3D5+Gd4MNJQ=;
	h=To:Subject:From:Message-Id:Date; b=DmLfKcLEXb31OehHaX3P9F5h328ZtA6UkpsIlhGUij5HTYHDxLoUQxUsZ66UYAKHGHrUD+gsx/A3KqqGXN6mpJGIj5baD1goPv9dIkeG2+GTRHlf7DQqu98cI1pgQ/lNZAzXe5+wu1iqTmFTj4gwnSSRrz2U+eAEr1gPM08g+Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQ6mRMwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQ6mRMwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 36F79C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784560114;
	bh=WTr2piT0U00rr/vodDqQgqjnl0eWKhHj3D5+Gd4MNJQ=;
	h=To:Subject:From:Date:From;
	b=OQ6mRMwyH7+BP/zUTCIGm0ESFe32EZjzZoATLhb+TIC2L0l687QPoVxx3iMoLUk6z
	 PuZ4LPy6swlbE72ZsOSJ0mBXGWka2+3uKtRPxHep0MZzljWRuggyJ/ym0W1p9pWuLU
	 QRcOFI96Id3Q+dofk0enUw2asHwhZBqBdOnwTHkCqLEn1j/5W9edBa5+8DpbP+sQ7n
	 x/+h3/dbzxRJHqbD/CzocYL9P3P1t51RzbaOeNpyoXrFkTngKE/9CQLADWVoq474bi
	 GzDJ6GMeVTX4LeEdBNyVKyiif2yjCoRy0ps9Cn5qknlYSfcV+74gN71OoZ5Sz7KWBb
	 URXZLuMCpAsaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4CBBC44530
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456011383.29131.6539461171373456810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf36b7119f696e75900cd4d4179e696d6a8b3ed940e48804a2da8b88371bcfd
Date: Mon, 20 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784560113
