Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C1C20E6
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728877554; cv=none; b=LHbuAmxM63UksVIhCIEFt8YCIGBUzUanL9j8zAD45Lfqmy7caff/Vu16pBAbgsLWJCzrPihPr4nhfoJyuJZyr/WDe8KNqWGgXe5k5r9631Rn0WHE1Wk49yvSbyoRLz/DqKI2sT9HXohZgUur5MWveq+nSZ0eFBN0OvnaPmyon7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728877554; c=relaxed/simple;
	bh=ZjjgEMiNtnZUwS85VKnQ80pofak8WdjPYTo7byz+E94=;
	h=To:Subject:From:Message-Id:Date; b=UoU3mpo8744WCh3o5Ed3AZqqB4IGQaDm8W4Mr3PwdK0VEfcnl/bGNlDAgcHFMMoaBziYuxCGtFrVm2525k9lRpozWgRnITGzbmKOTrzok//ijoBRZTcj8eurmYRCu0l69cwsqO7+oYC1ihaFnZRzdcrY96UnHrc/7NrklKmp7S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtvvrcKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtvvrcKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD62C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728877553;
	bh=ZjjgEMiNtnZUwS85VKnQ80pofak8WdjPYTo7byz+E94=;
	h=To:Subject:From:Date:From;
	b=MtvvrcKHj1JMyups0NSIoTNdMIBQP4ehU1dBfXB7HXQ3V9PehlPID09EAgViJsMNH
	 PbT9L/xewVCQndYRV79zBAmPWsvu3IuSZpAq+ytqJbu+XFxzyJDf6J3qVi4a1p6PDV
	 FNEiH84htfUW/JPTjtZN03yJnMsGifuRdNhRYcTPFujWwaN38HF9lPBC2XNLsW6NsW
	 egrQTbDcAYapt11ASH1HuK7yh6APeq9HdbN/+Hxdcq4On4bSfcsLCfh9+vbEqEPhyh
	 r5+5xmk5wnuH1DnXv4xLXy7OLwsb8iI+KrZ4XB//Sl1/1X6PBOVm9LdKWqlelkhQn7
	 ZdwmoYdb5ulUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F10CF2590
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172887755360.14142.13881801010641626302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ba6ac44c4e615c7c0489b5945718b6019564895b7ac22d6d0893c27111e438
Date: Mon, 14 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728877553
