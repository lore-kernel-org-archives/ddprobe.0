Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BD73C463
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743818994; cv=none; b=tibBJVFNto8GXjA/YRGBjme+zkAogw6Ru90uGOd6J1ZRCHxC9WzHmvmiPwZprbCNON1XaoJIyBu9LDwl4eEtHAQi75SJGjlBeNdxW89lLflE83VEXocleOrtPDgGBijpQGLfBOOTisVPTNI3rfLyoFf/bqSo4Hj8LuruT85+t9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743818994; c=relaxed/simple;
	bh=IKkWZgm5ICZxet2taMFPssCMPoGILMTdeUQpYlHVeGI=;
	h=To:Subject:From:Message-Id:Date; b=pzZTmSCL3J8UU6nGaEzne+taa95DoWX2yqZFmZUPXX/wUcmZTDymoAzLhcKrIZ8IAOefA6jFmy8wOWIkhFTYpWq1c8/ZkeMjUOn2jyXNN+CNe+ULeuILexRHf1fo2SimETgH1h+o1N1CU6/gGb0qUYGhzu9gxcrPinATK8jIzYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFlKMKbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFlKMKbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92A2C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743818993;
	bh=IKkWZgm5ICZxet2taMFPssCMPoGILMTdeUQpYlHVeGI=;
	h=To:Subject:From:Date:From;
	b=JFlKMKbm2Khztt/nftsRH2wpsUiOkt1enDwQt25CyfvXdo3m60Bu+jM7cx6SdjOrF
	 fuhgjAeBqvZV+ZYxujNY8k/M+zJjDqEkjWIf/yIdUtBLLrJ8RbNzrIv1cgLphGRRYS
	 tR6j7hdOuRz56qO6l1ZYo7oIlJOjKvVzievNbqg+a5XzN9ul3W72G9zF73l3K7tLh6
	 RT57k6Xnn2w5/wiuqtHbmgvkhzv3+Fi1JviH5GbID0rkjR3PrSX+UCPrYls4MOSr2+
	 Kvy7YMOFoRcpfVEDdmEyTz2JN7YNfgSu+mANRgoaeHPZO+sDJaczSQjGRK/EHA1D99
	 R8QtvhshNaAeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942ECC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381899359.14532.5340520631131053875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0ccb8d1548f661cc86a46ddbe66cc069897cb41eb5b4e4378dd5bbdd7cff11
Date: Sat, 05 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743818993
