Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331C42620FC
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767133434; cv=none; b=CLORUKXrZCbvitIkZxnnem0UvPDGCFss3XsoZRABVjI6q3R3H8faTEw+AOyfHs6fQUt6F9zUdyjWETjm/UIVNttebRy2EnMoo3DBPRFoNy7RiYY5sTsmhQUklqYBoKE329YmFwDfXMR/wIUfjbAutF3ZV/nS3PLwIRP0hprHu+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767133434; c=relaxed/simple;
	bh=w+i9XxN225+NuxDFOBqeChgtKxZZlBNo6tqhleRkWRo=;
	h=To:Subject:From:Message-Id:Date; b=kuodczMy6AUGlnFSYTvyCjBp1W4gTrtfALUGxTazSlNlRmPxVA07Ar1f5ODIm053NvKtQA+oTeNppt/VPAtafr0fjmUMcBq6tD87bnhYgeymJzaW1p5jD78r1E0xvO0DfTmcGkUXP2wsm9Yz+GGmfbb2ZuLxiAdlJs2jwjlRRIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6bgiHgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6bgiHgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A647FC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767133433;
	bh=w+i9XxN225+NuxDFOBqeChgtKxZZlBNo6tqhleRkWRo=;
	h=To:Subject:From:Date:From;
	b=h6bgiHgR6vWSrHQz+6mFlbYRSm8/Wz7K2+zIpnZ3xAsPy4KN/vDhAR4VEIjLMYIwn
	 eazg2djdC/r8emO8yewp5gQKIfibdLeNQx5swoOD8aLrQRO2PFwy99cIATas3oTX87
	 mig3FZHVKf80UZApvouTb/mwBsUDU9ixfLh1mjsbyTWoM5nZ/C8VI1z8wn2ggEV0Jx
	 QHTpu8j2F8d4m3TmlutsowagO7vtkCvzYpmhGTnteitemvSefeOOt1TtqpUTr3UKRi
	 WK7KAlzvz3Hkk8zUXTzsz/dZzjqeNV0RhS5DSASQY7WxjszQqdijHF3hAk7m6GziMR
	 I9FuTLqZKfieQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952A7EE49B4
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713343357.24768.1929691181519659438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2230f98382779e0676f34498868b1f6a841203cad67fb0876229d16dcf8c1a60
Date: Tue, 30 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767133433
