Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A19D2E6116
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785479434; cv=none; b=sfwFzX+wQ6jhfRXgeqrMOqOY9M4lHigipvbuduC+ARGbkr9yYEEyFuN0cGhmGyccKFGIKAVqvyirueJBunm3jWqAVtQbbxKipCUTBiOWv8gcAmOEyWJoXYH8OeQRPOrr69qlRoCMneLjjBbwVzgYUwNzOwMNZoMW94eoQJNU6Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785479434; c=relaxed/simple;
	bh=aSA3HZPD9VBdnXzyPLGME8SyTjYPz5g/3GrYxEm1KYY=;
	h=To:Subject:From:Message-Id:Date; b=HMYT/9mXoy2J0l0e2YoWi/XXuJgDHh/cYF7zMmigWR4Dnht/nuhjeZPqpHaFDd7hy/r6SdqK0co8312RrKjYxg5FzerR4XOUNAe4C4F/t6le48HIoz8uq/SnqfvwiUP0Vq2axv2RUePaMvdhyfD7V7pK9tbXbZJtAb9Te4Tt4qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWGULnZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWGULnZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B77C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785479433;
	bh=aSA3HZPD9VBdnXzyPLGME8SyTjYPz5g/3GrYxEm1KYY=;
	h=To:Subject:From:Date:From;
	b=OWGULnZW2TClUjyjPw65Q5n042DlrltWEFptF9dqRcKbTOEHEudekLEOSxPD3PQG5
	 HmI4+Y3y3+KwY5fCWvLdRY5wnzo4Pf/gC5zqKuFqTVcvfVYd/NWlfyE4hbO2pA6fsI
	 NTbhlkAhXvWrIodsW+eAbGeGUJuR2v4GpWZHWTFUOTjVzkD3mLwN9rCFlfWA/uHQdk
	 QWdQifCyw/FP+sKAtlpHU5v+S5pVoYe5wgNF/9+XhbJBUtH+5DxT6cYKrVKFpjUqTA
	 I3B2eTrh9c+tSUPSEgqhfW7Vi7lbRn1tR09vlKJMJFaEiJo/+lUsLwNk2wCbH3b7eY
	 oVlmexCxY9mPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFD4C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547943369.20459.12480362820646704597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833b95f5bc3e793183a38fb93c43390720b519443d0a567a30da9f1f80632992
Date: Fri, 31 Jul 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785479433
