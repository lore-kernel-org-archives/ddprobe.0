Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB0D27145D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752180594; cv=none; b=u6LHa/1TEEKhCl5pnVS4ROJnqgUchjKuBU8v82rafL9mRDts8N6KZ7A0vTpYJIRDIywUu+gPFjn6gRko5K9+Bh2rFpIXFNRsCE8O2cisgtlTdPJLBHNTUfCH3iw8pvUCIHGSuJCW/x517MsoCdDTVNzDNuiqchlAVSHzgnGYRLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752180594; c=relaxed/simple;
	bh=tvjVatM4erl8dqyzwc5IE8UOOOKDvH0K12OH6mdu5DA=;
	h=To:Subject:From:Message-Id:Date; b=ppVwHwa0w7rKnZYkAURuzvDvViltoNFjAi4EBCd5cSwoa+KZ0DV2qW672/VI9l+fn8T+JJFUd9UKFB3SaZ09WdJzr9yG/BTR/MfSaEABUbOKYlcmNXYxhyNvRaURdbu78S8SmMtQbzXU+z2qMraXZUEywlO15ORIxCRuPyz2niQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0Asmrw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0Asmrw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01F5C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752180593;
	bh=tvjVatM4erl8dqyzwc5IE8UOOOKDvH0K12OH6mdu5DA=;
	h=To:Subject:From:Date:From;
	b=G0Asmrw6NwZ1ydovNizsh/nL4h9amdUa8Vd/wusGlCBQeq8waTCzG1pvA9b9jJQsR
	 RxcJPNTg5D70DKtnEb2WbGl/Wu9oJIyNBrBMzP4j0RGFnBVXly9UuN8xfOR5QKq3vX
	 DuBT0esGlfl+q11ZbCJzA7lSN8UydcjjPgo2AWrKf2vj898N2+DACGt5/G6oSe3wl3
	 KbbEM+qjs0H91urPRcvVz+c/eYBVKmBWbtK1S3d87IGK1wENnCPAyvvN2IJZ388fOB
	 WSkBl8bsDAOo38kBefeWaSJbQhcWJsfF/4g9gjY9dLCuCa1gtuY3IX+d8wO+Q8R1XJ
	 cx6t5YVBkp9vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEFC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218059357.1901.8293471628694930914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4450296da888a9089a0c0da566c88656e43724a3c4d37ec82164da04e5e7c9f
Date: Thu, 10 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752180593
