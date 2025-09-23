Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4E460B8A
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758625194; cv=none; b=qIzzD2AC4Syb+KGZ7YUQH22/XYJYIMxk4cP21D5SjEMeXeP5OvWjbw/4qfyywVY2oqkDcmH6c3oi4xYxDTQq7NLIcmMGTw1cL1SEnzRxyIHlNT/RgnqyIyyXsVqULA/cZp4wa/Q3vyX8MqL2fMQlAcOqEGX7D4DfSxuwxL1fWRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758625194; c=relaxed/simple;
	bh=aK3a/aaFSD0y9cBtiYN7qDx6U21vio9SCCQ2mE/Cux0=;
	h=To:Subject:From:Message-Id:Date; b=SW+C2mJlVEMGqz5OAYDpV6+QP5B/vNXZDdYV18Cl1YLlDOafzU6UneqvZ5fd6a6gfIVLOEWYroTUIuTXT3NsqnPQ5aUb1XL74CXYiK7XG4YTczEuSmj4UO7mESFjFSBEi2b3G7teRA3XCNO0MfuWziVQ5ljHeEa73XVVp3cpoi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Teq95Zlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Teq95Zlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1685C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758625193;
	bh=aK3a/aaFSD0y9cBtiYN7qDx6U21vio9SCCQ2mE/Cux0=;
	h=To:Subject:From:Date:From;
	b=Teq95ZlbtePMkHmZ3BWUockeR5hBH5LRrBklddcBwxUI4/3MdgLzVpfNPDlSDHBS1
	 uKy/YURERuMH1TUSGZTieQzQ2ggIazkg0jgozF4wfgg5J295VePB/Uo1ZHV4ELRuyH
	 1FB1K37q5R8ECLOcnppci9DIKT7J6c9IamgnDELIMcbwQmXkYf5ekrPMm+7i28T+zW
	 qS4U6NpUpPxvaVO8bDmpPuagXg+KfXNUqaq6taiTKd5lruaEHTteQDQ1H749+LMlIe
	 GVA6QVGPRu+IaIzD51qeeZSyW3KNzZHRU5XyAvcdFhAdhviRrewCj0YBHRqLWE+ESC
	 O2IdOU1XzB9ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F09FCAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862519357.10992.3947144839024852772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddeca313a506bee8b86a4e876b09742aadff3a60e3f6d799f0dece9e46efa528
Date: Tue, 23 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758625193
