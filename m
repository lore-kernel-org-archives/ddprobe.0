Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B292222D9
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782039994; cv=none; b=DGVwf7bZr4K/1gQqQLzQ6LfchRzwbn83KqfbYs8rlCs4cYXvnskjeay2EmfWUdXnPIMyvYqoRD5OCzlQPpVHKhmox+22EwN9SzslXmZhxpk7aoJ/8NAZFyvhs8nruJr4jjjmQpf7vHkEvvh4eaN+LWOSPsDJ0Zpci0UUrmP3kWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782039994; c=relaxed/simple;
	bh=F+Uh/CKQ6QAcneMSJZ2zrNU3B/M66wIJFe/zbSEMMQ0=;
	h=To:Subject:From:Message-Id:Date; b=XpcKhj+3jkMhIgWAx/cWctslwk9J5bWSFmXXgB5EsXc4b5spNbjMrjW+f7vfDuCpvftPKJbg2XRuUEV0+OoWN8S+8qHO+RgewSQIrh0XikXTXczCXF4NnIb3wqTt9nlToH8eTvNdnlcoLMG2BOFs8ZHBeNjw62Ulz4jB1A0QzgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwc/Agtt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwc/Agtt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE9EC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782039993;
	bh=F+Uh/CKQ6QAcneMSJZ2zrNU3B/M66wIJFe/zbSEMMQ0=;
	h=To:Subject:From:Date:From;
	b=cwc/AgttSKyhjK5he4vbY/jY1OW8dgFo0A/VL75yDWDR7jowFoc+v5WxyjL8itEDI
	 8O1Bhb8FUILSIMip6+UKzHrrU+aN+U4TM/SFCrP/1gVsZDn4nLkpqPvnlnSB8Zh0ih
	 brgbz0PTebjkMwjoEptHCPDRBSaF0rfQXsAjr1vdfA56odH4cB10v8Qwn9gkUBWb/I
	 4RuHNLP4ByLNt+gZ+2wYxQMaXObZmoRonO3x895i7IX1fXf7LdGBEa4nZqmIg5og4M
	 B65p1v4m57zM7thHdEf3jom9Bnha7cGgm4YHgYlgw4rX8DdbgKb4IIpd4YNNW2Woxi
	 kcFO542SWHFlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2261CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203999369.24784.6330494462506225735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d8306bb1f5d13d3edc040362a8fb5e0c1469d71c88dbbbf46e4e5759da7d34
Date: Sun, 21 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782039993
