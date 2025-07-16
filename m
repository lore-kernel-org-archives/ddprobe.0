Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B814A06
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752624594; cv=none; b=pW2oNwkRZXW+r3C0qgj+xHcktBrxJYpET3mIhFyQ5zxdmEUTQxSV7l4E3DqWWbBonKxYq/LgAqljBZPU91uNVOvey7cUSNy6+v87Q2PlpAGKIM5DJ3ETR6+m+gklzkFy9DURD/Fh/wDyQR077yEj0CI6dwJgOh2XEEL+58x5KT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752624594; c=relaxed/simple;
	bh=dbk5votHgkMMrvjhCuCRdAETpBK4ZGKnkIK3Di5Qn/0=;
	h=To:Subject:From:Message-Id:Date; b=o8htO2zpRyWKZCXVGM6McPZn1IcdME0C7nc6CfV8STqA9rHJuEoFGv3922XJ2xLMcqFS18tkeMEx9TTtauVb2zki9pate1oWuXKUPMLU1e4ARWFalB6ON8T1UHPAnQwRGyq3omE+HiP81qlnfnG3Wx3Ajn9/gMuJ5ZUYRF5oCq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoI6maTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoI6maTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CACC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752624593;
	bh=dbk5votHgkMMrvjhCuCRdAETpBK4ZGKnkIK3Di5Qn/0=;
	h=To:Subject:From:Date:From;
	b=RoI6maTdLIkRAo1jrYZjsMv1TwEJ78Y/jLd0m3tbrfHYcpeEJc1WUFbjRFlQOG7Hi
	 /cLZOC+DLpg0PghI8xsNs9h19OHPGhs9oBC57sCkS8zk/ScTrWV+49aKlixfzIBdPA
	 oEPCgYDnQQbFeNpXln3vTeRr/rQJRFqF7tSUsTBTkGaY0TliLSAGmkpqbpK8qdvXuZ
	 1oF3S5sOC90ORmjZa4D6U50XotKPesNVmDz5ez+fMtwSCryF/aLNn0CsvpfqFXwVjv
	 KmFaNtZRUVfw6dcRcL1pGDvdhOgO33izq7SHNeWT5LlwPOHBc7/G5tTxZncvu+3T8k
	 6JHyy4Fyc3hcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90630C83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262459358.32462.8048382564898787648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f74c8d231f6dada81b40b51a45b140731009e6def9b2afc3fed3c629554e557
Date: Wed, 16 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752624593
