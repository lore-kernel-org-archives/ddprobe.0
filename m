Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3905B2F43
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746695994; cv=none; b=XJKAO4NeR4ZafP1ToLrWqVMGi7ety9EJw26KoMDYXIbfTYqYUiBlG9nayEEjar01JEf8yhazvr7GqFMlrxKb5OIHmW6KIePaw/Gt8snCE9YvVsbZdj4j9b7nyOiYURwAluFc0dpx9kQQ+ou1CWq5s+SZjI46hXCbENOq+HXoj54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746695994; c=relaxed/simple;
	bh=vsrqqlDQh9jIFUH8xGPzEnX/Mb2fQYheE+nqofXbJG8=;
	h=To:Subject:From:Message-Id:Date; b=d9kROSNUMHk1f5WIIQsKIZ6ONMukzT3Cebvb6Lw7yUb9ezjjQigOQJzalNX4hDAJLqA6gFX1rvRB5A94lYkQnWJpMDGRPL132Fqso6P0Ino2A9Q1LP+z6bk0yJb4AAS/caWF4qtcdFfmpTTdBs48vqFMqd93Izbt40inDNbt8+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kd8iDJZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kd8iDJZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09CCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746695993;
	bh=vsrqqlDQh9jIFUH8xGPzEnX/Mb2fQYheE+nqofXbJG8=;
	h=To:Subject:From:Date:From;
	b=Kd8iDJZQBpaEJCZJUDiuuaTc8TXsD+v5wxPS8odTi+zP7qBZ0giBidXjgktCfSnaJ
	 2xZgs1C/FqpBB7tkjxtQ7Fu9jPUVtr4EB5mUNBYMQMpFnlg7p2k+gymKUA3Jd47PCN
	 n5IgbE0t6JkRNCYiWue1bR9ReffNxCNbq8SG9T0S22aLuCU9Kq3b2yx+xppEKBWsXT
	 TbTyPlH3g5GUZx0I8HOOoXwJIJ2R8k5i0P47CZsZXNPHQWnFA4hVwRBtq+/GKDfNed
	 gytJIqDsOAu/y18TBvj5+22DFD/Oft6QtCXGs0ASeuM0yNLz1Mlvg/1zWmwpT1Ua5b
	 OAZQUy85RXUwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2F0C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669599357.22599.11909296602508098363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c182a8b1e64c86013e6bd8942475d19f28c5cc31d8d988fb1d9f4c97cd230bfb
Date: Thu, 08 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746695993
