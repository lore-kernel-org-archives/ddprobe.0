Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D521D618C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752215394; cv=none; b=jTxS00+ayvjLGBTxIT2GO1+zqqsUJ7UJC4PZ0eAYjc5FhlDQIQ/CIaEQY3WYoXocRnwJ6oq4/ejE3ydzWZoZW/Glc6LtPIEl5RcKnU6Lw7cM15q3jvLbnIWZ0iHDRjzGyeoCbp8QXKlroa/nfO/TGtoTUAtYaTiaK18L3IWbFXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752215394; c=relaxed/simple;
	bh=I/lOqmlSJ48Cr27VInCGQAZ5C0vrbS9ZLwtEq+9OPSo=;
	h=To:Subject:From:Message-Id:Date; b=XStAme4f2mmGsCg6B3Enk5Ix7vONYWXH3aBoPdx7uejdSLaQBqgjXaN6bR9pLO/W0D9AhxJm+ldpx+TbGcgS7MPhyt1Il0veVZr+CNds5cJxe3QZmTe2p7vgm09jKoDMTw04/ZJPcmzLLvxw4VJisle0P+IED7cyrCjTTuzWrdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIm/MR5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIm/MR5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F12C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752215393;
	bh=I/lOqmlSJ48Cr27VInCGQAZ5C0vrbS9ZLwtEq+9OPSo=;
	h=To:Subject:From:Date:From;
	b=JIm/MR5ig1GZ8yjPqVE8jlplL2Y28PAeydzVi4MvKDgO9m9pw7IXOgn5liX0zTkTF
	 e/sGgYjyVDJ3Y2juKKnulfMtA1qEW3nXVQtntP6ZR9omiXZYfFWiiYybN7xU8LqYKJ
	 k+zx/a7pIPS2VH/tFcckk4wiK3wylv6qQyw8VbFkgXpybQPFPGbF9Fpxt9MTPsVXek
	 6w+KFv6SE/TNjLbIMZ6B4rWp4MZfkeEQKZWKrWRKfezqkgjghP7ZIOX/kZQ9vqUK8q
	 EcBT88aI8YDgUT0/3q+BpKE8zzf2lmLFfbCTS+HeH/QT0OYAtz6USjWiZcBDRh1iog
	 opzb0Ld5p6OoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9133DC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221539358.1263.6422707014494442301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd59e351817af7c4dae3e2670368d3b9d70624318710ab0ade60a58e2550a85
Date: Fri, 11 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752215393
