Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB624654E
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715544743; cv=none; b=ASd0rhgBB4ZdLuLHytuRErlE5BhGX1olxr7Gr9jTnGwhXabyaAbRDz/vFX40mbDHlSEehbF5wUTT5A/fc2TXcBSWk9riI9J7Hq17AHnOxVfZPdf48w85nMUNrQadevNJF6gCPaNKcdraaSzjP+W9KEVxIzOzlWrabjDvb6x0U8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715544743; c=relaxed/simple;
	bh=YX9kwIeJiQsXsNtBnSwcWEOs8NNYTYzTtB96+dE4fXc=;
	h=To:Subject:From:Message-Id:Date; b=dLrUHgBwSZnoOsCKHwnmnBWDTDKKFjKvtUXpexKOpMNm8qE49bL5ACkVZs09nzmi4yRwX943hZm7BKu5h8Cxnu+JcQh75JOYUPL0wrW2Iumw7mmAVSrPrkau6XmzYZGtTpvuRE4l43gPWFBriFt1hNM/+R99EO/tj1mG2qgpjxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDUhxllQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDUhxllQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C9DC32783
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715544742;
	bh=YX9kwIeJiQsXsNtBnSwcWEOs8NNYTYzTtB96+dE4fXc=;
	h=To:Subject:From:Date:From;
	b=MDUhxllQtge2AxlL8jNVMlxT/CfDkYMcA2RH4DBDhWvRmVefRNqmegBVfDI8geJHR
	 BLt19c6d+OqZisF2jxUO2HNZEyO+GJg7D4mm7sTaHA8gF3MNs40CpffCZNhC5ULA5e
	 Ocq0Jk9AVUJaMOAwkJrJTiRJnfrI/0iN4Au5CXg3mKYx4viZ+gO6/gM8viW6Z63w4I
	 HEzB+tS4/dg1ld5Hin+WNISjPzDvphykoh5LiTnrymG9G13m4JFGxi3yfT/EMjOkib
	 NKpN52gFmjjFNOykhrnsTefdLnymrItYDcIME8MGK1PpuZgr5+UI1mor3+em4qoy3r
	 dZvEj5nj3Pxfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E11C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554474275.31941.13633480520251529711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20fe2d77001ab26c0c2428020083a8ce2447944e28c4ef1c5bd77437ab98af2f
Date: Sun, 12 May 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715544742
