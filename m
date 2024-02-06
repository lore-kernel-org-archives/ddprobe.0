Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4D112AAD6
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707209297; cv=none; b=nXwf1pwLwvc/nzRPvb4EDNEVt7qYJje7d8HUulPunPXvo7QC1LXIedUyiabdu4lYuPXdoGzblm1Qo90F1HZ/oBLVZjMejBvDTHOtNalCM3HtPI+zhj1oLzvQPKty/yBQVNMj4E/YD5G1SmDBaaIKoePaSL2kW7ZneXZ18nRMdBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707209297; c=relaxed/simple;
	bh=LyFYn+OhXWdM/e/7KDcY8vSO7LQkAdrTHpdSbXPDk9Q=;
	h=To:Subject:From:Message-Id:Date; b=Lmya/8uwyjFfTIjyratig5BAVOgVdVY+hDcuzMjYiPMdBJbz3zRDLlBheoZcN+NpCJOMFVDvyNsbsZd7EEyC9fy78pPOKxYMdU+sRkOMr0q66tGDq6ZPtNRw692waUj3ntkYEiIuiLIK6dfHqWPfOe9u82espJSOXMvT8CPaIwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdrO7ICD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdrO7ICD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 880C7C433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707209296;
	bh=LyFYn+OhXWdM/e/7KDcY8vSO7LQkAdrTHpdSbXPDk9Q=;
	h=To:Subject:From:Date:From;
	b=GdrO7ICDdzjTixUAKN4IgM6ERMyXWNJMXyihIohGfTEoDhO6Y6a/CpCNHHS+9frFs
	 spbxE4RoMLkNuaLpaky/tmVi2tB0hjo+nAH8tmjMSMmcQu1yXSml+19RMTVQZquyiu
	 8Jta9OH4gh5SQtq8Ghozsc739kwugjMIzGZUbBkXoIqON2eoeSW2d9Ujt0glrLuHcM
	 jSvifwhVzyUsbW0bJuuYNvDGF9Doofi4a647TX9W9Ym7JPkyOML4Sq+Hp/k7kUOT78
	 R53DdLJLKDIWTiYBIi8F/ZSWZswLu2h6uYTbS+q+JtETDc1e8tVJX5m66LJRP/Qp10
	 GMuedcgUWOQuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71604C48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170720929645.23561.12978112340025008536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84271c80347ab5fcb842f395bb1751e4a1d85826425dc5244ef76a3c997e0d2e
Date: Tue, 06 Feb 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707209296
