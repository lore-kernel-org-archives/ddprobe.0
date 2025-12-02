Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3666728727A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764672774; cv=none; b=hTrilqPBzDSQUEmTzzfhVHpMqtxvQyNVwUv1tue1mAPnVG/JgL65HXuCi0XB0+iqcYbTT08XHCabAUnvrBw9/IZVm7IqNU39VgGvORksH70SS4a+Yx2XE7x+oQ0XaOgsg6Bco8uIcLG7aQwTauRqbAY+8dzaY0m8sKFJvp7CB7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764672774; c=relaxed/simple;
	bh=notZiuU6uRtFoIt7+bkPOGOoq/CsXoA1cwxuduyckcw=;
	h=To:Subject:From:Message-Id:Date; b=ZnPoVrhhYhPt42f0DlOIj2UX3WB+Qbbj0mKfBFENTSLw5hNgMi8YvUllMQrOkicg7LWf9V9Wr5by3ZxKH2ZyxGtBBSvHAgB7O+Huy7r6gbfyoHvXKvX/VRA2XindrwyzWf3sY6NPc1jAFgtbtQbdPv6JW8Anmz1x6rCb0wYDELY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEWOAvGS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEWOAvGS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98CBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764672773;
	bh=notZiuU6uRtFoIt7+bkPOGOoq/CsXoA1cwxuduyckcw=;
	h=To:Subject:From:Date:From;
	b=QEWOAvGSN84f4LvIiTCKTu/yB2vBO+o6Umcp7AXM9S6QkxPnD4Pyy+8duUpa6d4rw
	 B840siH9MJjNF5nhHg0GQh83YpDoX2et1mt030ndU0GZUgHOi+jl2sDTGgtv3LcsNn
	 +PNhXtd4ABBBVXeT4HTDPxoQME/dJb8KZbqjwf5g6PlTwGfVXXcxmLojXW9r/8xwNk
	 i4fCwlB9FtSlGwf/SGUi7zWXVCNjzaDQ6DOcMx5837P4pA/sDlWplriC5CxerS8X6A
	 re8LxjAkK4dpdwqesilqBOLDP5TKedS6Gkcn2TyPj/LaTot8Q3akY2WgEExSFyubUZ
	 ZyPzH9e2BlTfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97057CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467277358.20355.6935677758267616564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad181e1597aa2f19a30678c8396f43c18a7b8363d94f4e2e70d37a7d29cdbab
Date: Tue, 02 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764672773
