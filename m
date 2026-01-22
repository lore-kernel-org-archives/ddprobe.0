Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3684235CB9A
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769058234; cv=none; b=TpusReFOSVyy3Lyqn90cwncsIUnUwWDIgT6neejNTTQ0DjRwvpprbGCzopNVlPMu8LT0isUtKl0IGgZLXq01uP7KwS0G8L2BkIx+RVj/EfMOxRpRSwicdZSR1Uo9aRj9gxd3sckqVVrTngNyrQx4K2zR/SEyjkES6uLua+kKPtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769058234; c=relaxed/simple;
	bh=4SLlvpRUDIDzGlt4g5uc6auZmBIH6ikH1Ms7UK2Y7mc=;
	h=To:Subject:From:Message-Id:Date; b=Sm29XW9kOl6vtUJL41VDS3SkOUfIVsfJvH7g7Ar5QXurAQS1VIgtzrkVKHwpmsUcL7l5o7lDRL8UaHMBn7DtKjs/jBh9YHn5+TxeNyzx1zraMGC3CdRT5cNL6oUtat770at2EY337r+1eHANdOYDZP36Evjn30aIOp4nihiqB5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1K0Wfhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1K0Wfhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD3DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769058233;
	bh=4SLlvpRUDIDzGlt4g5uc6auZmBIH6ikH1Ms7UK2Y7mc=;
	h=To:Subject:From:Date:From;
	b=c1K0Wfhe2HiNIB1IbxxLDZKkcmTV70wPfuAa8hZ9cD88mdyCcEOyER6H/FER1/9wA
	 2x+95dMZbLHXw0RP9yo9QsFiRpE3Y7kJbNZeAtTd6kvM3F9SrXO+3iI/xYNQ1jCxjn
	 wG/VrB5waSrdKfs+TyPxfuuLQpF79ir/v6wi+vI6umo9zRYtys+rdHqPweEBeBPCGF
	 rDjcqhL5hPu9J5VIk5FNSvpPCg1SjzpQGho/xKf+7ywL8cM2Zsu+b+cpmpdDY/yWPk
	 FKfWQCN6xHr/KX4WJvGRe75N8sh4/Xgby3kr0AO4Qq1OXiPA84+v6MiOZyNMXoTfH2
	 Y6ud02G0TXDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D996C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905823363.26799.15005861137420894075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac6081803d4548e6a8bd76cd7246bee5bb76f7a60e2006094c854345c1ec1b3
Date: Thu, 22 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769058233
