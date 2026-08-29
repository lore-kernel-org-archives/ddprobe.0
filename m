Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489A2310652
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788014434; cv=none; b=XH5ko4oW2NPJl0jss/0dOF5/E/Ay1qogxCZqDQehX2vd1BbykS6kO8eGUg9lISGsabF4qXavfU9JjKqzbv+85wLuZTm8jE0JbCSkd6ONELNNek1xQKNDgAO4JFMQ6GKb31OpVgj3TsxRC2ol5i1Gxvb5wpxM86h1KwBFvgv/VQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788014434; c=relaxed/simple;
	bh=7mjcAlE332CPcMxc0NctQHxCLclvsAj4lZSKC2HS7Xs=;
	h=To:Subject:From:Message-Id:Date; b=hkz+Eu7CiCg8nJyUGZfKF8X55aJVCiGZvPqQ/Cv0f1+j2KGlDq1qiiMr41a8MXTOewF3rWRZ+XfEqSkPdK3RaW1fBmVZrs/w1jfF3vI16wonhpag+NsyQwr9voGnhanZZWH3Qf8LG1Jenv9W/qFIneGu1Abb1qWqxd2k15zP6SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrCJrGun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrCJrGun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E9AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788014433;
	bh=7mjcAlE332CPcMxc0NctQHxCLclvsAj4lZSKC2HS7Xs=;
	h=To:Subject:From:Date:From;
	b=QrCJrGunj+CycHw8A0otYfE1edgNZWXyYxwCQ9wCh8UDpNk0bhyrMIJrBvAn7JmFX
	 8rvNeS7UO9yQQGNH78a3EdVn6CohVNdouhN9yYUI1BOOqyg6kk9LwmrShCMiyIjcb4
	 LfdQWqr2cjIQqyOiJYZaATnUIvDP8CrGlvYQzRQMsRxfp4rJ+UsfwDCNn2n62gKmRu
	 OEgWETHEjNLZAPBIj6hC7iu1bbvlwxSf6f07STweHV9FOydbekShB+Brg2Np7qbtG7
	 R8knLfT/vSCi6X/L8DzeH4vuvgv2PclZXZ4cH5KQtSrvgEsMAhTdLY57JBCx0f88fM
	 0TVmieYQ2rFRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F4CC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801443369.31316.14425693621982506306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23563522bddfe49ad8f65b09d3d729c091365159835a47c9bffaa469d28614c4
Date: Sat, 29 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788014433
