Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E442B280A58
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769565834; cv=none; b=IM3EWG1N156ShQnRCzOk0KQ/C9jMDFnT2as9LDIXDmKmF5mqEnCJUP3BfjQY9jOFRVGT8KJz4spSzqno/pfIZGn9kc01BiEDUUAwtSbhPYpe+xws7ENT60Oe7LVnI2/mMKz2+Z8CYxtpxOowVUSP0IsFavXModBJHMUimTdn9Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769565834; c=relaxed/simple;
	bh=OGEjPqucGBE88d9HBKzTjiNgAOmBD/RSJQ/KJJDycao=;
	h=To:Subject:From:Message-Id:Date; b=g6UFHyDYaAWdFWievvqQxO1zbN99jqx+V+BbICqEzovv6UAhQW+Am7kY+39BfrVUgsJi/eLb4DRAQWm72LDa+MuIrCO0PBFOS6i01G9cgXgGJ9Kpa5MOfoFUUsZDJszxaxe54oeKCQJzevSjE2ajP+I1LIrhnO0h9aAuxVkv/uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2XXovAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2XXovAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A0C19425
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769565833;
	bh=OGEjPqucGBE88d9HBKzTjiNgAOmBD/RSJQ/KJJDycao=;
	h=To:Subject:From:Date:From;
	b=d2XXovAQjOpRdV2pA3Ch9v1J8xqzkx8GN8pwr3F81hXSCj5K4/gmr0DbUNcZFIaPu
	 upa/9sPZ8FuYBMZKCj0jBAPFxLxRSAPIgsbUlUS+BccWzZpzDEeRwXOTPbN/eGIRqh
	 ABw0hea682TcS/9eEXNWu+roqiRAZju0yA+LFThu9Kd0BNEjEEvXL+kUDG4b4OBr9l
	 f2fghDjM1kCQaT2D4vgzSnfkuEB+GB45v461T+y71435LEBmKXhgAHo1OXM600yoQY
	 0tbPkyHRXSc4wD5/01GVar6B+aAddzr2LfsZqdtoI6orUdu2Z7mJtbQH6fmwuWDNGa
	 YQfinH2zY6hAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B0CD35663
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956583358.8969.727877932821463627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693d9e823f69155d96db418b0ce0070839c5a12250d5696222c2008bcaa371fa
Date: Wed, 28 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769565833
