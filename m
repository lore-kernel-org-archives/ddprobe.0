Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D138F8836
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744072193; cv=none; b=cjKv1AFBwn2Y0klu45pxOv9zze040p1MlaHqfEoir0mZn3WJFB6cJQAF8MoBhefYa7WqB+uTm3jHLzNHEvhkzHNfyuDhgnsOGTay5HhIwuqXcVQLSsFpXra3puqkSZ0bvuco7RHlavf05F7ouplQRzibowkh6e2EkAjtKuTcVuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744072193; c=relaxed/simple;
	bh=HfMejvPjjvSFX5cmWY/782T/KiH+9FRoTeGsIZHaPTs=;
	h=To:Subject:From:Message-Id:Date; b=Z9wQumLyLtC8psRId+LdLtGk0CmZeQrEZ3UVQj1tzUl1/j7e7mV3XdKoDyd5aARKVis2PfYF3ZAJjP3Zy5fXZgqJFWZ8zmM5u800CE1iknpvhUc6cLcqSQ6hjvmYhhkDoBKYxvGz5IYiNsZ+qFsoDUVwbuMw05Z4pGv7wVYQ1Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKF3CRTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKF3CRTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42E2C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744072193;
	bh=HfMejvPjjvSFX5cmWY/782T/KiH+9FRoTeGsIZHaPTs=;
	h=To:Subject:From:Date:From;
	b=fKF3CRTYRu3EnH1OmizLLX1u8qUdFchs8RSMULrxMrhHfx13xL3MEpDtsMg8tjDbZ
	 urm/gwPsOl+64nq2a91WYh3sC9VpE5uQJF3JoMVfA7BTLG/7BMbUkXBouEWR9bKdLn
	 mO1ATAiLzKcA29FVyfd2KqBcLF9I9StvurSWsEC5pBj50wUjlTHrbKLzWgXqahM0kO
	 xgJbGtjnlHUOiki9Cc4OvmrpIY4HVzr2Wj7WqQz3Dk3nstcfdcVuVDzNo39aQcSfqj
	 hTelYPiqlriwmAGFnJKruxKRMS+PWo5FE0emMMS5UTFKJLt5FxJTRXh+AXfEe2gWed
	 JjVtOlTD3lQRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CDCC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407219358.1627.3073033587582502719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f09625b0890840b832de919b26ae0b3fb6a121d2118d8f80f50fb414c8d48a
Date: Tue, 08 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744072193
