Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694F92119
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719088943; cv=none; b=DxyyQKri01XzgzW+9uXfetP925ZyCIIiHWL28/hfTgF5B6qHEqqTowysCqxl6KbVyOIrioAh54qwdVEleGCqd2bmeidtxJ/gT3yG5bGGuNgmYkQ6di8dt2RLzkiqGIfxfypcLe9H+n8aYqXg/LcxvSab9uwXdBZNsdhuAPz+TUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719088943; c=relaxed/simple;
	bh=bOZEkqO9xRW5EdQZqHqH2zuoLW84Uwosg29olna7D9k=;
	h=To:Subject:From:Message-Id:Date; b=BYad7eoz6xoZNF1ut1br2g0Lba32FzkDqCpDlgRwTQsOSji/JkYOwkwoGBlBr0EvEA293vkwzBRIxaaVVUYO9KyHTf/Ux5UpqpfNLrwWTGYNx87nawooy8HrLUoQS3HhH/B23Zkh+L2OlRoSG+af3Onva7wKw/W19bS7eA9IvAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1wArijK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1wArijK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB90FC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719088942;
	bh=bOZEkqO9xRW5EdQZqHqH2zuoLW84Uwosg29olna7D9k=;
	h=To:Subject:From:Date:From;
	b=I1wArijKGAmqkeChxTOe8UcOI5ou8YZAfcjPKTDGjA9DxiO8xi6c2nzHOTJkydlJL
	 u4404P1hUDEc8KB2E4Eft2FYsoNL7OBZo7uUiE/3RtM9qw8tsKuBXoVNAJT5QY1xVd
	 foVwKqSJFSEldXoYYIRLhAEaTcPFjfnMNvg5z42DLzloOQ3GspYa2lYLsOST3L55Gs
	 Dl5VrGbKinMJl1aODannqjZwUI9FBO7TL29YumR/91Wklgg5jTsb29ifJBIZyVmJlP
	 ChH67MkOnkc7zm+YJQyoH2zhLvNjyzeAz8GnYnILJLejnbb3jUnY57DjB2g8izCSgP
	 kEez08GAwbWJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C700BC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908894278.17379.12596404317085515148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33b69297e24857a196725588b4fd7c1a6e4585090830def942203d818ae52f7
Date: Sat, 22 Jun 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719088942
