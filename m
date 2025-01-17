Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B6A25A62F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737141354; cv=none; b=JLTEL3o6JX3Um8zslr/4MG0Las3WEl/OUkwU0Aw7Vqu1uZxs2qzCL/vhKbjRESTDHb7cWrSj8N4kx21tkdpgHFTB01s5fiPc4p20rUbrTSD6UWFpzV0pXEfRDxV4fzO8X2SRu2X4nCBArGp814vjpH7qA+NeIY5O+tu3/zYQ9Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737141354; c=relaxed/simple;
	bh=5t8I4YSiHwbUL0jPmCXipkF2H/wCweAwG5ciAU1njp4=;
	h=To:Subject:From:Message-Id:Date; b=t9w5rBZGxh9zYxzksBnrKTxWpRd1g+zwnv9sJnkk3kN9NVmsHaKuO23ba+nCoybaHBmogLyri5zpMyCB7Gc8x2XyXdlPPQHTS6TR8qtV/zczBgAARXtXrI+egHdLcAhs0ZFbpDtEhEteNkJbJxvQbBrTjTntiJfxw7ikHKWJerA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeqOLgBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeqOLgBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB475C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737141353;
	bh=5t8I4YSiHwbUL0jPmCXipkF2H/wCweAwG5ciAU1njp4=;
	h=To:Subject:From:Date:From;
	b=NeqOLgBAo7sVBR+Z3LWRc9DfXJ82xWNrnV3vOp5152zU8UTxFPzEri11lAG74X/3T
	 2oslKdFu0fONU/Sz9kQP4MObVv5UP0xMdeybu1/yN8jpVuDNVutO6+qbRSWViI0GZJ
	 Hn8GEdPt6Fz2CSMsXkmRa50dUVEDMn089DMrghiGdFKpAxOe9V1GNNeXESyR5d+x8J
	 I/HQU1So02BEZcsXPblfD4wgsC/bNQb3ntmO1aKPB1jmhGW7/Pjo/NtK4GAKR8aJWg
	 3Id26c4ckSV11NAs2tze7QcmFU1v4MK2Ucrut2qZXxwWFeQFa1MKxKlOrUiNTcGuIy
	 aLi5gSRqFpkDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA41C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173714135358.19764.15499604911920612650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5f982c657a6a7b0bebf56518334064788424cde516559d33fe85fdee9b7595
Date: Fri, 17 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737141353
