Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289E23A9014
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775725534; cv=none; b=DxoS1wXhsCuBfm9xTmXulmep7A4AkCITM1CmEQr8U82Hg50hjEquiu1xQlWZDML0C3IwgBqmFklqT3vz5stETb98k9TkDJt3Ppm3LfwcxK+R6833w35jMsan41Mc3NExx76s0hpN5aj3cHTw1Ov+ACQIf5uDblC0TYbVVCyZQrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775725534; c=relaxed/simple;
	bh=DhIuMWb8eDAkqO/8qb10yMTDTE1I2N/Ov+vtf6+Dg/M=;
	h=To:Subject:From:Message-Id:Date; b=IvZhXHWP1G5x5zZukJKd2EK1GyT593ca1yK6Le3j3czJsjUNE9EmWwMwZeSFWkcNxmEwo9PMWCc+oycDuoitsyjvrahnt6e+Z998u3rcqv5gEZe/9Z7/kmIWyZ2GARqcsdBJjKND2dw1zGN4gwW30HFBeNjdbSuUqZGbs/ei90Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/x2zIOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/x2zIOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C562DC19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775725533;
	bh=DhIuMWb8eDAkqO/8qb10yMTDTE1I2N/Ov+vtf6+Dg/M=;
	h=To:Subject:From:Date:From;
	b=u/x2zIOA+vdaXhbb9Z/+fy0iETC4B71pjycYzc2GWImf6guQ5bFJ19rxEGMmygzqP
	 aV93cbdCSwGE1IXjdTAlR9z17JHZ7bI4TcUoYRXl55eKXZ36OB08YDQbVSf0h82QCK
	 Qj/p2NvHQCTG8MvjFvEEBxfTybeYl2zLqey6SEW0tccwZwFy7LotmdhbruM3mcoceA
	 /QEh2HotANDGNZk6jZXiYaoGailccdE4kzbOVEZRkeAeb/xdzP+Bn+U93Sd9cigos7
	 pimRJ5xnwCMk2KzM+A3qjli7LZDK1rlXGf9XgBNTiAyw1PatR/Dy0qdFmjyiJf8oP9
	 yb+SXyiimZ+IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E11E9DE6F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572553372.16857.16361199372967545842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e42da00397c61391d94df11a055b59bf2a6ac748595bddac5fe83725b716e4
Date: Thu, 09 Apr 2026 09:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775725533
