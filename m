Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309373BD246
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790926234; cv=none; b=G8ZDB6Z6AUEvIeU8M3fhGXjNhKEuBBuqgZCKcR24x8jAGYfXcQ301nrX5Ut7R5EgkMQ48X21ihINVdRkM3EM7O6Vxw5rOPUiDfp8N6fAOXg8j3mq10Ro3wWOhISWrd+8p+kN/hM0aGEGqrIESMcAvLdyFf+AC0j3o3AHPM8ra3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790926234; c=relaxed/simple;
	bh=c202opRw//EzgDm3ydIExMwGPAwCqttPPQ8J6K9Ek78=;
	h=To:Subject:From:Message-Id:Date; b=CN5JJMq95Xi+iyFvnS0Ze8k87K9aGoG7b4Kv14Cid1HJ/kKaR5hmLWA1/Gnut6sFLdc9LWWqDm634HA6IDPrmsjtLfasEzuQeA6jdEyrNjdXh1d11Mm8bF352wPtSMKeKAzPbPuozV+6n7A2jq6n70s42vIkwkpYEPMJlL+EyF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7QguIAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7QguIAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC60C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790926233;
	bh=c202opRw//EzgDm3ydIExMwGPAwCqttPPQ8J6K9Ek78=;
	h=To:Subject:From:Date:From;
	b=j7QguIArTkRolAv3HGH85/HcwBrCMwjW2cbIRDYEKrKBiojYsgLRDY9caIlwl4wKA
	 5iHLnWovd2Kw8HOjHnTKyFOBhTLKFLhsi1TTFOONPlHobU7MjKHkqU5EnGLzQNAyw9
	 i+s74EZ9TiDtHwl7nXKLW1G2+DYmnRRljG/53+7gFA7XDhK1DBZMZ3i/BT6ks7EXI1
	 HD3iYSCkmrbcJ0bPBoCLOoQV4Wnx/YPet3xLMiewVd+cMD490AJCyLuMoUKwoHqwFy
	 1gjj6N+Y8ywB8J7YWAG06HQR+kvad856jSqqqtLVCrQNZXZrlM0VFxCRbYY4V2NIYy
	 pS+VGXyQTKTGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA025CA5FD9
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092623368.27213.2917660358922631561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47558fea041296030a2a1ab4f10cc4e0a7027e16679fa6f5be770147dd9b524b
Date: Fri, 02 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790926233
