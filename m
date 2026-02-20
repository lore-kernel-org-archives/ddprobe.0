Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2C0283FE2
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771574694; cv=none; b=CwvaCw+Cew093ei6xEh6OyZoj1j6k9I7W+CGcKjpfJ69vhEVw2k90TJeYlx8re9qfT7bHS6qtTEdsTobrrhV0TwfEXyIY1hfHhsT7xjBdD7hGI2BZkfTpbXP5GwQGy2vZzBK9+M+MTXuLiaGX3aB3v34GeMKJkf7yR+K+mKdD74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771574694; c=relaxed/simple;
	bh=pu60vDorsFPsB39rjPUTZ+vi43XDhz1UIQANnsQiaoQ=;
	h=To:Subject:From:Message-Id:Date; b=IXzaCwZn8yi8JdJ9LP4ecKoUyPfWkJNNwEK6jRjYZpIeOz+778VXj9Slfnj4y+Pe3A+JzadApl479rloVC0Cxi1WAQmzDQRpjjxl0XmXkShlmHtqEnzdhyNRBiXV7HiETqa9dYW2mCmqQIwHLulgikt0KEjhtlQuUkfS58E0BDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/5WSdaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/5WSdaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61ACC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771574693;
	bh=pu60vDorsFPsB39rjPUTZ+vi43XDhz1UIQANnsQiaoQ=;
	h=To:Subject:From:Date:From;
	b=C/5WSdaLkDDpfGh5kfdSsa1hzTxBEmkKbjNvHv/fN/mGpU2HIZBi1+kt4Vc339jCy
	 8IBB8n+LVA+BhM8GMtokCK1ixffhR+18efyT36AGaxUwq16ZfSnjDzZMbkNaTrflII
	 8uAuYQPK3qxj83z27d4hSXO9YQu6Lu4mwQV13xeiB60q74UGa1Jt8DYE8PylBtYVVD
	 IG2WqEvNw3b+GkpqJViRVVL3D43lPGBs33D3cvUGwEH1yMd5rusHz470lo+GqGAPUf
	 V+IPqPwzLokO1JGlXO79LIik3PwINFk8h2HUCD0TqwVAujctoYy7gqAmh9YR3BCVck
	 UWxfvhGor3ZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E368C54FCC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157469361.4151.4535990311092254012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aeed890d2614380e9bc9e6ebb90b44d127380ac60360365ea0bf9d2e5824333
Date: Fri, 20 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771574693
