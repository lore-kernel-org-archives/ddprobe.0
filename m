Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B94189F57
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743877794; cv=none; b=ICVmCaZ+DAggIaqPx7aQgHBm4ympsHt6MvW4snGD0MrDyPwBjyxjEQ2I7MyROztsgbbDsS80LtZDRRgjoGDw5zt9F6nKo3Qi9zAXFhl1eMinlpBX3S8NFDJjCTOPAmOBVn8+3v22ItxZC8YNGIH+L0sMZU/kOCw+gw6iTrqz/ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743877794; c=relaxed/simple;
	bh=wuN+ClRtQk6n3ezuEn6U8sGh39KfrYhUzdwUjYfAnyU=;
	h=To:Subject:From:Message-Id:Date; b=JdEX/dcc0muTDYk7lQ3LfoSJyJyvMPsLatBima/aAZ62gSOZGjJnswvzqeNS92PIRaJM6kPl4a8CipSO+/DlgL9KKWbcV90TrBFA7ZwkFXciG2QoaK8K8ntmHzNb4Voj1XUuesTxhNe1xMhXxDlLsVEY6Zh3kt6H1tUzQTCl9+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4shcqpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4shcqpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECAEC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743877793;
	bh=wuN+ClRtQk6n3ezuEn6U8sGh39KfrYhUzdwUjYfAnyU=;
	h=To:Subject:From:Date:From;
	b=B4shcqpe9Vhmo1Lu8w/9RKX+vMm2km0RPZseaR4buJ0H3L8XV94HA5s7Uy5Ql8k8Y
	 GqdVSmBLPCSbZiGqNxIS/JbDlzDuVCbi6N1sQ+/ErYTc/Y4L0EI2Bbivc/FoYY5kgm
	 qIQ15vyOH+6EC6pZfdEgWkEh32lqoSdzhEqfwuLzCN7PiueUU/YvH/jYQeZ0EgafrH
	 r90uDm9fo68EH30F9uk7QeYzcW+1Gxc1PnrgmStgektn+EyiZLJM/FX2A1nWwXXee6
	 kWMb3IxSicRk6AoK1PUPEzBHj49B0Jneqou5hgn2TevSytufDFfpRwHv6Sf8vzkb2H
	 QQygLz5f9Up5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A85C36018
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387779361.13491.1327156257056069174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a06e62909a9f3817a69698bb47fe0faf0f0f85486b55c736bf2a0c3e20f3f2
Date: Sat, 05 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743877793
