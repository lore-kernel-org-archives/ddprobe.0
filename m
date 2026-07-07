Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3351B274B3C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783466914; cv=none; b=olg78PYqQL5S9X/oRZ7tDU+khaYMiFzeR+INo5f+QMs51QmK/u6RCt9Oh4YphkJSOV5VV051GI1Zld5WSrB/BCk5aWG+goseW7U11HbIIJaAUG/k3QR5OuAaYtfWyBRc5CCILqnvajDg+VcBEVjXE/wuoGhVStV/D+50xznLF1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783466914; c=relaxed/simple;
	bh=q61Rp3ymfpEvhdXA1z2x9j/To9x2nGDY93jiJHjL490=;
	h=To:Subject:From:Message-Id:Date; b=l2uRDY9rsxFrR6RlkJooHTjbpZjJYoxP1VzNgEiGRWh/25TfnMBpKHjAidK+Qt5HkyDQ504eKOKyTJg0S1j+0482khMX544t1dNgxW8DCsnebzOJQok5nweakYfopQEBWmcG4KkM6AS4fDyT7jAi8zJHkkQmBtT8cv0Rn2CU/T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m354GtTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m354GtTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB666C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783466913;
	bh=q61Rp3ymfpEvhdXA1z2x9j/To9x2nGDY93jiJHjL490=;
	h=To:Subject:From:Date:From;
	b=m354GtTVx9eqG6qjl3cv7lZk2gyQMHfsDz5+74rQPW7wgcPaTYtyOtWuzWrJXsEa3
	 GBcbgQuiHIB/5ACaQoGsbHhyTHdEzSDHSe6zITqxR/mOI6EB4+0cUKwz+pPlc2fVxP
	 /WJYIgQUCe8id4ieQ+STgZyix9B5oCbKzoV/AK7N6lE2dxhpdXGHX+q3YDV5QCEXZY
	 DJbJBi62bqXMu9838OHdPU8/1vV/VBdJGiAFGq2w3oXun7fNF34c3u2BJ+sB2fdTtv
	 XjaZFMQXdSOk5d/YmoUlyI1pmjv3DA6uWnYN6B5dUXE9dXEVJy0mvh/S+KXY+1d6qy
	 /gwfUOMH/x0Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9085C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346691368.9258.16373193420631967387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afac61f96f2c26d3b9aae95f04aa636b35f452b7e1cfc1f48df274e26f5aca75
Date: Tue, 07 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783466913
