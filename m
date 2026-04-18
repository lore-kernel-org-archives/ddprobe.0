Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2049E30FF3C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776520054; cv=none; b=l406xNTCjjzhRF9nimHxQ8VGfmht+hhijaO+aDbESxEuzZ3laoRaJoiwNnhlXYrb/KfU/0hz2Yzoa05JUViLYYjHhJZw9QuoIQrAItXUh6ioe2ms014CA6tDTkaDI05re2MREqZCfwSq+ihCs64091HzYd8Dn+XyShbkJYoYxt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776520054; c=relaxed/simple;
	bh=Pl/aB5VSWlBNjsVqs/fm5EEIlghrWr5+ROpGiYh0VT4=;
	h=To:Subject:From:Message-Id:Date; b=dcWpPdeSTJB7EPEkzqs69ocly9z0rHidf3fqk6pqSOTT2ksKkwcfs9CYUu/6LG2E1xP+JEgY0e4HxnTuWTUxYhEU/RAfTciCMI4QLf0eV2P6E4dtSEsLBEy8pQxKrd1o4dNtwpfO3RmbiSm2xaNFkflglLhWy5W2N0sAJ4fCeYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvOMD232; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvOMD232"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE096C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776520053;
	bh=Pl/aB5VSWlBNjsVqs/fm5EEIlghrWr5+ROpGiYh0VT4=;
	h=To:Subject:From:Date:From;
	b=HvOMD232RdMYWkOZNGuuFSmptPVU6YrWQN2pHHzxNfk8pAwZKSJJo6BW0YYI1WfdI
	 rP1ZGdcAAAeD/HWQohPHpgBhd6y2sxIrOg+zXIC41YX8pOVrZw4dOemQqD5pZZDejL
	 7lBBmtAbxtCX7k3cIqFxp7IPsO2SgvdDzEQ1qUuTiNi/sFGKog8dh+LqTiKr4h9UZH
	 bqHvxrLwsU773GOyaOTsRu2qxjQGZNb0SjPu+tpJhuidfpectSNSGgvpiY39Y+MaRL
	 2285Z5Jd4otEnKprVFbaZhKzqYvDOFI8yB3h4Vw167AE8FqtfjIhqeijCCy2295hK6
	 0iFil8P8k756g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6E4F99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652005368.30640.17772441583075525513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a7814d5664537cb8f76ee9abc00c2b590f2c39711c1565f235251423f662a9
Date: Sat, 18 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776520053
