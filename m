Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7B839CCF9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791658234; cv=none; b=bI2PrC0oEQ9loAA7q+VeCty8XDxodFNEyDmibj9WCPXT/YOj6shzDIekXB8uLctgdY5eAGrMTAya0mjNDPS6C2YOqlvJkNffBt4eziBj1L1vRxjEkDR1naEISak+6bNMsaxeSBC9rv9DXga5L2rhRujv9QiIWiC5SpN9p3DGDFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791658234; c=relaxed/simple;
	bh=DLdDhqPqKb+7qsYsBRiFB5Vin71WhMgyTJx2YkxFPVc=;
	h=To:Subject:From:Message-Id:Date; b=kuwGVekBsTsGsJoscupQC+io0aI/8UtL1HP99aGGU0H+ISSKxhxnvv6QSDbZuOcRnCx645pr5UrsIThMJdqkE+QHh/cHP/0niqlMu8Yum4sLUZA4RjjrR3tya2f8nStElbv6AlrzeQk5cvUg1JTw9TEPsN6m0Blpy9OZ+WKKLv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKaVT88L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKaVT88L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED11C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791658233;
	bh=DLdDhqPqKb+7qsYsBRiFB5Vin71WhMgyTJx2YkxFPVc=;
	h=To:Subject:From:Date:From;
	b=JKaVT88L0DigSwr9IFrzletWZswBIuyuxgpGBrDPeb+mZHOIYkWtKR7YARCAEhZiR
	 gGCwRJyk+WrBlBZobM0LWC9aSx/57Af+ucEZh0EjfEvkzGL7wCMxt3JZ/0IAW2SDsI
	 LjH7+HJcj8IWqV4TsIsK5po2XlRG+lOH2tgsJtQhScyq2s/V5gp3Ur6GWfiuhucLlF
	 7uDkX2IY8ZD+pOoKilVUKgKMs9N1XurDlgcuZSoum6aApCUSohLLupL3+jVwePbNb7
	 IK1vmoOlQ95p3UweXCuH7Fhq52yq5Z8zhsY1QFybbWqHsuI4is/1+ux7mThpxEk9qf
	 webR23MpeffuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BB2CA9EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165823373.9873.312277685899656923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bcf8fff2437cda381464409665f6b902b8341c9ef065daf98b2f14e0e91f2e7
Date: Sat, 10 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791658233
