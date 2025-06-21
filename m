Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222035258
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750481994; cv=none; b=rbDR5zSUzUskpKguPKkKQ/Bedwd/rruwsHbU+dRX+XdwMS2d9ktlGKpAcHg2ctDt9kUy25DexZuP76p2Z5C3hODyA+tU8DZkdg8JTDWybTM0JZH/u/qvCV1HLev4M6qulWunPYvab3rZto2c5J1lgvMwRKk80MW8nRdpX4iqHvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750481994; c=relaxed/simple;
	bh=NKeTe7kRPZdmKh1CKabRb6fuJT0P/KQRozUMRcekYlg=;
	h=To:Subject:From:Message-Id:Date; b=B1K9Gc+AmOSlpla9Xc+BW9JgId/xgsEpAOfNpOfx+1YufduN1QpJPsc7UmXxf1IsNF82rUleYEJOt6VtnupGjLCa0J4zM+jvReaOILEuUIO1MdNyoNmWAC4H//icwnsxmwrQJJw9aILkpvaDlGVY13cjOjJQ72ABTBgIkv8OVuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQpDXPWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQpDXPWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6694C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750481993;
	bh=NKeTe7kRPZdmKh1CKabRb6fuJT0P/KQRozUMRcekYlg=;
	h=To:Subject:From:Date:From;
	b=SQpDXPWET9tG4YVZlVCHHUAPAt9sfeDMksMaPu19nBVTJenuMaRHh6nC3nRepOFV1
	 DfIE3KAOgS0a5QOQaor/JhmBBUoXNmwOi/65FHjbjpYne3/zPOjjHie4h21xuJP5up
	 B8GCjEBsLif24/s4Yf2HfwxvWjEWM9nImml/koCpkSdBhyTC1EKD7+2vEXr7P/PfPY
	 TI9tDJNUQs37jCw0uOtVossDzQc8/ZGT4V+ymWuhRJj25hgV4v8eSDNJyH+eeR5Pwz
	 BLv5KxsmVb6FDlfR31w57nD+QAP/C/qUCl/mZhvg+vOMOAHpwVbBCxcc6c8MY1L2k9
	 AlrOsvRPd2WcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94512C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048199357.19332.17810341849844461536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5326effb9d1314624169a32b64e7ec6832c18dbccb3762eba5119f06b7c72ade
Date: Sat, 21 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750481993
