Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62387182D2
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748142594; cv=none; b=ns6Ea2tX5N5BW3TMqtik6JjleMUdWzhIcdrs21FI9EOlTD3Ync5d+owKw3gCeFGOazhp6HaMMpG/8zxu4U99ggGLKy7HYZ4E7BrboDzOq3EYGZXj3te3G22j2ho48JZ9Y/ELLjIXMrLat6Gb7xALq4AG9suoJ+EA32hBOupfMcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748142594; c=relaxed/simple;
	bh=4ZFkZA7nx+bTYKODWOA3Bm0pHRvAj+NTVrLojKMYS4g=;
	h=To:Subject:From:Message-Id:Date; b=YIhCaznpDqi/mlQwrnOCMxAnLlMkqefC1Mt1SMYcbdaSImC7HN49s7jJ1ybxKfMlDAt6Js7Hu0hWb38tvwUMORnHWo3iFQwN/U9t1rQIOYefk0OS530Bywe7jC8Vp13faz9ePOCjzITI9iNeRcyb+gnEKCCFwDldYWeO6iQA7sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Evm8pMU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Evm8pMU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29B1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748142593;
	bh=4ZFkZA7nx+bTYKODWOA3Bm0pHRvAj+NTVrLojKMYS4g=;
	h=To:Subject:From:Date:From;
	b=Evm8pMU+U6DvMoUTihmqV2WcgtaKUvGUJ1D9jBowRoHpqIVJO083hfYnAWT4GdTfp
	 eOsw0+B8srjS8F8YU+ni88rEPt7KjMgTKBm3B5OKAwEj084Gcmm3ZIM135dfvkZwIx
	 katx5HHBkxq8ZZ/QhKYA5eNRvbUVBOXC/xPaxjAc28eDjBFfVSfNpUgjsahbnBwZBy
	 54tx1N0uRCRVPcUiDCdfTsriliCOy7I1LmTYo17uv2Kdz2e06CqugPIHrX6YaWSRaB
	 ntsKVh3DFksVEghZU9ceG3ewvNSf1L9iBmMuaxe1yyMRYGLL1nafHhmPJ9iVAhCQdC
	 XW9+Llj/O3e9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC38C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814259357.8578.4279975810761822772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c334d2d7a40c527be8a1c3ae8fefca7b7aaf65526d9bb679a96fe31ea8ab3ead
Date: Sun, 25 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748142593
