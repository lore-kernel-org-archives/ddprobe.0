Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D45E1D12E7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727886954; cv=none; b=b4D+oJueu99F+vFQdcgETZGTsRBJUUc1kLF5ZabrfJw7babkv5wRxeWs/foEOEdSdnWor4h4JRyNx6x2wZR6nAHWWSeCoZiihTtMItne77s1vh4xytyxMappEizfwlScSPKFQQ3M19qZZvBsLn3ikB+swKWIU11PtZ6eUlNQ84U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727886954; c=relaxed/simple;
	bh=6wRwimMALX+YlUTqmQ7n+Pp2qnj2cMgTnoFBxuIe4G4=;
	h=To:Subject:From:Message-Id:Date; b=EW2TfUfJEti4L6mp0MzQ/3Fqqo7+MnnvB5jGxsa9WaW77qfCskrc/rQpWt2xZU+lS/HYxFjR4odhOEnvBzjhXsAdEdcTmV5yJkQSGV8jxngx1rhuqgvqHD1PspsU5U1U7/ViajAuET76TXQeQcie+xTdyiq2fw028SWuigw6WcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9xNYw/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9xNYw/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDF1C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727886953;
	bh=6wRwimMALX+YlUTqmQ7n+Pp2qnj2cMgTnoFBxuIe4G4=;
	h=To:Subject:From:Date:From;
	b=O9xNYw/7MrafFI+CSBrOVLbUFyAD9duWbUXMs1SX8YOelJfpLZtr2zHCn6KKyM+VC
	 07JCOvNbPV7GwWZpnF+GGeJQtAMX9mK0G7ywBrtVtzD9rOsdBzYRBL3pd8N56XxDW3
	 osKg1KH9mpEjdNtJXcObeVlC+naJ5xJC4R2Xxbmb468s3vAC8XudAz5mvV+ioBIKT8
	 ESy18iZwFrpRxW4c6I63cOn65G3SYirnMuK0C+GVfcvOUxAqzDnvY4x9QZ8smpkzsi
	 m8IwGBpnnnwTpeSvJ/msO5Cic/VC3+mM0ljrpyS7+TePuqhv7tmRUDa2HPfbvVOthk
	 dDVezfj0aYPcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E42CF6D3C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788695360.17324.11587420964293034396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27986ee5c1ab0f98cc3a4a8ad61d6bcfd52dbf92ef732a33edf9a5238197cd75
Date: Wed, 02 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727886953
