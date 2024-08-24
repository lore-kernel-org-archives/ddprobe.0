Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3279F28E0F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724537154; cv=none; b=F4WRqFf2BOzERx+JjON/EbfN3dJVaGyGtHFThYC2mBfS8Uekg5F4SeLhOR1eV0pwAfnyAClkZFBilM/JU28X5Cqaj71UsWhqc/umU+XTSpYrQ0gKBVsVvPzQiX6gUOVCchvm+saY3byJpcBMglYwrpDUI+vKAUb+isW4kD4HDUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724537154; c=relaxed/simple;
	bh=3y8nCSuecl+SgubcYKxYfZg5bDsgdrswKW5M+sgzSVE=;
	h=To:Subject:From:Message-Id:Date; b=V01HNDfg0osko15klwMjWtHDvaoRMb5Hr71F2F3YKy0Xd2z0YmLnCUJ84LGtczj/Znp/4EZ3H2EplG2FRsSA8r/CnOmcWOkcn1xNdqEwmbDgOQxMIk9bKizR7Nd1++qGcOwMAJ/kSkSt1o0ynWmrSHSD2IeUrpKYZ4P3waIGOM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4UDqOuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4UDqOuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2056C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724537153;
	bh=3y8nCSuecl+SgubcYKxYfZg5bDsgdrswKW5M+sgzSVE=;
	h=To:Subject:From:Date:From;
	b=a4UDqOuKRmPB+clZbGp9SMxQn/QqS23S/LI5TWDIl0bzfmXzS7j7O1LnTendh0VZP
	 3DvHajyl1wpXCWSd2T1og1dU7Ff/cbJ7b0aW9FsPez29332VDMg2Jg2qicGobVbIRl
	 WRTm26IEU3BDrFPDJa9Fa3Cr9X2PQCqtUN1l1JwNeSbh5dabQD/0u3KEW3Dh/9T+lV
	 aA5/4zcO7xioMsLaJ+kjp+DKhmvFmtcZ4aDpQA2JkmFxxn1Cdc0ifNIY3vKCMvVUSj
	 xp03AqPy8DH45CUcrQVDsBhvI8j9oiHgPMbV0wVsTbW4GCvyXJEXz6SbgLm3Sk33Wv
	 pOd7PvIBSOovw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7BDC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172453715363.26350.16431588204520703362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d34f04d1c17a1646f925bb020aa5e69b547da7bd7ce348c4fdb1786fda664a
Date: Sat, 24 Aug 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724537153
