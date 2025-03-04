Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6098418A6D4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 03:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741057734; cv=none; b=eEOlrDhbyTfbXOhmeRMamrrd+L/ispxvjQsULVsHc56j2QphZfl5Stczc0uQDNhDEnX16eT3YSOgXMmKri4xGJuBg5mB6QW+I/S1svPvBcBot/jpNiDAFVtE0qYsQqxogoKL8fUj8zu5OTJKOye9atoF2QAy6Mh8bhNF/1ylilw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741057734; c=relaxed/simple;
	bh=Fho2Doqh0Un+uKHGuomla61LkXwe51hrMWJ3yjg838k=;
	h=To:Subject:From:Message-Id:Date; b=jHkQGKjLsPeCuSuyXCubDcf8Dgn9N39tpPRvOtIcLkGk1peaYP8cATgr5iD/XgPQpfF9E/10oIbps8JL0NF3Lne0Ft6pbCYaD9y7KYeGKdrlJv5MWbk0d8MbCCwei8R3eBgeyEzPTK64qxovMMENOojPWoA15i0XOqzUfwSp8+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbWfgglo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbWfgglo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD801C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 03:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741057733;
	bh=Fho2Doqh0Un+uKHGuomla61LkXwe51hrMWJ3yjg838k=;
	h=To:Subject:From:Date:From;
	b=BbWfgglow15E25jBolxnu+Rq+O7wW5X+oI8EOpI4JgPlFEarDbK6ZCLXWj/M/TzaE
	 UVzH7O18j1Tn5fezGL/ygbMDjzWoEkLLbAXTVo3bBWklRQhDKodqnqlApXZwv1+PSU
	 aqb6TJ1Wq7+2hWlWFA63K0TU7mGjVFuAoe5lF+vdAENQ2wrzraHpbDjDv6TLyvlswM
	 75pTB9IKPfRJvs4OYYV9cB4PsHxfEKKlN95zHZ8GCvmgQRMtsojgpbCAs3NFTttf9u
	 zDA1KZlWq9GRpbLdmAm2AbSP51j8S4UI0q/dr4eR6Dkbq3b4xPQf/dFeuYxYXWwmfo
	 23nkQqnlC8nkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CC1C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 03:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174105773364.23675.1510766243835728917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6387a7cb4a1ed80d28d0ff395aeb9263ef92668009c9b8649a410017e5d8b6
Date: Tue, 04 Mar 2025 03:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741057733
