Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560F14E06E1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791838234; cv=none; b=OEosvJFGq/Q/ftXlh5ByS80I/YJ+1hu56cl/jzHQHBIBSt9EQr2p96Y/nTaRTeuyRUDwVvEQx+6lcOBZjDDUuHXESCe2lhAkKOu19m8ldvCZ9mv17ic3TKkDX/ExMQyNOspS/E9aUXy9+keTrMmkzMyiWGu6y3wsbSONDmShUcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791838234; c=relaxed/simple;
	bh=Qd3hs30dhNKU3pxMjzOBzpa9bug4spZSGP2G93R31L4=;
	h=To:Subject:From:Message-Id:Date; b=A2B+7vNeqtzgPQ2DkZRera6jLk/HVG5UVaAOwWPIztn0WL0xIfNHs2fSZWJXStUgPQE4HTXXnnnvAAzZnA/LEDkFZKGbmO262ZoP2awimt7VN2DXNYKCC7NQzz9XEjCCh0MPQw+GGPbMpL49wSCXtL/430HqvGoXDdhzK/TE0pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtCVo8eb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtCVo8eb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF83BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791838233;
	bh=Qd3hs30dhNKU3pxMjzOBzpa9bug4spZSGP2G93R31L4=;
	h=To:Subject:From:Date:From;
	b=NtCVo8ebfBn+7AXxed61Qb5LEIR91U+dSWOxV8omEqiabFhl5JXv81BlMTtnBPhXp
	 RvlSe4EdcHEBdhLQbizO8yJ/VlcRNHFK7sSiD2fzb/rlNPyQtajCYPbr/DcwSHFSqa
	 IR8BCNFnqRlJ0ypoxDNCIan/D3d3EhZLbkrIbE+T5x51DnEEDXNPwJ1mwxg2cAcX5i
	 UkIbD5IpdSguzZXLLMzB05nUzQIhMToNyV6tpGoxxu30ltD98wEEIPM9cBVrOKYzx0
	 D8VOAg5at4HOoz1oQi+m8cqBczWeh5tiQ6yTm/RC0sZ2NqkU9ITkn2bmyAGgU6hyCC
	 dvsh0fQxXqPkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAABCA9ED2
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183823369.11879.13896168162061382073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6dd6cdd68588c46935addd6d085b96a39cf80c7b84803cf1950878954416b01
Date: Mon, 12 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791838233
