Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313CD17BA2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771721094; cv=none; b=SYomLd3xkbrRajpclVL2xZMCWpX67unCMoAVzu5jD36BZ+p1Pe80+2SnuEwvVGpDUOKyefNS/hCHXlc3XoM/akyx4PMg9sBTje4ndbm0jSBux4knWyBA2yNsofZiHk/SXfILcFf/KE6qFY4/s2TNwCGFZqE1uq9kp+Te8hmBVqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771721094; c=relaxed/simple;
	bh=y0LDsXiC8CkIWEgmwQR/We3cpBt3SmE6DqYpGevGEMg=;
	h=To:Subject:From:Message-Id:Date; b=orcDsSogK01Ds1AelPFHmCNSDkI4VT+WGNabZb3lSkfgk+PUwwC2ia8nCMp/j21qXK4VvrXzShYuYLf8PeZTM+mJrAvCNvaaIQ6vifOM4fkC5K7NYjvGXNi1/D8hNb/mdv9nuVOxzZRxUo2LX/nGEWVfrCt/btkgZ1Q78yZIH/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRsQf484; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRsQf484"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B832FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771721093;
	bh=y0LDsXiC8CkIWEgmwQR/We3cpBt3SmE6DqYpGevGEMg=;
	h=To:Subject:From:Date:From;
	b=RRsQf484jYtV2OcmR4BdK4/K6iAeJ8Z6c1hGPq6RuHaFMJD995s6AK1Cv3SiPrvsc
	 XqY5jtAOl9GCD5O5Egj5NktlkXnN9ahg9eHAAy3Q8xdkbGH604mcWrAuHorRwfoJV8
	 IY/qTHvkqlZpsl72cOLy/s+l7f5JA5Dd0JX6ws4pn899n32PTLP5V01JqRyg//Qhcx
	 6MM8yJTa96ZilAK85QMnxUmn+RxhtOPXHC1QTxUSadDpsQs4qdMjQ7zPI3yD7ayTne
	 fWI7JJupwa2Yc1YckxOxZ/iVVo37hsZ2GILN98/rjvx4OlRMWsw+z2frF9qyUpN86G
	 6Stl3FoXewu0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38D1C624A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172109358.27471.17424682016822783079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80117d7b8aa469981039049143e116ca5717fbe8a5d74629f6d69b430fe5b1d
Date: Sun, 22 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771721093
