Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D2213BC0C
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728422154; cv=none; b=Q7/HLthOLd9d+9MTDljb0QOOpBnz/DBRytPsdzVtwUrYNhMVDDgRUTnV0iLr5oS3YgDg4DbNZLGqt4HHsOAs1z+7J+Pd+9MaS9Xirgra96z3RjYUKa2U9/VHMt6e4MNNBAIO8OEjyu/IZOhyliDQo9fQwlSEbMmXAyVOWf6MQDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728422154; c=relaxed/simple;
	bh=aayyZ8E/7RFrmgnCLBUM9X1owP27H37HDuBJb968+I0=;
	h=To:Subject:From:Message-Id:Date; b=gR+VLWbWL8j4wl8Pokm0mnIO1y6mytIMUFwzWfxgwzpre4lL05ZrptrPpUL8/bp4sfYmwW0jJiXdmcORGOu8OLQ/mP/WJ7NCrsg6iN8g7kA0DFv+3dkB+7PE/zFxFNP0/x/EUdsnl7JKV2Egya+4eoGfCnU1QsD1VPDih6TUCqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zq+QCMvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zq+QCMvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E88C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728422153;
	bh=aayyZ8E/7RFrmgnCLBUM9X1owP27H37HDuBJb968+I0=;
	h=To:Subject:From:Date:From;
	b=Zq+QCMvpRMu5YG9UqngFXBs5+Ci30gkxz3fgiNXHRt0AZ83okDdgXHBOjlhV6DJLI
	 Smzy2wdafoMuqk796ZnCNO1KIWNgEYSkuPTwDSvln3HQhNCj00s1+lXx3Ra2nnLN4L
	 1OJ+Wxt4kEqFW+hRZhjrj6zlSb8MFGTThlVPvC1jPLPlUD2S+yrYztQT434nKoedxT
	 xryEFpdwUlsl1QYYH3/XjTRC8w88zNUj1VoAwyYZHQHA1Z5Vh8hbl1BXUJ2oTZVW5R
	 +TWxl3mrntlV6dlfLg8e8n56RCOxoUlwLgrWB0VwOuR1dLsKwKwbleb+v0orSq/i27
	 A37+l2oneOzpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A48CF0423
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172842215361.5016.16022219803912212196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a013580c73efb3c84ccf2854edcf3a212f491ec290ad3c6d073f786873c56a1
Date: Tue, 08 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728422153
