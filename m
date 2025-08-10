Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D851D5ADC
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754821794; cv=none; b=G9jfQzQB/loZDmnRjXH1UwabDo0ZJRpB4XgbPJYecblsIKqJFmMfDXfo3NYNwOfpo5PWj9Me+02Mi103Ml0VRtAbOB1J9AUifzAMdSKslw2koY0wmaao9t2JegecwRhTQrzTmTcCSaxiuPN8HBxKo74CL8RjweZm2/YCe63op3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754821794; c=relaxed/simple;
	bh=prWCTBuHetgqjQXVH0tZZkGXWCPKto027KPkvLE/AS8=;
	h=To:Subject:From:Message-Id:Date; b=d8lq3zb4v3AhkfhkC6/nrSliUSQuPNjUw2j3hG0fRlN1ouTdKvd/C1B7qm76qE+Hk/fTaO8Wg7BpttDYCAMle/62yBYP8Xp/9LDicHvS0oU0Qz9WVbyvSplaOQVDjxtuMwAhnwMz0T+CAw5t1yUdRCl/zHSefkkj28GK4XF1Mc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5K7sPjr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5K7sPjr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754821793;
	bh=prWCTBuHetgqjQXVH0tZZkGXWCPKto027KPkvLE/AS8=;
	h=To:Subject:From:Date:From;
	b=t5K7sPjrxBquAM+braRl5T68joHqtIrLxoTsWRcj5sM2D67owY/fOG/1npr/wmHxY
	 tj0EbfTpGFhkUvPBKO1zorD0IMgVf9VIO9B4To6Y1NF2gcXNdBJ3Z+wfqtiDGXU5nV
	 G85L4r5bJYLOkXEEzOL95+ySfbWdUgGmcsqpQA+jJYpc6yDyd4ryp5tG9fPbfg2i4T
	 bIMqIr/2lIkVAn/E8AoZmo4Atv+PBlT0MyM95ckMPG256trR9tm8zZ7UuDaxL5cBf9
	 JyPv0XPeymjg/mhUBc3k1MFNyKsWV/ypkbw/+sU5cxlZZxZeqgp1skSZQsGchzLVVy
	 ITxTTEk27KQ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B9C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482179357.15066.15654880702977338529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 360e0961ba702fd206ed3f741121faa043c216b3947ad42044b6eb2dc77cd07d
Date: Sun, 10 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754821793
