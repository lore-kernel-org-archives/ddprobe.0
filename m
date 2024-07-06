Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE428468
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720232723; cv=none; b=D86XqlYRqroNi+YWUETRp3xd7ht7N/E3JTaNXsT4PnQQFm1YL9v9oEU/1Q5nVTl1mcG+2atAwVqXvLfwNxh2bOxFuIakV4Tegruc2vS6D0g6nUEVicNAZhcbAhP8NQnVycb9tBZN0ozscBm8bDkc8aDxWPZU7FDInYq75RFAR8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720232723; c=relaxed/simple;
	bh=HxsYEfEUgrXl4RABm3WWdiPmxbnu7C2qeXGWuLvmqBQ=;
	h=To:Subject:From:Message-Id:Date; b=XZ36Gwq984KY59/qXIVTFUdT/mODJYsXyS/XDxhnR6haF0aphwumFMUA4SHVdPmqlw4yZiKZLP7aWg+RRJrrAf0defBLC7mlal9nPI5SFG6jqtKFmqK7dBwhn2z0zrK+KG2TKRCPhODupubr1mo3Y3qUSp7xcBgHvAJyQaRDggg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ogp5bnud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ogp5bnud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7353C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720232722;
	bh=HxsYEfEUgrXl4RABm3WWdiPmxbnu7C2qeXGWuLvmqBQ=;
	h=To:Subject:From:Date:From;
	b=Ogp5bnudN5sL/RSaDqBq+uv96YjaoHCcpq0fsLrRDiTrFJ29QfD5s0LQAGxgRKhjo
	 4lKQf9sEu+m7c7QmSbG3QTubq7JwUHqq+4RSDrr4j6JonRnOEChA97TKZoD22ulfBP
	 +PTKtSHxii3rcUu26cfHRLI0g8WmW++qNyV4r1I29MrS5GEiHLSH9RlB0inmloL7b/
	 V8N3Qm+CBWnjS2jvXZJ/HctBPAJzx9GjcC0tQm9POPXqpx5oWgZSpx2NIiLsSRK2eh
	 5jvrNNgtowi5ndxa2/uHYjXPS/CiMWeBJCnCDtq3cMOoEFcWS8tGSgjuUKPxPHZfyB
	 phHaDkPoUSAkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56E4C3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172023272277.22121.4614262860015161900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebcfacef3e08505d9ebd7d21dfde83f148f4915427efda6c68aae8e930f0c8cc
Date: Sat, 06 Jul 2024 02:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720232722
