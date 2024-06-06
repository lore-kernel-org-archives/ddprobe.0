Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD942110E
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 18:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717697843; cv=none; b=SGeXFC4fmc4D8rz+UMit3hrNRUCy39KoqvnZ4dD6AANm6FZjxIUWSUQA1YdRiKNQghLwhI0L8+a2PoqSibkvbQcRpfGx0Q1go3+ZmRVmfuXduoUUcHWSco9dv3YvIBYlOniRWrA0a4YqT8uce9iOkphhSaV39AXYahjzpRDK0Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717697843; c=relaxed/simple;
	bh=51ZrwA0hb5/JjBYEU1ri4O8DXnsvTy2PzJWTaGPJ0wg=;
	h=To:Subject:From:Message-Id:Date; b=S2K8PIVQDQXR+sps8IThYoLjL6uLR1ss+Sj8sM5O7iw2s569b2xxf1xdMcaEULX/gl1diY1AW7NLSj2vfgf+Kw3j2TMV4HQhwn/D2YXLAwVG5FXI8f28y0YdXcRPoDaw0UP6v1+nIKba5fQdGQ91we5AI0mUxBVDiaitDArqrfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iz6vIsxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iz6vIsxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3D0C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 18:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717697842;
	bh=51ZrwA0hb5/JjBYEU1ri4O8DXnsvTy2PzJWTaGPJ0wg=;
	h=To:Subject:From:Date:From;
	b=iz6vIsxRUqiKTV2Ew9e/92bmNSDnH3axQKIrBk6jwMHqFQG1yvP2OqKR2EvQb+/XN
	 1j9hoXTBFmosycRMDRtW82blgyvre4c91kd99qyGZP1uBwLPSG1oy7GFpCmWD8qxiL
	 a15Jom2mIgeFu2Wu2MG1icYxF+4Rke1vUihrTHru9/UA+XJaloUfB0Z8hts5c2UtlC
	 wZp3eLQiuPykUpIujMjQBNm1k4LuTAJ8C3GEbtcvnZFkQqWiVJzkd1WVAv7Aa2HLU9
	 9hsPJqEGplhkfni7EETNcCste+NezUfil6IFsK5e1BKzUhECchH1cyRfvHw/nf15z4
	 1zNTkRSHFcotw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA916C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 18:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171769784277.18062.5762148462802352177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f47aacc1d121c2e10b5fd0a3921983019be0c5d407721c2dd4722e2f547e847
Date: Thu, 06 Jun 2024 18:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717697842
