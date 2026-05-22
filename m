Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B0A38D016
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779486754; cv=none; b=D7SdUcDZwnawUw6lp+4tfO/kYykYp+Ygc5YVCgqbQ/ZVVNX21DRRaDGfKxO1uI0BQsl0+JB+v9/sJh4L1/3ftVggtZoDK9BOSND7WT0RnKbdhAyRE3mQbEJ87SUpjTPmD5LoS1XALpio7279co4WqW3dZy67HI5/mEaBSr6S1cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779486754; c=relaxed/simple;
	bh=W12WEYxtNWj4sa8M6/KUahMXls5SRVtorcK71QEqAvc=;
	h=To:Subject:From:Message-Id:Date; b=kEnlx700kQcwGMp3oaREjMcbGoFpAzxWhJ/hIauItSrqvuzRyTYBgnfFz5ItGa3vbrw1IZhd/VkqE7d+AwXHwdwJx8seQ0hJZS2N1xFIiBSxZ4EuCZ4P6Zn6MVTXXm17F9KzkNafxCK/8kQJ8oFcgetCIq6FKx3N2msxOpjDdo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9Z3bf8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9Z3bf8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBF1C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779486753;
	bh=W12WEYxtNWj4sa8M6/KUahMXls5SRVtorcK71QEqAvc=;
	h=To:Subject:From:Date:From;
	b=J9Z3bf8z5XWnuk9QxAlUcABH8LdFpxI1nCARfvvZKqkd8cJVB6Kxb45Y3DZ/278Q7
	 y/x0yUOwm/czqP2gk+axvRw/sHMHONmsNGZeQb4wL2B1hPinGnVvmjs0h/UeoWN//1
	 wPd+TOAH1Vk1NSlJVlp4xciUWIl4qc+7rxey4i303KvjIVuN3X2vsBMkOUoYvz0G8w
	 WXnRo0WIQn/KqSHe1LIQrghW3j2j5b5XAcfGKyrqXCb+eiO1yPJmY4mFmMVaGH28DE
	 Ln/uvxFi8XCrIoeaJlY0wa1aZZixMklb4AkspdCQJg1CGlzugA23kByBKklgijgIZj
	 ItGHu4yo8sTsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EA9CD4F3D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948675372.3387.16410118621749864368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e62cfa807be05b89c1b8d40eb66a04f439a0751c83b71ed117fd1fab61fc3b8
Date: Fri, 22 May 2026 21:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779486753
