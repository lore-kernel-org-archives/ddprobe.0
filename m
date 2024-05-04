Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6525FEAE7
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714794743; cv=none; b=t4lX66QQUzKLCQbKnlQAsQ3r7y9c916cQPl0Du2SBu/hUsv0rU5f9PnjgIYUmzGvja97w+y3sjNMS9G7Cl4FasJNshXpP1Z5avbiVvRsnvqDu9nSqgNxGEg7Pu6NDv//56cWyPJwikBGtbE03scCAH99YZKKuTJaFpXbHQtWVK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714794743; c=relaxed/simple;
	bh=qgylXuWSn7mOiyiBdr7vOger7b/yQHaCNodBjYiu89E=;
	h=To:Subject:From:Message-Id:Date; b=RcMzRFmidFazulWhgJH1eu7qpLJ+BX/ZPaALOixMRxlbkdrMnYQ5fA+0uhYEU3mD5GMcJHbvxlQQhf6B+2L20V6M2fqWA5d+Nex6/y0sKPI2VmJGhr1MXDxWXYsAGX65tmMU6nRxynbop/7jY6t7h2KShD3hmlJZridUdtT1QK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJJaFrHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJJaFrHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD96DC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714794742;
	bh=qgylXuWSn7mOiyiBdr7vOger7b/yQHaCNodBjYiu89E=;
	h=To:Subject:From:Date:From;
	b=ZJJaFrHp6Wp1H/8MM7gOFZ7IOuyA9zMy/Gs7tFfljB5VQDfA1abe0KfUC4+LmduHf
	 AgCV6AaX4nRX339ZfmzyoGgiDFC3VVBbsWcHZZou/OugYjc1jw1FL6NbtA100P2ZoE
	 CNjWsqsYjM6cCp4MGZotI7WVMNODUWowRuak3v7/F8weoIak+bjFMszSmv52aYyBus
	 8nio4m+klearjBTb5Ijpu4JceHxXjb4MQvE1VcWZ1ylVUZjZNBw7qsKlOwbmO2TumU
	 I3OCVbLnRwlX0lWSS3A6JJmtKMsJinyzKHqDDJx6YVFPQWQzJnk0cUzVWecXp76SX2
	 /2q8PXVrFqpAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41B2C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171479474276.23101.17892359785648514008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe2a4f06dba51dffaddc4892bfd4f071f5054b98feb37e22577e0b73d424a30
Date: Sat, 04 May 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714794742
