Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEA624EAB1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755548994; cv=none; b=fEf79CRmJPgE7GlkSBHQDIXUx7byUmKanvZ123tACcrm4CrznQFFm7JslokKtKKyw7h+N4dQCbaEtxBc38mhvMvHpbEbrEz1YtWqt0xgNa/evaiClT3CunqhN1gf/GqlKUHT2TwCz0lU4aRSWvm1SWLtWHjKflASiGu3XgB4GKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755548994; c=relaxed/simple;
	bh=1MAsMfgHMm9YdhVLy+QBuTa5425QlK3idAAeNb77BSU=;
	h=To:Subject:From:Message-Id:Date; b=qpgL6VrIRxAivlBtAxhBSZxsjUdYKwrHoJexpiF5+s8Vvp7gltbbj+oOUsNoUTZEvypBC3kGfTLBM8DmGzr9p4tivrq6kY3ZX5pZOun4Jm8mT9AeBe3DL6XG9VkggU6mmxQ9HrF3mDw4iN0BhclQwSB3L9qJ5H//dSTHDEsfTA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVLVHb/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVLVHb/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFB6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755548993;
	bh=1MAsMfgHMm9YdhVLy+QBuTa5425QlK3idAAeNb77BSU=;
	h=To:Subject:From:Date:From;
	b=aVLVHb/BNnxMU2yy7NUol3QDyof3jzZ0uMjg4pPzbXqNkA07XZ5RTvuxPXwyTMDeb
	 g4s1mKmwSTOK5pK6/x+yWFC9fjQpSBWdGUKcvA/UotRT4vlbsO3WBj3P7PmSOa9VBj
	 rfD2OaPg2pVQUwspGbkT1lz8PlJlmKsAoa2cB8xtfNpN+8cak4nLnGrCDVmM+0TZw5
	 VDkOv8pKWcbTy4iWza0/MpmwOm6LgIG8+CWxXr29pglWlFxdGObGAXHf4i8x23zZxO
	 JnhFsFuwL7IK8BkzTip8wVXACxbWrbEkqq2lFJGOCRXt0WjvtjEszl/fYd5M3MC5Hs
	 psFDRDQL2dNpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD8CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554899358.9315.641949052581554110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f277283953435f03dce3dad4dfcd1a2f6a8176d1b126144477f88cfef5aa4e8e
Date: Mon, 18 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755548993
