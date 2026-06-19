Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EF5331221
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781907394; cv=none; b=NQLQTZtIJi+fkJkTUHgan/Is2yNrEqvDRz5bdwOWGz8rnnfgTZGUoHPP8IM1RGfikpfjRmQzSJOvH4/FGpiRKxggTN0DFD2QPc4YcYmczGOBkPmytyJWCQeOD30r/m9qwpcj/+g5Sv02vs9uhnJyc+32BzKwfK4SkXNcNcoGCo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781907394; c=relaxed/simple;
	bh=YpQ3ydnlGrWATip9idl17CGRBeGdj6hYM8UpsqGezEs=;
	h=To:Subject:From:Message-Id:Date; b=AREp/GtLoEYtEpiltvG2kEUKOUTHzP1XipY8H2v15ia3Xft6rS6fypZC2t3d4VAWi4JpaU43goTs7qBIL2XCzVgAYcbomLvPTErsknlE0/EzAGZqXBLSojbTH9iDf89LaBUXAQD2QBDQ/wlbWhjuZ33BkLFRGAui5m+2BoodDww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcdkqLZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcdkqLZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D64C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781907393;
	bh=YpQ3ydnlGrWATip9idl17CGRBeGdj6hYM8UpsqGezEs=;
	h=To:Subject:From:Date:From;
	b=GcdkqLZth/uDy2fuRNCmNHVcQuPTwBc2eFv2RnDWsJZcJ0ikCRciMG5me6yKjtcK8
	 EWUEc6AucGuatQCiiFuOrkZhRNl/JntEeXNrJg+H+sHmFW0QqLkLifDrBXLsxwVUmn
	 lslc7eWlfxCl5jaatiwJOBz0FQ0nHm02flDFy/qnadSPdq7Nl2YI3+zBdpcZJBPZ9Z
	 Oi++n6zxgeuq/xd6FZS6wV18MLlDTz4zBzpTwQd3lgP2GSweeB+HlwFkWtM9dnFQ78
	 wJEl7Lz5wRNWpMZ2Y2QSRvLVXY1vU2yzAcCig4TTaxPrain6b07nbM5qIBCFPET8N0
	 t1EnJTWOY/dtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B0DCD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190739370.8096.4044845538235457417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35542297bf0ad771810bba5a3f66c0027c595d282a5ae5441b8f80ab45374166
Date: Fri, 19 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781907393
