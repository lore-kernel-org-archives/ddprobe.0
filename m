Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3085A287518
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762018794; cv=none; b=cQWTO/0yGnCHQYgedNiyg0nvTNTYHNGYyeCZywtjSJx9zwjkYssGhTLCynSyvtoXjhTZpu1iHuUp3fhpaRNbOPQi3heShDvz3ljfv5QhNa1D2Vkm0XSC//2nEQnucKAUqtzC9xGVt2HqOZRziXsp1m2xysGEdzuU13pOrOZo0R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762018794; c=relaxed/simple;
	bh=hzyriLpTEo+GSZCeWI5bl9I9CrV98pw/utcuqPPg9E4=;
	h=To:Subject:From:Message-Id:Date; b=MPkqS/MZ3oO1Q/uhBmV3JyaJUvYh6d1k1sZ8QMtOlJ8tE0rAsJn+8CACJE78FrLyTiiTc7sviV3w9b6Pi+jF6YEkC1xA4lutJdaDLkZWcxe8WfymC3i900y9sbWewBFVdzpaBoewFJvb0FgEKxPA3IpEHJOea+9ruRyvfmcfL10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNWQ1OEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNWQ1OEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE30BC4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762018793;
	bh=hzyriLpTEo+GSZCeWI5bl9I9CrV98pw/utcuqPPg9E4=;
	h=To:Subject:From:Date:From;
	b=CNWQ1OEsm02+gWlzuVB9W63Fc9K/i8j5cz6TenOxuTAxmSkc9om82TxpbSI2ABcm3
	 StO9ysYq9dCTBCUKuvOtkKTk5ygtAXfyHvhjflPDrg66e5/gE/cjTmFAk8OuU/C97k
	 iVXPqiAfE/2KIRNSq+F9MzY6EFtiZ26YwCQVVJcm5UbvhN450wyjisMds1a9rXp260
	 YuFBxGlhKJYI5KIPODWXcosDg1dKZn9iKuLwjRl8QzInshXQsngDO4Fug9p46HgXtV
	 Rhw3GC2yhI1jpWj5O5/HKZrVdC7U0v4PU1kXVKZnaSLD9AjpuJcV/OE9Vr3SxXbtnQ
	 R8wD3GCySIe5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B830CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201879358.921.9013544999065138982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f38d970ac9f936573d94f06bcf30f6f84abd63e8dda3329cabe8148bafc844
Date: Sat, 01 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762018793
