Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5513036134
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716205943; cv=none; b=W8NMDimWjHuBNe6lQTBWztnXTJZ4b8p1zA++mOUcZOJAUl5upWOl628g6W22r8NPRO+RCZguzoFoLb1LJVq2v8mgGiDSpY2tMQ3Hi8oW5g7GCHct1MD61kcqfBgpED2w2Qp8a63ykzNL49Y9QeJZ4ONNOQOqX126ofj1VdRknYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716205943; c=relaxed/simple;
	bh=XuzksdwgpGizNeKvVqN7ES6rdekSQ8RmnbbPAIQ1Byk=;
	h=To:Subject:From:Message-Id:Date; b=jJdnMuiLuMCPGfdXxosSv1E4f/x4xvINVLbbZyqVfWqpVZ9yGnWMVKE2be/5YVbeujjYyCIC/6hrtMY3dzDjH070BMRVfwkJcre1yB/0KmzzG8rpmPAewoCm3/ir8b8cWgKUbZdm8SCkFi1Lel9LZR8c7vGHBtkgp7+8GL7F0bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niNj9VE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niNj9VE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DF1C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716205942;
	bh=XuzksdwgpGizNeKvVqN7ES6rdekSQ8RmnbbPAIQ1Byk=;
	h=To:Subject:From:Date:From;
	b=niNj9VE5E4NjQRxij02D3rBY77iqRU0PGfazhgXKqfuAPq8LU2BhpFYuQ4Zo3hV6F
	 5Xg98cupSKhc+EFM3ATjdifyU6A80mu1FHiRQ/ouNqkk9fV7TVLE2LmliTVeG4l8kd
	 XwWH91dFtlwXxVv46+CJruJO/ICGtMccwDw65BX4v99aoqWRonpd94ynfDLwQISiq5
	 ru6ntXjBOczgj2TxdTqjGGOuHalb1qfOD34huXpN6lo5CUWDIa3yeXihdBBzVQA4Bb
	 zz82F1bm2ULiwguB1m7bNZGuUkfWzwL441bGrU4flHeUXTYD6J0xVbtfs73jvmtmu1
	 vdTNVQhoR9EHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE588C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171620594276.19728.9868631856577927637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c069f441beff41a9ad933e7f1e24a6fd1d205ebbac67ceacb2226b976b10e9
Date: Mon, 20 May 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716205942
