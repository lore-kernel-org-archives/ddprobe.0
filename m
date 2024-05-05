Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC1918E3F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714910543; cv=none; b=YgD7ksVdccmVjCc+Avwb5fnLzB5Kz/5U43ELdBi/JgaFnB3lSJCrP8j/rw5axkqBtiY6fffAtMirg/CNBzay43CGO6ilJjfR6nND0HjPsfakQx9zRphuZ2iqV0XxpcWjFw0jbNx3zK1td4eaAf7Q9z3gmBGXvcJ6eNVnrijpgpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714910543; c=relaxed/simple;
	bh=c/QQHslV4iffzKLgHfBWZrTfhNGAoyU48prkAq8SX3Y=;
	h=To:Subject:From:Message-Id:Date; b=CYjM1SXMF0YMx7S2I1tKZK0Nz0mTv5hqNsCrnCC8bMKiiUkT+KxTpNjjk0r5fmmM6gCpJPmMUFJB/tIiOTKDxNrUf6fzFM4FMSEJd03Pt4uVASTk3XILWCWEFXZtMHUZF3VswB8HN1x6xZ2HE4XphtcKvXVayBi3tDHVjnPt91o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oc5/H2O+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oc5/H2O+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C2BC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714910542;
	bh=c/QQHslV4iffzKLgHfBWZrTfhNGAoyU48prkAq8SX3Y=;
	h=To:Subject:From:Date:From;
	b=oc5/H2O+6dsgDC3CaiGcNWk8FtUgrunizosRPMXyRk4B5wkJg7vEQEhAhoBM3Y7P/
	 uyjdjA1/LGjk4iZdrWXkLJEzqu2w7s0m8N4FSP/39nGvUVYPbecAT+1Hw78Obkc68K
	 RxDB4PgjcH+neCySqqV5NMDi2tQXJCyK6Q6Oypzp1ML7/bjCFZr4cqKH/Sv9C9cEHK
	 SaNrC8ryfG50iiQEO0wzPeWq+cMQ2mWzLgdEGFZ9dyl2cEd7Aw5rQa+o9G7T3eaU95
	 8K0yajk/zXTlTvbgnoQJTdZ4Je/uUIhImHSV2J3JRMN81hSH5/yDGYZBYDWSftZ25T
	 s69kGyYuZZ3iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BB9C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171491054277.11857.10605182159580034869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd8820c09062d077703189ab2fc6c79dd79c6f7f29a2dc009db6fdce159151e
Date: Sun, 05 May 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714910542
