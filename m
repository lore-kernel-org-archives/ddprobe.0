Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1104140DFA1
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775868454; cv=none; b=WE7bbgCJE4AeZNQi4jrsQFxNHUQ7990Plz1NGyFpQr6eUVDr29/18l4QK57cxVS1Ut0rxznVI17YmYxX6O5x2gNqPTO+GUn569KHvCZRRIo7xQ9j8PZBfm/D2uR/7eFSLcGY83d5GquYyUJ0QX6cWzcTkuybDff26ETLHI5sFX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775868454; c=relaxed/simple;
	bh=3TyPZTU/xag/Pbk9vmW3gwV33/Jl8g5kKZkOKR+u8rA=;
	h=To:Subject:From:Message-Id:Date; b=NigzdXwgQU4MIkrP4QxSBVMGa/HGyINuLvRhFBZot2Yem6/iO26EP+sZXnXTgxMlnxMSR44OAPQzmvL5rGQoelvAgBr9ZQ6jiRGc7S4unhSQgbs0ah1aEwVT2EwY5tdHNm45rSP+6QEoJjw0hyvr6J5PYkXbMWNa9nM1BZcGmfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mN/I+roV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mN/I+roV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1926C19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775868453;
	bh=3TyPZTU/xag/Pbk9vmW3gwV33/Jl8g5kKZkOKR+u8rA=;
	h=To:Subject:From:Date:From;
	b=mN/I+roVpHv+fOvkY/AwMETi1Agxz19x3f0ezrqjZBGTrIWbfrds8SsdiRAPCgSy3
	 FdbU464qbB6DzgTF/fDakxpcL/iEzSHmzqpj3LDzoDDsDh988Xfk+jePVyimfCm8Hd
	 /FKQBuWggZDOFY5hSTffDStdAkmEbX3qOjNV7yHmyEOUwOo5gqrTtCgFQLdUHPeGq6
	 U8U+BWx4xNoVqTRsg+nETQ47WyD5ac6OLG/d5P7k2ePGpodIBsjA0xpWUXu1T3Ufm/
	 mPwgTHme3bmCQkG0U1G9Jly32XlCUzz2M4CozNMLyiXkWFRwmHmfaCMRgX6phmNVQU
	 i0URrl4IbiQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2F0F45A17
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586845368.23078.5668949515744600381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e260c39ae7172e87a4d75ab3efd87eca22a584b44cc07130bec52600d754100a
Date: Sat, 11 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775868453
