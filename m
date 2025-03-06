Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330FA26D5B6
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 21:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741297134; cv=none; b=XOA/QdfKqKoKwIJKPFU2G1YB3NVzwNoYVsIaDzT9MI5LPJK6VTeiHnsIBnu7e0zeMByNs78z2lNB0BN4cbFoCjMnRtCdPnxPdMR02BIhkq/7XmXVn1qVcM+lNcLjOdEBeECWcus7DCEuyc1HPt5FTcUk7rvrV8HwRQmD2UmOuhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741297134; c=relaxed/simple;
	bh=julMrDTdF0XT5LklG8LhQNkOHuN/QWkYTvp1AG10vsM=;
	h=To:Subject:From:Message-Id:Date; b=UwdLKZago8YwVXw2qM6WvCNhrmsFWwU+5fcMVsEu30c+5XI+RvRXoFh3Uf1Y8zDNjLfEOPBg6MuEW4nzdq5mQGCpTJlApD0E64MMqX8gsZaHASREAT8RDDGnGlS1vxk1NzkOBTxHH/KwhQ0erg3GlT1BN/qgiadQtuvq/bLkwPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ui3Iewxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ui3Iewxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E8FC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741297133;
	bh=julMrDTdF0XT5LklG8LhQNkOHuN/QWkYTvp1AG10vsM=;
	h=To:Subject:From:Date:From;
	b=ui3Iewxkj5SUtZDcNH9/yR4OvL194RTo3E/KqlifaPmh7eK4rFZZQf/1qjeP+2bG+
	 lfEH78Zq+apW1GXx9ng8SsVAwC5lRycyfJOkvlzJzmpSDDLTrpelptSalKj6fzOF4U
	 heeaTe4lBWzJjXFMGqQYsB5crQiKKueDMTM5If5NSMle5cRj/4kEQpEaz1XZuzjY90
	 3cGCGuY32ETiD9r0+b+VDma14AiFqpFuIXmhNhz1PsT9xUvGKMhZGmzPWL1tUsUGCu
	 Zewxv9GKARJGGsmlvOMRu0BfdoH6Skmj8ezeB69lPMI7OehyiuP9aJtitJIDuMLxrh
	 G4xlUcwL0dllA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92754C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 21:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174129713358.27261.7805280669959414484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47250d8266f4f9af16fe5a16be120bbf801147d5c9d4155980a2f6de7a762f3b
Date: Thu, 06 Mar 2025 21:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741297133
