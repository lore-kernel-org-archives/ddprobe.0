Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2870818E050
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746130794; cv=none; b=hzwmiANO3WCIToLOyKN/lZDSn+k6lTLmLC4wR3q7SwrO5SYpUehUbrp58g4Vlh5rcQHOof/2acshljl24MUKctyA0VoufYF9tAZJDF3UXmecosZaRSDPlapDxoudAY5UqVrC8c9qy9W3Pik+JjlDVw0DhKsSQBEHWow5x9VYlfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746130794; c=relaxed/simple;
	bh=VSzRexIkl+8/tSvaSvFNgJQbvdpAfQdaqd0ffJEfVCI=;
	h=To:Subject:From:Message-Id:Date; b=T195/3DCvk3613IzkZU4jZx7V/TxG1KcsBsr54kyArgz6xK3xZN4+wrePf0jbN789+2ztJXGjVIA8y6pnkDnZG4F9VBJ30vl+gvduoNqSYeHlX7wNqABsBtZXC2ncWAN17GoKQVTU9/QqeidKxC78k09SCAPmTxnYn1fcTIlajQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMvtdFAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMvtdFAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC00C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746130793;
	bh=VSzRexIkl+8/tSvaSvFNgJQbvdpAfQdaqd0ffJEfVCI=;
	h=To:Subject:From:Date:From;
	b=uMvtdFAxnzvNNoHjST4u3+NU4l3Z37q2Df6Ek4yJXo+WIpG9A/Az7CaTxDgSUv8Bs
	 FqxsdB4kTOR3ZHHRu9LoFTNQjqQFZMIU7x/RLi79YST6bWTPN3h49ejgDAYXNXgCES
	 Y+nashXaQ83LA+P69PtUNnkWnMHIcqAcEOWRH7cvT2hPLljTjLa/r1vvxt7xfd75kj
	 VdJiqWWhTBllNwmfmq/H+ofY0QmXgJ/uztdMmx09+dmOkSJD6fuSC3qziJ3Z4hoeXB
	 ii7Ul+PzDUU/S2VxUMbF+6N9HQ5mQZdcslE5Rz6HLht98bPIwpNWriVCFZBDFELLsq
	 h7el2zwSfcMZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F6C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613079357.4371.941155044027067668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58a3cc7d897cd9a93f11fa429ac1e01d3535916745243eb2a8835bcfbedf5fb
Date: Thu, 01 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746130793
