Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB8730568F
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787199634; cv=none; b=oaDmw+640FDc46VI6KQ3zNDWSDFCGLeibeJqIZjUg1MSoq8fPsliasXPzACzcODu0uU/B2wDvWOy+UE6eVnMgnCb0+iPLzDzBBDwdLlD4uPlBU5jHJNnyBC42SRBEdjtclvoviN27cJ05ZhTOs8MVAcAHp2NG3B1l5VBNdQl3bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787199634; c=relaxed/simple;
	bh=RQaLlxojnvEzYe2+kD3oZwKDBpLtfJS2M0DmvWi40RY=;
	h=To:Subject:From:Message-Id:Date; b=OHC8PWZvLTnyColY9Y65Q3ieM+AndYtvkFub5L8YN9LID2KUlQsYNAenjUz/h/uNXRnTwlbPZ7zBweug22RxgBJ+W4P8KDhsJSKoWOVY5SIv4Ne3S3aVLeZtiTRmwQ9kHcOM9v1AqiCP2llLe03C/1/EPQMEwTAYPwlz7MsGKBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPMNq5JH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPMNq5JH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED092C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787199634;
	bh=RQaLlxojnvEzYe2+kD3oZwKDBpLtfJS2M0DmvWi40RY=;
	h=To:Subject:From:Date:From;
	b=XPMNq5JHM7eST21U/itCS7+RFzPhvuUSjZ4utUuRmOyt7knnKSuZXwF7Y+PPxywNs
	 8r8FB1a0lcPrpI+87qa6drZ0TizP6KMmonTHk7ja2yrxlAXs3JsNRdw0s4DCl6Z3eK
	 IXU9YqbsGppInoFS3Piu3lWn56Am61ra5xOVvXVB6SGzb8//R8CEVwrDYy5hA+f1qY
	 QhIQk7a8YX4RbN45caGmIpiu4fqhXIhy5w3/QcAOMljNvZMv6cMXtAUFESEmFP7CDg
	 xz890ADX++aoaCnJ2OZTLMdAarWt4dtEBE49JhVm85AXMmv2SCHqbmvqNvkLqkLhwX
	 9NgK9SKxuDsEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9740C5DF8C
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719963374.25684.14617694690045012954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d159fe8115a88de37fc3cf2e4114c38a702527a7e1fb9d3660f53ae074493e5
Date: Thu, 20 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787199633
