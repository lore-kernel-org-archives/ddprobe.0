Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465A21C3F31
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775615134; cv=none; b=Ppyan8AdzbMi85agMkmPLHQUMiydUsShD2MaP6kTLbqu1O1QBzJtEHMIHpRXY1P4LdfIUljCYQqF3t/6u8Esgugce3fiorTvSVDVe0Wu+uxrmZRYkNl7OlOxy+VZ1VskAZigSnK8gOnX2LCr3h7gxKvDUk2m1C9qsHMl7FwOiAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775615134; c=relaxed/simple;
	bh=7UXbjNZ94C7syZmVPjgiAtw06EkkXxT/5yL3oyvu+r4=;
	h=To:Subject:From:Message-Id:Date; b=gxoDi8a7SG7pxS7brajFktlFbdU1DO5+5Z6MipICob0gCexzPi5CPEMNre9vki42HlPE3rBL/Sem/VMJpYo6xgoavMvfAeaqNvxi3hl72UfEdiktXJpe5u5+qcYjoE2RHwq8Pn09avQixnUs+o/0DBSoIt4zS9VPkOtNZvzu8Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwENJkBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwENJkBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9E4C116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775615133;
	bh=7UXbjNZ94C7syZmVPjgiAtw06EkkXxT/5yL3oyvu+r4=;
	h=To:Subject:From:Date:From;
	b=RwENJkBBZgX7x6fAbiaOy3zmH0zbO3hmpPKwGsUukduYV0wx0aBMRXtq7leBos9D8
	 E74kkRu11LoojOqJWtfMPpWOt1XpanXOpyfjXfjsQf0jBYeDbciOZP5Qug5bXVBnuz
	 1BfH3jU5LX+DUAnxEMmQuetpX8t9r/wZWIx5i6v4JpzTufJhYKRiHQqN5epOshHcHq
	 8M3wieSh3OI4w1kuBpOgMXZsLJfLxViyzw7a4qOHb73Z1gtWk1YqsWNDRL5ki+aTfN
	 xId4jIxdCCbG/7fNbpz/kTL9NaVpN55ceS8gfajZODGSBYG3rSzL4gCCTRNuKUIf2u
	 zJUuFbGT/XISw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6671FF513A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561513373.13854.3940847258442779351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ab16123723a7f05e9047f527e5fe4856d46df8cdc29f07d1495a9e97a452ed
Date: Wed, 08 Apr 2026 02:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775615133
