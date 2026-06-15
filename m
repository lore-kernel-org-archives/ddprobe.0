Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCB73093DF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781503594; cv=none; b=V24qR7SiVpAJpQfDBzb+2qOR67P8se4djo9aeCE8QiCfwy43K5irZ9r64mZQolixYoMGGaGmdNK6mpcc9WAEP/Ey/DQzcUcoZ+sT8yuZaaT6fgNKhvwZUNt6a3x+x0J2uxRXqpGMmcvfAhHV9GebU7n2Ytdu9bwRBXUi2awH918=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781503594; c=relaxed/simple;
	bh=zlewuhPun+rfVVez1SJQNynodL4x9PslkRcHwIyQsUI=;
	h=To:Subject:From:Message-Id:Date; b=cunR9v+01tHBAjOyjB196g21L7Vhzv7CRRVWke6tOjISabmFg359cQ3H7/3UsdcjG4cYlTMeBuk7oT8omdKakk3HHwEI/eGS1gd7fF5x/R/gUsX/Nw7Q5PzkTU4gssdNVDF4kX3Tz8yLVeQL2JpQfIMBhkx8/YLY6xP2GV7NkJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wog++VMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wog++VMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56C4C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781503593;
	bh=zlewuhPun+rfVVez1SJQNynodL4x9PslkRcHwIyQsUI=;
	h=To:Subject:From:Date:From;
	b=Wog++VMAequQ9iAm6piB0Hc5uqH/7DgP4WIVUh4yXf46JM4qSlv9sUOAL/5whbu0P
	 9Hizisq6lwdLbp7vn1eYzuViWU6wauIRJ6CmZfGGq9rRn3qoWj3ZjVS1m6fIOs3FK7
	 kfsWPkSnDZRk5myDSmT+ajlQkT9B32F3WHhTO8dWmbDqPM5w1hC8NWKA8Aid84c7od
	 ZaLyO/ZMGbkrM/6wYdfzDhs78ExVBx0yn+R6VskPYdsrrdCe3JpoGdqxryj2hqOFoV
	 TPnpzFv8I2vc99SbZYoE+aBC+YQt2kqtXit/sjDmOlSPx00ummNtFrjP6L08FZlTDz
	 HYHgF/lPml2Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7320CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150359370.25655.11521111770537720883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d1c6a1becb10fda29afd10d248a479161776eb4f2f23bd4c2ec9442ad1419a
Date: Mon, 15 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781503593
