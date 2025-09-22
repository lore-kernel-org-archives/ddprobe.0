Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3EE27FB03
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758551994; cv=none; b=Q0DniOXeGfJA7E33AOb5vv8AixtIzOiy5NmCieN4KdH9duf9k7CYzvllSyeyuVrissb+V2RWTtu6yATjbiMnv3PtgZxbAaMaac96gU2IffJe+aAA1ChgUUyuFy2yjp38rJo5rw97uSrshff8pc/KX9Dq/SFztP5Mj1CSzxVAmRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758551994; c=relaxed/simple;
	bh=BEMgZR6Neo48jOQVzTT81v7BKm6omuTftFzpzdr0IKA=;
	h=To:Subject:From:Message-Id:Date; b=Y9NPj/WMSaq+ol9y8pu6GbfoeBvK2e8LOEl5U6X8jfcBpa1wkKsrce/WUkkLrjHgM+/G2GBJNNS1GztarwoPLfdebNtyjLk7k8FtcQQhLAp2bA+4pmodtU/377im5PaENwIm1grbD4tJpRfq8DUcJLZD+ICAhL/Cct5gQQzhCRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOgl+X8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOgl+X8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A081AC113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758551993;
	bh=BEMgZR6Neo48jOQVzTT81v7BKm6omuTftFzpzdr0IKA=;
	h=To:Subject:From:Date:From;
	b=NOgl+X8tSpqIqJP4KLI4WCmc7F0vHWVfpoNdFk/L3o7zBvIPd3wjkMQ9Cg0E0my/p
	 yYwTcSsCDf918BFqZHiZjZePxge+YAz94mNvQA6gwyVMfJ8WXQ+n2cYV8S67mxHUjL
	 0CHjcFiJgbVBAOHI2K2seVKy4Jy4c8s7ErAIgFmY0ISLaDJ+uud2ANycwSZKLDSbx+
	 MIHHs3++/M3Ao+QAkvFnD43+IRmSPgfK0ySsfx2emXLQkTMu0MIgFs3J6aU5K5n4S2
	 +Fo7kq1P1EynJllb4wUKYTr9nSbKmEQqZDeMB/slbeZbXqes/Vs3H5GsMgilfnn+ZM
	 9YGgkcwBdYkxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91939CAC5A8
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855199358.28422.6242986845220949215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50bd11e51df54998abd13d98d49eb3631c07262cb811fc26836730027d6ea3c9
Date: Mon, 22 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758551993
