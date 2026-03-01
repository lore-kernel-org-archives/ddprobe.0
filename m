Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5D14C97
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772345094; cv=none; b=MFHKbec1AqLOk/QzSbnygio7OhTG6e2lLTlm9dI1HAgI8N72OV5nWlLSt8iBrAta2rKxtQX7uwYz6fYuKB6Vbg5DbZZ31wJouwE+Dq4So6QYrO83gTo8a00MKB4nXQsucxjcRJ1glbxe5z6+suaifDRKUKfmarb0CLv0HuaMI0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772345094; c=relaxed/simple;
	bh=OgtwW3oHlJ6lM40VbjUL+WAftEP4nB1peecnZaXJ7xQ=;
	h=To:Subject:From:Message-Id:Date; b=GLkWxo8tlGIZo1Uyo+7qjzZpUd1aFf+gqulsgVcsBQONKfi5Az7Qkf8rI6W/qSy0d7cd57HOBKfNXjf08F3gtISUBCVQVDTh9DK+rcR50R42Va+UyGrCZzcCnuv1XZNx8Ebjd7QEYpKitG09rp3uE+9zHRT5hJBa6bPdxXJ/2Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnz6tdHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnz6tdHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D75C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772345093;
	bh=OgtwW3oHlJ6lM40VbjUL+WAftEP4nB1peecnZaXJ7xQ=;
	h=To:Subject:From:Date:From;
	b=cnz6tdHAwqjQqFY76cINr3KFrHYwzphIxqAqDVZlgm1rJ8NQu57ZobtTsPY0+OTxO
	 yQV9eK0xZp/Q0xOgmor6YAHT4xW52z0n0hcMf3b6GRSjPBvaRKwAylW1Gk4ylstG7F
	 INcZko5t518GeZv7mDOnmTGPPoYAalnF1OK9R+D286w5LdTCD8xljZaNp+VH8fsQ+s
	 /taTr6K81KyOeYyR/ib877P4aZFMT4pW5Xk91LKHWekwZ9/GK8B4G1octRRy/mbTN7
	 35GNNi8apQsuqtE/LVRCaEVqeq9ouwkzV4wCwCE7YWBoseaswLyDUQT9p4SN6V4rWj
	 Ohc0uRnIZU/Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D471FD0047
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234509361.30807.10529135373737403512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8e8f1f4dbc2df55be7d78aa54e97165d25ee939f5c676a1b2cf6aa01f87dc6
Date: Sun, 01 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772345093
