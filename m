Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E7634751D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781858794; cv=none; b=UWgSWW9ugrXGwPSQZvv1/EciTwG/Eg4HUthd4sEV79/6Rqx/HySg5shRRJzN8OURyxzktQVb6UHvDqlH/evvIjqsqdqxs9Cf1Zk14zTGG5M6Ei4Ko+ILR7IsYCbgYcm4aSJWlmHIofagStK7xm78Z9ywD0dG86lzrV61qpg2WoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781858794; c=relaxed/simple;
	bh=bvOydEKbUCd1dcfwf0DXSNCD2hkg3icE5rIYwWeXmM4=;
	h=To:Subject:From:Message-Id:Date; b=YxK0o+BMXU7OtYedAAxood3sdffB3gGSJIg2U4n4y/Q0JU8LSgeKWA1CDf2EFJ5mE8Ica1/EY9f42/AVNC3BP81r57VPRqx5cHbkr+X8iYneBIgrq6xNw9OhUxPv7EXTiAGPwt6QWxyhW0yivj6KOSUQ5Yer7C2QIY0zeZ212Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UanGA2bN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UanGA2bN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DBAC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781858793;
	bh=bvOydEKbUCd1dcfwf0DXSNCD2hkg3icE5rIYwWeXmM4=;
	h=To:Subject:From:Date:From;
	b=UanGA2bNWRdyvhhTH57VFwfe9AvHA7u5wsuxgNRr+aGF9lA+TpAKxhV4wsXKUpYJW
	 Pb6hcOoK/BGoCMPJj/nGErCnnt7hdpBj52+5B2hBXpvvbZnLvWdzragCAxRbaHWjNo
	 F7i26IqmtDVmrLmpqbQUPF6zVTNtuk8UVsoh4cBvnvH19JhXCdw6HOO+zKedUlKcCp
	 9RjxCJwzBAHLAtsNnYRmbyRqb6eUj32LS5L0oPKAhJiGof1hRN8IGCw80cCOGkGkwO
	 he+xamWM5GGouPuiRADIdSVmuleprq7AIN8jd/vGD1sbGxK0LTqaXpqUXLPdSh6rQ7
	 T3jDhvIDeqdQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAAA0CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185879375.32240.617543140588972829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c05ed7bdf74a3c1fcd100b858c518c810881f6afc05e5789d7651c1fbf9ee41
Date: Fri, 19 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781858793
