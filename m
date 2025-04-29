Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D68A1EF38F
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745970594; cv=none; b=lfXDFOLwGToQs1AYXqYK6gi6p1j0S/PKyKT5dqdrsZEJcu6A9xWDoH18ieAvzxEjvP17T7p9m/C1FCu06okrxW+pgstTUeF30FXkyj2/uGp3uYHgC0vHMGuCsrtU9dUaQGUoU8WQQQSlVc9KNoOBnkQpiK+6IWJs2LrIxhHROgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745970594; c=relaxed/simple;
	bh=VPq7PgYHuXks2/pM8PpTTg87aEXKN4GYYdMz5s2fzzQ=;
	h=To:Subject:From:Message-Id:Date; b=qu/IUYutYslhJo7iYPpZnlwYtRQIiRwmgz7lWq4t0+zrVvsBHuzXBRyJBOlFJcpN51pPGR+iF4byU/pqFve735ezDGHJCGfBsexkbmn/LqYZSRjrQkI4biDH8iml1vsxnP8DbfUzqGp9vkvFDU6eYtl/qRwA/yXjA96XZkPYumM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwPZwIv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwPZwIv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F170C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745970593;
	bh=VPq7PgYHuXks2/pM8PpTTg87aEXKN4GYYdMz5s2fzzQ=;
	h=To:Subject:From:Date:From;
	b=UwPZwIv+5dw4rWT1HAriTxqhV3l03GfGMGz/BB3b5QAN6Dph6glBcyc01DfpSM5WX
	 bjmzCZn9hy6+3YkSV/6AQtH6bgxrTZXgkadT6iLEfkK0ELOrcq9EThZ/7iNclkadWi
	 ZF5JzA5dJCW5Zqnm/QtcQjHa9h/Arrz+bh1ZacZhv697vc9q0sZXJRnA2XFai2ff+V
	 7LRS+0X3oCxfjIRELxS9LNDPAtQ3lCflzjU5wxowvuqjhQ4wc2bdRIMnZHQYlDETJ/
	 eOCmVayHLuKnFUpYUY+lWEnQSoVWmVzBBolZysbaOW459YxoaB/0/qdDsya8J1UwAv
	 6QmuH2BOP9EpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F160C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597059357.12171.16580795961641816590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c662375681edc0638c6be9e89413a68ac821e591c95723121e4ebbcac48593
Date: Tue, 29 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745970593
