Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C05322068A
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 12:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733747755; cv=none; b=Aonlvhr/onSH0/LfvRssILkpxouwjFK3Wo3PYoulIIpVmt2icAHpe6GJZPAaqxmH9Z1qPYhlDs/XgQYQ3JmgyEfceY55EiCAUoD4ply8IVzUtRwd58eETPla1cfxRPAHIoGM/AtmsLPFXlPqrqdx4lR7IXAgjGVr+rR81qvuovI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733747755; c=relaxed/simple;
	bh=9hpnrjadQk6jdCcV5LlogVjm0GXAtYWNilvJWkyYl0I=;
	h=To:Subject:From:Message-Id:Date; b=IFMfm2vWOKMoy7leJRjUTT8MUtTfSv/i11UB7VBv/in3i0fqhPwt9mJMIslliGEyPoJgzxUP0v9XPbIrUITqB4elx0FShPUnFZtEVgR/QZqzHgpGHLvpQ3mR5BDjEA5h6OZ5KzwjVrVXvpYgU9G0gDKVSza4+GTjZYIbDL8PUWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKtIX/Bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKtIX/Bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1A1C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733747754;
	bh=9hpnrjadQk6jdCcV5LlogVjm0GXAtYWNilvJWkyYl0I=;
	h=To:Subject:From:Date:From;
	b=bKtIX/BdGJ7Y0+sKBGNAZkmbb0Mw0ZvRest+AgVE9Z8Ekqf+O5zGotF89eUeeXJcb
	 Jk9GPmsq3iMAI+JIef282zdZJ04bOwKWIL9Chi4c1oyewKx+PeHGAR5wZyzUiOrs2n
	 C1Mn+aKgwBt7mW42thkzdlZC4AFMNf1uXxwFuhDvnlriggZg3pkgUCNGVcXUBTkUJR
	 +j7WJkRZCNBj/YdI90+Y0sda1uOOOyUaXoeRikeuyJ/3naspdaYzEWgMQvRlmIhVXF
	 pTUk1Ez+NG1yA86452CFCEI4EzMb+/YnaAuk2PZo7CX9CYwGuwp9qpE9+itoRK9yLq
	 MVWbNZsuRuCsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E9DE7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173374775359.3703.5326521510662868544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d2cb77c4a0743d58ef9155c891a1e40dc5a3f876484fd87474fa6e06e57f17
Date: Mon, 09 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733747753
