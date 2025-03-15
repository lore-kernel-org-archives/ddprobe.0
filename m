Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9B7190676
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742064595; cv=none; b=ej7Lzzzr+U/hj7sS+3IMVKb1iau7AyQ8ldUPMo3IYS1XNqgLKIi65VxPTjjr5Zs4d26iO9fPK0n10rymlJxcLCTpXCQe71a974ew9EliJLEnaRCYzqscZ9cZbnnU6VexUgWuuIrxM4VpNTGSIksHvbWOh53WF/NgZq/Ty4ja6XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742064595; c=relaxed/simple;
	bh=EqUNgAr899MLbiH/lY9rcGPeKFwJbOvFWqVO26iAPQo=;
	h=To:Subject:From:Message-Id:Date; b=Gvew0DA0ykWqfiVIIYXe4hmjQr9K1INwxllkkq0buGhxAP8sEZwjQrivkd+C8TDytxs3Szv+G9RaQed58gSwYHF3qbXD1RMVkD3LLhyhwnO3GiJeXA53Ql0QA1+BwphxMXqTVVavUgQi00yh6eXZtneK3JeFtCq/lNHWAgCEi3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hi1big1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hi1big1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB48C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742064593;
	bh=EqUNgAr899MLbiH/lY9rcGPeKFwJbOvFWqVO26iAPQo=;
	h=To:Subject:From:Date:From;
	b=hi1big1CgFpf/s1jYBPKMFS1W3PxEH2fJsEaOpWw2jF3cEcCzHF9ozIVYmJs4uMF9
	 MKWGHyN0Rfu2wfscm7SK4c9qX6HSNaIgDJlDoCXeluQhG3Ywg4MdOT8OPPe9ARTCSM
	 uubyKawGByb7LhzEZwYsSmZ84CJzoeFmTODXp2l3w+xz9n6vGfW2VWSZrbuV4Nj3F5
	 btdUvUl1YXYdsr9n1XbmQDRs/2frEmP9Tkhdtzlj6ZiyROTPp1v835h8BdM3h7TjpZ
	 Ih9/YpszbA+mNNg12VyFU/LAoVmnwQyIolfR9PCo2SiPotkXnG1MbmF2PNwVScKrAo
	 Nkt3IgGnHFMUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1BBC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206459367.5894.12072819808045821325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 040e1fe8239376fb885a521a50b53a537ce87084536feba9fe91908c5cc2d8a1
Date: Sat, 15 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742064593
