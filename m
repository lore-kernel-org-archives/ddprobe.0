Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6CE288DB
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743036594; cv=none; b=mjLnZmvNOLCbY9vUmx30BrT9HGqUxHlm2Rlt9YkiAUkTj0sfqw6NkM9A14jJBP6s2yXEvBQUCHSUQp2IVVNHwQOPWLF0rmYVkbv3F95K5uC29fNKmG/YxrZTH9L3v1SOPAdc158lHkwSHX41Th1gnVUDvSlOkdHsTjAQi63HXRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743036594; c=relaxed/simple;
	bh=f6wbHjNH+Ow3Hn3NcPVOYHUCBfPGSCXBD4OEjRjjWe0=;
	h=To:Subject:From:Message-Id:Date; b=Wdw7sRyarLGsmwHYelSMtRBvcN797842oxe9TsL6lwH4dtiL0XIxRzkFRRgTSzdrk3S0T0GZ0ay86Wo1mjbl9dWVypE6AnzB9aDjNmwlderJqV92J80W5ZjBHXg11LUfPgmYXhYQFHyuOgYq3F/F96W0EJ3E+5PUnD/pVznV9vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aB92L5PM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aB92L5PM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1603C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743036593;
	bh=f6wbHjNH+Ow3Hn3NcPVOYHUCBfPGSCXBD4OEjRjjWe0=;
	h=To:Subject:From:Date:From;
	b=aB92L5PMfifGfop7grN3hxqQs8Pv4LG7XDpCHnXibRcCYesZrKlzHrwG4jmp5lnME
	 lflcsBxDmRagwfqUGnSdFSlR6zEKlpgS/xzbHBsaHNV7zP2yw/aPW5fF69zFzfzbiv
	 BezOE2oKPHomE9Bva/C9MZJaUQ2GLkOa/9m1i1mB0T0C8MAl3Y2HvSy+bxbJf++RfU
	 j9uy2qIo+ndIGozy/wqAuehiGTDcT8JGqtD7KM9/W2yf4ZanuvVcumQYDgqQbdSLdG
	 ulJljagOjVMJlloXTeSyvda5EISUlwzlJKHCsfZVETdBiGeuDnaRWSB/uRR4mtjJvL
	 kBdEOkzrbmWMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB954C36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303659369.17284.3742579502002680132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27dec6cbac61a32302b9b4f63f55c7dc7f33aa0011ec50a00b9a362b2f21ebb0
Date: Thu, 27 Mar 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743036593
