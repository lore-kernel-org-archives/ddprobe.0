Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED7330F938
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783768714; cv=none; b=CBUgjzw2eHk6dDYSXymsSTGsp5IrSCx1i9KB8/pYM7/eBNtztSM6wQz+SJjFUhxCzxezZDNUujsZ248gy7Lm0GXslViuZQ1Ck0aLkFQj4Xa65QolUplpQ6CQoi2cjSpYRRua+kWoh1jDwyLmzyjZggVfjH0wXWJ9ttVQ0FmG8xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783768714; c=relaxed/simple;
	bh=s1V5xV2lwYX3ncOY4T2vKAuE1RfZwDNoOtb2lL4YOAc=;
	h=To:Subject:From:Message-Id:Date; b=RC3HVFyVtYVfsWGwliP3DuZuXKMZRxApOIPVkJinrdYLFd77dwfa/PN24fVoZ35PsdnpROq3+yiaelp6dXrWg2LgpM35EKsepqQEiGwMf/hrumDB1LCd/i0Hi2UL6fozlAvV274NFRbE6alIFYPQeQbJ+9ZbVnSgd/cOIF4jiEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AepaqLTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AepaqLTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB06FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783768713;
	bh=s1V5xV2lwYX3ncOY4T2vKAuE1RfZwDNoOtb2lL4YOAc=;
	h=To:Subject:From:Date:From;
	b=AepaqLTrel4nF80WAzIbHwPHYZGoydj8R0kFrZaAmpqgErnl6QQii2oHprNkMKlDy
	 mr+Jw4dmQg5tTDjCYccJLN3pDw/TXevw6ronJrfs7tgsEvwG5qoSM1OQhoGV/C00OD
	 7/ZwxyJFGZF5+guGl5V7sZD2AmLQwggGIAHmaTSEbRlFQbei8lovgmi4prRCeHpoBA
	 sFDRWp39xdhf1SBTqdoEN0fEzXEbwujP5l30n2cHwpWill0CR76MisykxUN+Rig0Us
	 YMepHBGD9ULDYxom81YhghsEyb8/GFdstmxTz25dX3CTbZcztKc0N1L1uHMPcQ+r2X
	 0fL+91IpwpArg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87DAC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376871368.21870.7955302607672350938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65b7371f2571222089055d8817ac93a1254b72ae08959ec20e467dd27e4f5a0
Date: Sat, 11 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783768713
