Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599591FE471
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784489914; cv=none; b=Wc/tINRV5i/XvxcoHC4pcmSmOxhOFFICuK/QDbdc+Gd3BGEIcFPD4cXabkfAohCSxLuEEMG+EAB2C3qlF9v3bntJbRzpJEEU3BvpAyCC64+fLRw3v5DAOxlaavZe5eq4Q/ER5G9Tu6TjMnm+XnNWO0vqo5CcpOaVnQCxQna/K8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784489914; c=relaxed/simple;
	bh=G1mYrwDg9yGI5io0/R9ylrFtVgY34NVFew+9HP6YqZ8=;
	h=To:Subject:From:Message-Id:Date; b=lE+8G1aRhBfyxr44hTEnIYTi40D9DCOEY7Tb8RwpcMdPbbHHNIxKjRc+MJDYJBtHwaVhMzJQnCKdpgPtLDfkTEbtVNMT3PLTfzz/99cZuHMQ06n0BEk+mMdx41KVm9xXZUDJKiBukuP0wLC3XMLmq1umiZ8Oejtl4PUtM8l0duY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndbqK2+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndbqK2+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6CCC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784489913;
	bh=G1mYrwDg9yGI5io0/R9ylrFtVgY34NVFew+9HP6YqZ8=;
	h=To:Subject:From:Date:From;
	b=ndbqK2+qVb3uPtaZWXyXW76LHgsRGmbR6sia/v464t+S4sfK9yZxOw4b0COsZGArC
	 9byERpbl42Yo2nHiIXMdrYQNfGzkROfIS2AMgOHZx8q7UGPwPnO+jYbYalRy1w0pTU
	 EBEgUfRCr5qQzD7hktiOjZuP0XtubVvyY6WsTmiVe4GtZMNUB0BmEsnC9NVgQlFpE+
	 jyGfnhL8/DpntCzYnDzeQQLjei0orsU6x91+t//Opj6v2S6HUrKwPvEXhBGjw9tuxj
	 QRMAVtD4zytofwCv/RHZFPFVWh0PaJi0R6LUjoXn5Q+brLuHTuewUNtPZfgsOS9UAQ
	 OCWAn2fSDoJ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8906C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448991368.14782.17240359209069126430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f220c75c5f3a829596cf0f49f5bb16bfffb4c2e9721c798c6e51e607250ba1
Date: Sun, 19 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784489913
