Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8603D994
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783838314; cv=none; b=mje5yZ5L9CMooUfKUDzHZS3NXRFc32CrmNtrhMnOsUK1tSEushHltu5f4SqKEozPje+DldDqPEzqLyceCjjph1tvCDMlrvlwVzWtwKneHd8qPNJafUTXfHDjlC37iWT70zRmD5ZfotRV9QWcRWH7OxQHtC8gzwP2EKy9SB1mfl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783838314; c=relaxed/simple;
	bh=ompgDskPIBjbGK7qCyRxP4nCxrwg7E2oapXXRSqA/6c=;
	h=To:Subject:From:Message-Id:Date; b=rAjm1Nr5IaO2LMDJZCcgYudOl2UfPuanMBADKasipZEmSgzzFYbkoZZFHOmPLlOKksrnBY4BklomRKmRjs4Ue3nIChwYbnrM4oAT32NIjYBlrC1AP8mVVy4BlZBQ3keloZRDx07dTDIyriiy60VaNUqGs+WGjlDZkB9oGTmluSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hm1eVG/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hm1eVG/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3C3C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783838313;
	bh=ompgDskPIBjbGK7qCyRxP4nCxrwg7E2oapXXRSqA/6c=;
	h=To:Subject:From:Date:From;
	b=hm1eVG/18DYy7IZnuVUBwApd2opubECHYpTJocrareQKLa18KuUnQKivl5GAlX4Pu
	 XbZ0WFO/ylUy3ANOxTslUQqlcANGv7DqtG+4oUwaEaUpJuY2uZ238TVcmgVfHF+hXh
	 LQySzixqPLK/FfdhGD30kkYDB3ZzJWAV1J0j36ijUrWIAqGWun0biLG8K4L2Kz1ek9
	 LZx+mX+NibpU3sjUOBI55yP07pnklSYh6GJoEDVa0H4TIMNbpimha2GJ4HaLN4aH1w
	 I7jh1EFB3dThXPYQX9b0WGsxLf1TI/Dq2Q2yrWxNeoXDBEUukEcBQtLqlI2PHhEl+v
	 mnihcc/o5Ckrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE7CC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383831368.1684.10656193557942482438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b61a8d908f22c5c496122c0e013af38457a916fbc3e0fabacde262747e0972f
Date: Sun, 12 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783838313
