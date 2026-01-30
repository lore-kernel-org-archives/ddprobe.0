Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326B337419A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769751234; cv=none; b=Hv9ALpGsC65XFrQicV5IWYZjSd1TgxFrseG0E9R+KruhEjsGy6Bnm2qh4RJYpp1J3tIIE41+XINVrp+4+ELiIGDi/pdze59ipEQx2DWow98CQ+RoGfzZAJfTbO4vpR3bzH5WheT9+95HUH+06VieemYiaKld24vn2QuE+HUg2/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769751234; c=relaxed/simple;
	bh=EhGYX4398iwpxuVILXAOZHXn4+1UjY2xq9nj1AvJv54=;
	h=To:Subject:From:Message-Id:Date; b=mTm9rtfazhu9nTr7EjjR4DVLMDiUUJ+T5a7k382ntTK5kzLT+exsJAMmyZjS6b6rq9MF3YX+0+0PvH2BzpRAjZUWujzUMUarY3/PJ+kMsKhla0z9uyMrrl+1Q865rXqfK1G3JvIm0fJ20qX1eSM/x7JvdIrsFgLNvSHD/C6mYho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b917NL66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b917NL66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DE3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769751233;
	bh=EhGYX4398iwpxuVILXAOZHXn4+1UjY2xq9nj1AvJv54=;
	h=To:Subject:From:Date:From;
	b=b917NL669cj2EuURHjqgOoJ4xyqUdtlupLqtNwNC8TN7dncFxrimg562X33HxxHuU
	 CnNUANXwgfzdwII6IsgqjdTGnGhPGVurmHrtxRlA8VY+njO5uwF6ar0HX0xvYoFd0I
	 d0MB9lYVKmmXBsHooB1zeR0LSa4NQ5/PFK5gVgCQO5MQMgLV3fmL58QUaOPBSnu/Fw
	 3eolt5WZhRUuVWU7L4qmkxn7OkdDR4kqDR2fZRsg9e0pNOCcIgah6G////paFoIRAN
	 MMHZw5KFKW6DXGbysMwZeLfeccl1bybrf1iOE8SBSIrDynYNFI2PJeQVEPmaAW5V50
	 LnlijiscWM6Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD62ED73EBD
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975123361.22648.763523903665224969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d68ffb0fb73f4114aa6177e7fc2dd893880e109a4c3556d0d8bc88123282ec
Date: Fri, 30 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769751233
