Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629AA404BC5
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790424634; cv=none; b=qQoqlYNLtVSoXzbPnM3V/EgRAKAbR5Mzv3rz0/AjyPEC6Di2hIoJ0sP9xW4HC2scRn30mZq83+4j1Z5lsRlmjo9x+dHAucZvMIw+g5S+t0BvminhGeHGuFfOqbYZhQFYc6nSt9Fa77QGBNpGuRmTNmzW/ZmlHBtDhVSF+FYgKKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790424634; c=relaxed/simple;
	bh=wY+mLrhk5EhuwAJAVT0wTBla1CvCelDJRXGTuPy9PjA=;
	h=To:Subject:From:Message-Id:Date; b=A012IMIggN7a6aADmSg9D0JsGgkCS59725Ey3krs0Zty6yvhcmoN5IHnN36M/c7RolGb46Z/FljbSI256KiWf5k2XBUMuS8HjSSPAcCZOh1udH9rOBiOCVwzrBQguucWR2FHpgQx/jwon+CZrhGbLotsiBbLzrl2BF/l50fqegs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOe4SQj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOe4SQj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACC7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790424633;
	bh=wY+mLrhk5EhuwAJAVT0wTBla1CvCelDJRXGTuPy9PjA=;
	h=To:Subject:From:Date:From;
	b=DOe4SQj+qsN5Fhx5hY22o0X6pKEd3VscurngVSjxsXH1DxRLOr6mgsgGYWn1AB23Y
	 BNqL45qwLdC4tpEPh++sSDP9MzFqyNIxaXefAlnUAoW6/xm9YAaPwtcvCpLwjsrE6A
	 m37D49NOYDnc5/IGLd4aF3SqME9d37mKOhG13EHaq8JqIdxeIF3UoP8ksqvxAgsb4e
	 +YpcFG+IWCLcwTHkWxnHXhpf+kdz/KPYWyXYrB6pJlOJs6A2wjcTMN/zBR9y+L5Fs+
	 PGfwi8AdoU1nffu3mIzZn69TdIcpzFK6E7AX2rb7wdjmq7POu38Ba5BtzaHSShDkyo
	 j8zpRrcoXgrYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6597C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042463368.18040.10053241459764553605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc34749763495b49ff82ca7ce19f3d1e9d785bd4dec4729863d7ae000290ed6
Date: Sat, 26 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790424633
