Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B143134AB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762595394; cv=none; b=sa+FM4epGgIGHU6iJzePLNWKVm+GmoyFueDNn1j0uQq90NIajnNuWfC+0WthSKSd4a4AyW1/3gbVR/QxQEiHSSl8M7Bur300cwD7jAcnBzzdKq5mhQ5TYc2QRkIU3CH3ZMKJSwwCCtrR4YoBb6CUrFsRfsYE9qXXMZdmZwzW8Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762595394; c=relaxed/simple;
	bh=ngIuWW2Bj/sqGXugYP3k/uEL7iScwfnkkgH6qfMC0tY=;
	h=To:Subject:From:Message-Id:Date; b=FaWBbCd6jkOyYXUaEEuX/0S184prsWzhj2oVWGWuZcuYHmk00lmVdaAn5bcJ5+74Pky9y5zfaa60p5f3KZ/G2oWEDoBGodggpHX/y9avLT4w0q7Rq8Wjx0LjxQMnCwd120jb8CqV8i+yyc9mJUhQd7h1KPb0BB7X5PpeudLjNt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/4cgPGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/4cgPGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CFEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762595393;
	bh=ngIuWW2Bj/sqGXugYP3k/uEL7iScwfnkkgH6qfMC0tY=;
	h=To:Subject:From:Date:From;
	b=V/4cgPGgwA8A/KV0Go66Yjmv7hDYkT2s2Hdhz0PAaResDVWlfter6kiAPXcTKk7AZ
	 qBFRWaa1z63B2C78n1pJBsrjVbLQ2BdwPmQIyTNzgbhZcq3+H2+U5/h5b8g/A6FRWm
	 NVed6HGY2d7LtBrc2AJ7DfLu6/vDDJ4JpdYoRZC1UwoxZQqKFvc202tQXbvkOJE1bD
	 L47rS8dBbpLBPSC0I+EAf75vzlYhepv4Ifb8ktCLzorcCHgSFx6so3SMB774v5mWBd
	 0EhHck5NdJ9XURtXEr9806kq4aBNj+/rWArOSgur+KxIsejpJxPztfIenQOATEkGTJ
	 2WCq4bVVLtfQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A934CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259539361.29038.8088632105148676483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3b1077f72f701a6262fab0d07e4315ae75c9eda4982213bf92eb58fbf6ac82
Date: Sat, 08 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762595393
