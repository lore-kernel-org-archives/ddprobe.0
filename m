Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C8A46BF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754157594; cv=none; b=ObGBny/ws1HcAtBpjoj9i5y5/5yhRjsK9qAVPUE8wTQRH1yVES+5tvWOpdS/qLYNTm20dxBWpgw3Yf4lYgUbSBFA66JcciZRvWrVcTurGFOyUFvzfPGFs9j9EsUjnccFeUyTwpwI6Z/UgsQI5QMZE2G1FaG3PJL8b8enYSA8+7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754157594; c=relaxed/simple;
	bh=iz1hgyUiuV9ohjoe/YWHN6yFZCtuB4VOvmGi4MnxrEE=;
	h=To:Subject:From:Message-Id:Date; b=hCXvFFb58hfHYRNesRmbM/zJnuKVAQeLduXmRLS9nf8t7H95wojRdOgaLV8FN/We678cWdva01HrnHA2M+mBaDZ+twwrIXOo3D3bntGmbuMS4Wab+ZuKKF2SnPMJI/2AZa6EozFgKflPB/d/Mg/QJ7VLnU0p2vl6YwDR64YmtpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ny4eju7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ny4eju7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1678C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754157593;
	bh=iz1hgyUiuV9ohjoe/YWHN6yFZCtuB4VOvmGi4MnxrEE=;
	h=To:Subject:From:Date:From;
	b=Ny4eju7FCbqgomyvXoslU4teyrPJmzuJjXZjWWjhsQQ9cCmLmvduhtJ8ZA86beNAc
	 6e1oiILymoYX/H+kXqMTArVMz1r4SR/t7DyFMjSBIxFsAprKNUIlnK3l1Zq86UAjE5
	 lxUmLL9FFuVtn62rS/jSxdkovlEqA5QdPdy8cc8q09WeZ/uMMd9bdYMnbHTyp05iZG
	 wI4n9hxxSzdLZGGfa/IKeM2jr8yu2dCJyMBuQnYjx7aqVa+98YP6aIV234hgccuMTF
	 GJU3EcwtDLuQvtK9yrAUxwiaG6HXUr2fmxtf6s98M1uGiab/1dd/TQJXPl3eH35jpF
	 IYnRD+39UmM1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C52C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415759358.28637.14310918540302801216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 662e3e6527ca1e58c204b873e4d0078b939683a345e91687d690e26e47538651
Date: Sat, 02 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754157593
