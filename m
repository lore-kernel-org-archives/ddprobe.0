Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D7E18787A
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771853094; cv=none; b=prfuRwjRtwj3PbJ8aDUWFUnFW+3cTaCvssjYd2HZz1ZXpbTuvAQm+bpviSixWUBOMRLpCPrDOm26RmH2h9QYofd127RKVsp1l7DQ7pxEteNvtKVLmGnO6hbJ3jSFt6iMWbQVpkFbCIZ345LbULU3dttEmtCYtnGTLxPFTYnDZGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771853094; c=relaxed/simple;
	bh=hiRHzSX3v9VH6HUXx11IH5PstEmEgoNv5T8WlBHSrOk=;
	h=To:Subject:From:Message-Id:Date; b=qYHcgPJmHiNXiyPSJlmiacDcb4Iop20hXk55QmtUTzklt202gOT3O+WV+bsutgdXv/u+g0VJ69uSLg4LtyDFFHswNdP0V1Hxwdd2h3fLdMa/eqe0SwOjURWlDd+PhY4cSsVnFFBFXlENFm12T+AyIY8GCDjNlVVd/JhUDW01o0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+8KK1DM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+8KK1DM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99ACC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771853093;
	bh=hiRHzSX3v9VH6HUXx11IH5PstEmEgoNv5T8WlBHSrOk=;
	h=To:Subject:From:Date:From;
	b=H+8KK1DMHyGtsu5DKhlU1Gre8g3JChiLoVS2G+M6LYxvR2rmOPNd32Yqb5Y0b2/n0
	 TZLdsIV8fuMVBj0dgXhblkAtSyMC/wVE3LS6fn/u13rmaZFhF6tfGfNymQUtgpEmyp
	 RV8uI321xb9G9VQlkShgNXeAG8O6hoZ06QNPql8LxqKzl2BJGJDDbaP72PLiRWFr7v
	 sYYa2o2/NnOcuxhUQSV8L0mHUeBygP2iKlLF67fH9pEzM0aKgcxRX3Ky+5/QYaRSV0
	 voU0Np8LFJlp10T5ncfPxuJUbrFC+FZql7D3+bn6KR69K3gqFaqMtWnLa8P5u434+X
	 qTfljjGBRIRMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99760EA4FBD
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185309361.11732.12588906162329020299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e254281570d23e2023afa03bc942bd29c84ab554b80d64fd9d8b27f018ea9a
Date: Mon, 23 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771853093
