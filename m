Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA5479D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727058954; cv=none; b=QnHyDgdCNodFV0Idb5BaL/NcSVIVas9gWgahU1HlCfge8tcIP5tDfoMHZFhft4rq9Ki7ThocCV1n/6La4VMYMoef9Fv5cCy7UlgPkW74agC43HfQMxXyU1IKkXgp5E7nys3KkNqMy4WOwyMqgfH4VsYuIzPOVrFbrBG8gFaXnKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727058954; c=relaxed/simple;
	bh=U1JMVCCoSUkTY37P1IoQ+kqm49ipIlipQVwc2mbE7Qw=;
	h=To:Subject:From:Message-Id:Date; b=GeBOIShjbjklakn0/8Av8P7vGA/3aKGS+OBVq0YqQiL4uxLnsERC2vkmxP/ZQMwDB0HKztV1lUep1S5AYzI5MzjW9ofB396qfHfiFaeTR/bsJq/Y/6WOZitRI7Hw3PNLS3FZjwUDzjVfN5f7QFBTWsd1Gtl4oDTOeLAyyMyF+2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G24zrNVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G24zrNVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A295EC4CEC6
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727058953;
	bh=U1JMVCCoSUkTY37P1IoQ+kqm49ipIlipQVwc2mbE7Qw=;
	h=To:Subject:From:Date:From;
	b=G24zrNVaj5WZ7axZRleFvWr2xwFiLjmkG1hIR4YWbR/d/9OJGm8AFRtrj15gDzZ1Q
	 vWRjwBsKpXUt386Zs48ZP9EZlkRJuWTuTSmR97KPbd4zinAy7Uwve03VCNdt4K47FB
	 S+5Mi3wG2o8QyAgSbNHY5GpxnTJEoFJTEkZ3QPxKNmV2GPqLuMSPnjTFFROWf4QCLv
	 xu2Cdqu+phrQ6ZQlb3CvQbWHJRXEfl5vaNW4/rlQo3rvPVPnYg79TZGtLQ01TkaxeY
	 F5pEtGkMkHf4woLxfSk0/pMftGNGZ865ULQWiiDXD+/Hs7EZ/dK3HzTg7b9XD7xluf
	 7Gk3SyVugPQEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9214DCF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172705895359.30775.9272125808141775304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1deec18bfd1a0d5d3c86972e20b75ee96ae6d4d1f6a28d85bd60265ef1b37fc4
Date: Mon, 23 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727058953
