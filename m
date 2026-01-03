Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DDE1E89C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767447834; cv=none; b=tw1FOnJYBbSzSb96YQBZrZxqnJ1j1VmIe034XtE1iO9/ipZeZ4CHEUV55GjqyeEI1slsJCCt9Qs4ybMUgty6Ue+XTGTaXbitz7JTx401iL3R1E0GnebJNRxtoorXWy8aK3CCuFGGPVS1qB6GvO74P3fbRsMhM1Hs5Cgw+/AhAwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767447834; c=relaxed/simple;
	bh=NHCUGib17NWBo1Jv0jNbTCJk7M3621sXsx07qiRU5cU=;
	h=To:Subject:From:Message-Id:Date; b=IN8NYpU5OLZ4q0L4KnJam6lbtwp7xBKyydyXioViyNCEgPF5E0u/rvhkwn7d09P2t6NurHVmPYddoqRJAtL+qxQD72po6kGTXCc7UH5cxyX4d747AFdX9KM/uM83ybKhez0lBtOhuiy7JCy+4wBXKbldHwQNEk265wkJLR19TWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIUMH1YX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIUMH1YX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DF0C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767447833;
	bh=NHCUGib17NWBo1Jv0jNbTCJk7M3621sXsx07qiRU5cU=;
	h=To:Subject:From:Date:From;
	b=iIUMH1YX4QEmCrpXUch0fcWPESianKTQ/94EPccMZWx9WzF2v26SSTV7KyB0+IJE1
	 cKq2Dl+a5DpLoaKncBRqHcCukt9RMuN4xx/Dknb3Dyol+waqigruwWGk/zYziC+JlW
	 l6PaJN0ZQggYmOkraPvQ3vB0upsq2XAYlzjHmSedhbzAbUZFZ6uRPychDEd1yUKn9e
	 ohdpqTW0AE1LadwJGSBr0VafMdPi6LMzhqe13DoUnR7w9cYTGY5OHb9iaBaWICe639
	 2WyxG/SULBSPsXr7Whv7UOvURSIjzKMMND+bJm981aGPmaJMJNzXS+CEOXTG0Eb0FF
	 xgokFneOhmVpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923C2FC617F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744783357.20399.9775654766652751919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3bacdbe5681e1cd9acfc99740623c3f08b81b31cc8adbf1f9d0f572374e83f
Date: Sat, 03 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767447833
