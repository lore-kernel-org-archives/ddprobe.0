Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263733BB44
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759518594; cv=none; b=gtfgoja3maZZ+8jaAxvoq/aykdr47YgCp/pAjWT0O7RaM+vDGD/3z8xR2lsNSzBAg7AiPAtUmLQCalsBbATX8KEpall4Gc6tTfnozvPStWDKBjjnDicGAzXQ+1T48SgEMdbuPo0Z0rBxqW8KfEXQ505Uc9gqPzXcAR1ESf9L1yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759518594; c=relaxed/simple;
	bh=0ylnzIyw+X3iFX1yWavD71lDIFZJa694O5I9DkQLsPg=;
	h=To:Subject:From:Message-Id:Date; b=X8xK62JG91rUvjRuODeaK+/ieNaYiMoun/XNe02QJLNvrA+Qq/Eeou/5rKvS3FP7j46xrWibR7hha0dHLre00e/AfLGb7bidDaMpYemwtO9Yira+xLbrsfHN7Cxr2wThpMixuIAKyYXFOKSWVS+OsD45at8bqmzkUVmzG0Q3f7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tecc8/ZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tecc8/ZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F129C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759518593;
	bh=0ylnzIyw+X3iFX1yWavD71lDIFZJa694O5I9DkQLsPg=;
	h=To:Subject:From:Date:From;
	b=tecc8/ZFMzOsuwRaIbzuj90XlMdt2VkfF3XuYMFA+oN9OVqXN/nYkmVTJYGEdAjLQ
	 fTJ9ddW/XgRheaFIomyI3RC9r9JalUhG7T/+fFqtF0kFS3DmiSLlYA2QbFWav9tqIO
	 IzV5jt3PjQGD1HKQK/BCpxnw999HaSh8ivPPUzgLljRT7VrqCAe/hTKKbsXty1r+MZ
	 N7S6k/2IuUtl8lyMCjIoe2+hcXvUhJDVcc/wSx94N62V597mbxsgIVd3aJwKS2zzYt
	 wiEK/RTBHoQOf2CjP1ecjlErBC+HZ0mNbPE3SfYDxYTkkpJAWZd46IfkFwusOPKDeb
	 QRse1gNbp6jng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F780CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951859358.4678.18441897936806783413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199f3d4d59d6b8d53543433d24ed81c16f1739d5fd02854145509d681d0479b2
Date: Fri, 03 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759518593
