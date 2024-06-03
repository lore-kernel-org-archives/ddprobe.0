Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5511E7D3E8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717410323; cv=none; b=rzBeDgeNj2ZAhp4wecLYKrqhfEPArNkVVWrWJkyskRqgff8GZhGPRW7pjyjc98aeF/nrumEvE4Y2eUVxMC9in3PxWKyP2SQCoi2zPwpr8/Z3Z+ostW4V18Rxu2SjRmacHtYyRzLe/zQEZv+xo8ClGSNEHSdyRPWjoBpMyLkkjZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717410323; c=relaxed/simple;
	bh=ZnWjqQegUJPGFffJ+dQ69mUUp0A+5MxNdu8IlYe2vCU=;
	h=To:Subject:From:Message-Id:Date; b=h7m7dBnYuhnZ/voIuRQfEB2R3cQwoyvQ/bnh2XJLIrivNUVvngme2zCHAN7mDVVAUUedehEww3CXeqMYRXHuo6PTb9AK6Lpca0vgbuumyCZPtUMa8i37pK7uiU0hhAdMG62DhWbOs2HumCAVQus14b07HD7PGx2iOtsx5SJcNn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaKBLhUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaKBLhUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12F7C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717410322;
	bh=ZnWjqQegUJPGFffJ+dQ69mUUp0A+5MxNdu8IlYe2vCU=;
	h=To:Subject:From:Date:From;
	b=LaKBLhUwwDLrpm4DQh0Rcdlw91PD3Zj9WdXCB+z+U0M1VVRvB10fWreVPj43ejyM9
	 yNeJxhsVOs8Egh3PPFXDMxmcemBjgIQIpPvZYF+4T1Vp1tqQXxuRRRobB8cK4X4nDG
	 yz8XprcDczxJqZuZraZzj7LZm2L73F9QeYfMegegt2UCABbP71WqglzbICH5zfaehx
	 x/+iMy6KqdPq5tnuvisfPP6flLBrHa/3MINOFvKyRbv2T4ZjJyBXcd9ngkGLS9GT5E
	 Qii6yv5dBPqCmGE0rgzi1jeHEHnWhUjiHXgsxpTx8BbwBc65HHp70+ZR82MlxCknmD
	 14fhefKMvCd0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFB3C25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171741032276.18452.2167118205110061316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db9746602f51adced8ac6a94a4b800ba71c4e0d38258f35b32b772d5b1cd2fa
Date: Mon, 03 Jun 2024 10:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717410322
