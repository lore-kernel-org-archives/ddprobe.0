Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4826280B
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743556194; cv=none; b=Q+1cIRRCIBMld0nFIXc+zXs0iIlHsjtbBGp5SkUiaPA2c68TdqSGM/jKFx4dATCmQGdIl1/3LSzG+wkyPbOPdclFq9fyPyz9MnikdGr0j+o9xHVFoGV3PqERkKN+ZDxwLkHog4cM1q/xiwRiPEcuM3ORiGRPps5P93yT2Jw0+r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743556194; c=relaxed/simple;
	bh=6D/eK4G0YjzdgE8qWDqH7E5li9+t7Ih4QbkUvyh5CxY=;
	h=To:Subject:From:Message-Id:Date; b=Xg4J3YygbuUGuW/9oOf20raQRVGolAEhLu0jRFSdr4VAbr5BTwjNBSNAuGIt4igQCv7XkCGV4mx5rzhFgxq9L0Y7nEYMEkp1UCNDjPPbQc0sAYrd7nTcl5lvrNtHN6N2u8J156w+lxDSwXdR5IjID+9C1fdDJebKBGxsovWTYAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwszIIKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwszIIKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8044C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743556193;
	bh=6D/eK4G0YjzdgE8qWDqH7E5li9+t7Ih4QbkUvyh5CxY=;
	h=To:Subject:From:Date:From;
	b=kwszIIKVi2OIdmlMAv9DlftBMbpErsZXFn20MzNsyskYMhKg4UBnrkDG6pdSzG4T2
	 CecNh5E8k9SJFqJd142cnX6IA/nWlyDUnQJIFyXVjprfHV3d+fX1Ze5wnPEWZY51w6
	 7HcfrHhVYrGza4oPKB7Wl5/bnfWKP6MOd/hZCKcCmX0CfkAzFkR8PG2nwAksjO29Ks
	 IjFDTtbmsrqpzu+En0RfjjeaCp7xUQs0PkbRb3fdGwAgoUu1fNxTlggvWVr6wj6TFo
	 MVimCOpZMnmeCQDUACEF29/Rc8ChAbsEKs/01YEIxF17j4Klc2eXgiioXtc/EbHaMa
	 lth+hByQqPtYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D82C36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355619364.28915.3423090428061833448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c5218215f5bb42907b78c68552abe6b1198f2602c131c88f6aa07649cf5773
Date: Wed, 02 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743556193
