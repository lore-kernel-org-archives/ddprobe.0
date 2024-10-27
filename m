Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FE66FB6
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730043954; cv=none; b=JVcqYPch9l/NKjj8bgVExZqzw6HdSHM2gaQzB09mw2dIc5n36eO4w5aauGYdAsunKhqAut6rFAorYSaEpRugd68jsupSq1FeKQq1kQUhAFbPB4Jov0LMiJ/ezj2PRBfC5UgWoCOKXS0ZdGMdVsGWCeKcjqtADdl2mNq+qrvdKQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730043954; c=relaxed/simple;
	bh=n/wph+eAwQ5/xdfq0Xw36f7lsrEfmmCcGFxjXvmLDps=;
	h=To:Subject:From:Message-Id:Date; b=CFi+Y7zJp6lYsbZDCsqHsfg6DpAyG2IEQsymwOy6ReJgN2CZ93IT59FW9/NXtlpzlnrRKBOJMPzbaaiU39w+i0H6ESgjsHCLrvD1TbUymu2xdFvry3GwvjwXUiHwnI86fkNhEG6bfcYvYr89EboOkuLLRX9njfoLbW7MI3wwVhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQVfp58y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQVfp58y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E44C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730043953;
	bh=n/wph+eAwQ5/xdfq0Xw36f7lsrEfmmCcGFxjXvmLDps=;
	h=To:Subject:From:Date:From;
	b=MQVfp58y/6cL0bzydqeM1rWIuZkP1oM0wE5rHanXuIBXzRHBzHJVDY3znMLofCtKH
	 v8cTMolzCzeCouVrfsA2K6UIWK8yIRiPsa2uwvAua2Apb3yNopA6hr8hPcOiTcFpyZ
	 lSgdya9LgQ4r0cqjrLv6DEoM60SfQYopCdPTbCE/ZXr/q656k0J6JZLvCblOVpOdEp
	 uhS3MMorTiu3t1t0wx1VJWbtv3T8dTk/rAFnlalITV5Hy7f4WS7KyTvUBW44Z3Gcju
	 nNcW20zqXBgLf46dm3zFik/zZk4/p/OuKt2TIp8MholAYkRPwc7CncCUks5SvwT+Jk
	 2uNlHICnhgTpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DA0D1356C
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173004395359.1368.4551711233600582076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14345dca16db613ae489733c06112a4f37590bbe2b0e7d4be52d972faa27ed81
Date: Sun, 27 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730043953
