Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4584D1A285
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775393134; cv=none; b=SSVOoIMn3vz7zzg1xN4nrBkZf5CaTqnT8bPlQUUAskMTXBonaHY+dFfw/yeXi8pVjCfyUTcT22Gp3tM/1X/+MyLQL9fH8ckRIUIPL7KZujiFCFQGw0IU3yXxXWFW1AfMrlTH273ktE5RjoT1Gbk0i4tFx+Aal3kfX2HKnxGC4PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775393134; c=relaxed/simple;
	bh=FcHqGjv6z6fIexqe96FzIctrTFjHhvsifhtaWam496g=;
	h=To:Subject:From:Message-Id:Date; b=ABqCV71v1dXbxmS5YQPmvNaSgIIC1kBMcZWTPdHJrIgB0lqT57L7xHVBZc/O+gAnIssjzO4eSgfthEFymoXq0ljDNedCV3ZlZWHUgD/rdU621fnuqkcaibZ5IP0buIEeOt2112hXpRwVFqRtqFD9VxAar/AypoBS9oOLudyVmrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQvihe9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQvihe9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4012C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775393133;
	bh=FcHqGjv6z6fIexqe96FzIctrTFjHhvsifhtaWam496g=;
	h=To:Subject:From:Date:From;
	b=dQvihe9G88WFgRb5SPfdRBK8/GFPBQfwvKq1jVUaG8Fz11sIkzo5hMpWp1XRG65JM
	 3J+jjvdPEk/uMGqPduWP8wvEQLUDMfOzHE15DfuTF2I8XuPBNR+2Rv8kbLNQlu1ieM
	 gnFi/n2oXYUmjHuI7ErVAt7gcGlni7X+DLV4CbdMsq9CTKTkBVbLCodkc0/jyMCN2V
	 UFXBzjODO+7RuDN6FHIOR/iEZhHClbwpQNUx8pQCvyHFChMePW83S1vtdDtUwBsVdO
	 q02KDeha/1JBIQaDdQ0HCC2gn+axJs/KxsAur3vDTILCPTXY9VY5+6VpK4gYqOa/ui
	 1Z8RxH6ov2xYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AE0E63FE8
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539313369.30867.7278941930331411572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916be7a14de3bb32fe7279b8f15ba88a029a31ed7df28cd35611702124a70535
Date: Sun, 05 Apr 2026 12:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775393133
