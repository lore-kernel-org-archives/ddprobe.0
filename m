Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D442E88A7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762255794; cv=none; b=g2LvZcl/StARDjYul69evfO2yVQfzJf6/6qWd/cmDVUDHL5WT0VhNkoykkKJjNJ2Y68H9uKxmgRFlTtOiRv2VSjcm8xjMp+jY0CNg2jprwCgICF5wwD/V9AXNKTid0u8+RxtWl1yoGYVfDllHs9jlJdhefRUk5bvDTqV7Jpu1nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762255794; c=relaxed/simple;
	bh=K7Z8WboqBu6GMVGA3MmOepSmsBiE4+wIKXB3xzusgBs=;
	h=To:Subject:From:Message-Id:Date; b=PbYRtbUZJBEXkAUCMSQ1pnm0Gv3RK9HT0HWeIdKIM+dPmNrNtaI/kiANf4zUdjGw6UYI2XobU9O+7kj3vYASHcwimZKNNBHrq3dr74dRd/9b7L9Ugfp4gDBMs3wK3HLxlxa8CZLx3yx0GnT48akSZ5hyvbEN702bqShE68kTjdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WI+uOdb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WI+uOdb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAF1C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762255793;
	bh=K7Z8WboqBu6GMVGA3MmOepSmsBiE4+wIKXB3xzusgBs=;
	h=To:Subject:From:Date:From;
	b=WI+uOdb1hnPFQ7eE3Siw8DIxd6F6QSfjlp+zcoIMHU5Mgc0roD0ty2eEr29Gh6gmr
	 jW7IcqSiBRjoA4AT60zqett+UJvo3j+7KxPHh2Yzg29z9OUgju4CJU/AKi/ZW/rgJp
	 W2HvSsUpa+lbWcgPe3m/yZWF1GeXRVv8jxXZmAFhy7O0uxqTNMabeoVKC1zUaBmUwo
	 wCFotqjdjdksDET6U4kRD2Ru/sirlauHFG9bySrV4jTJ1ImZLSili0Vr+Zve1lgzLv
	 wnGPat2hyA6hQcb6/Eve/SAajHKptcNoOVXJj5X9RFQtb20ZmIlj25aUOTW25gyGOp
	 oc/ak0c8DmfgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91540CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225579358.8411.12770831893627922989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62b6a28863f73fc635a093af35b6a5d997effe56219119487c7ab6e6e666b13
Date: Tue, 04 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762255793
