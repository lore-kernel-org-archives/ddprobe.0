Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7A71A9FAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784571514; cv=none; b=WWCfQI+SSiqM1iV9iuSAFXMBNllfngX3Yz/BL30XdmrYIN85OYrAeTEFFR16DNLTpgpu1QdOdwxI/yzQKRj+2JejXxjjxQdpXVAI++PurfEbtF9Hd9a7fuzvxPUvnU0gPmD1vsvw6s5yrwn2LsBG6rgoWRzXY/do5AQJR1IvJTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784571514; c=relaxed/simple;
	bh=uTo4IoIPYQP+X4uPCHyjbklq8/nIcfMSaY05j1CSSZQ=;
	h=To:Subject:From:Message-Id:Date; b=TYKyxdjB+1Jf554WOyB38Dd3cS0D+68ctN9hJqnfqPkuy8yYN16H+9Rb+g+M1Ypg4PGFCRzxuLTWtPjgQEYFIVlFtHfYTpkHTjObS2Ddz4/iZ2+V3yzpjVE5JqsaTHRlUkgqIvaB1Y7+vwhF+NMihGtRf1ceiCMRkMWibVtbfb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5PAI6WD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5PAI6WD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF683C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784571513;
	bh=uTo4IoIPYQP+X4uPCHyjbklq8/nIcfMSaY05j1CSSZQ=;
	h=To:Subject:From:Date:From;
	b=k5PAI6WDlywCMkvowo+yrpafYcnFNCjrpIYi0sOgSuQHkz/63moEHzwnZzP2QIG1K
	 SPga1pIMgLse4xsatJE9gihiqBexbpbgrZbJY5q+yMq2hTSNTf1JV+1kmtYgQHaIAu
	 sUjIDqSpSWY276QPm8iaKgO+ofcfF3WvLZisZr88Z2YUplmEeLPP2bMvX4wNhbX2AE
	 hyEQhbAUOIOjpf3pyl3c/+y30ueUiYOT0OsEvWlPDpSyhBOVF1NBeyr455w5z6r9qF
	 C8izD90OY8eNM5xkEx/BXa+GdZOciHHpgDMRQLHT3V5MgXzNUTnNvtrU1wkqg4ctfR
	 M89EnbO0HDE4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3ADAC44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457151372.5332.17709324351982846976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c57f9e83f9e71a2970d97301812e19938e57ffe0f292472e43d88285721c60cd
Date: Mon, 20 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784571513
