Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342DE1DE3B5
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762106394; cv=none; b=R4IqH0inGgb8gcfsiSP5/U6CdB62YJOJkguR3EkA6AETCm4lMT9iWFSrD7phonGYyuFbrcsm0UME5jUcBjt12XHtxxidKc5t/8nuMYdBHIckoPR/H2tGAJRXU/dd9bTyFP12ysRNna/mtUOrW/kHH2MYN2m/N6Ize5BrzX4lDYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762106394; c=relaxed/simple;
	bh=NRIewnMXO6KQlz68UImR8oltJA6KCDGw2jSGFh96IfM=;
	h=To:Subject:From:Message-Id:Date; b=QHtxj6/s/lKz+NFXoAKHG8dYPmEi6HPLt7II02Eo/GKucevVcX8wX7IDvrWDnFmrPDkW1NvpPTHVvz3QDJg6Msu7hsLO8uFgANiyfo7ofZvS+xZP6MPkTkrewGDSpke6H6+GMT9PQ4i2SlcNTVSR2vnQ3i3xHeEBJSAek0oDMHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJ3UstIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJ3UstIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4469C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762106393;
	bh=NRIewnMXO6KQlz68UImR8oltJA6KCDGw2jSGFh96IfM=;
	h=To:Subject:From:Date:From;
	b=gJ3UstIyeCUP4iuhvPyriThhceJaxMJ2OOGROutSL4g1J4DdlwpnNzbu6C6ClIV8j
	 8SV9OsdChZHV5QF9wPmLNSIRrsrNcCiiC0/abnkd3kEwyIU5Ik6mlI7DKBor68VEbV
	 hk113VaswIN8459uF+VVO+CS6XqmKYGR32fmuVRbDSXH6KchFbtB9totOw5UzARGZ4
	 hr5CyJhAjjHomRzWs8rRaDrw8ibJl9qUh2Ejd1xda8x9b0SpQmjKBaGeU1DBcAjJ5t
	 dCygRML+Jf/7ZYUoiEPKuHM4nEkAfgCW2lGeQnzJ+Jxdv1f/yOR+hptmhF/mfTXqKt
	 ctjIbSNp1nnTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BCCCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210639358.10759.13833936556016707943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7093cde77691c20705f1ee84ee0e5dc2652c2dc1ae4d0dc5efc5fc920bd7c2
Date: Sun, 02 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762106393
