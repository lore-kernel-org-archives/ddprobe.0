Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78FC2046B7
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741975133; cv=none; b=bycpcIJsYQgta4bv2KDu+27vEn5eutVD461oFj+B0cgOVmHhAD6fp7UDeFTMd7g7F4FphsPA+aVrqR79VfL7Z2Qlk5M/2W9QhUERfUpDpwvhsKL4essNtL+AsqxoZ1SQtmKyioT13vxC1UBfLqKTyO7EmRIC5bePmwbraJK/+/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741975133; c=relaxed/simple;
	bh=yFtsIy6k0PjMMUg02zTEUm0T3Qmtz1q2V5mwm4fqams=;
	h=To:Subject:From:Message-Id:Date; b=TuqNCE7ExXZvD7STNijam7pA8REd60EwWoj55FKk5sj8FzXlClVi1jKaE/9NnBYrTntmJ8tC6eRpCKt9uKueh/+ekA/a3/ugz1TvQSNEWPNY3GKoQ6oy11fLnambQyNjP0m9dovOOuoqkHug8KqMMx38aqMqaUHbteqgIZEZZwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iw2O1cE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iw2O1cE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94CDC4AF0B
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741975133;
	bh=yFtsIy6k0PjMMUg02zTEUm0T3Qmtz1q2V5mwm4fqams=;
	h=To:Subject:From:Date:From;
	b=iw2O1cE4Q+7V6307yaR6EM8rDhVa9w17WZGgDq6xZpeHD4Q+LHAKPvBNxcX8DA92V
	 lF4BM93GNvlmGAJe4ZqGoZIIShflOR4Qp4culzw1zVnf1ztB8eBcKI0PnaTfZPCxJq
	 HhlSuUigtMN37e/tufFfK9gGqDZRGaj8WvKxEzgqC3jPZNBFr5fpRj6u2VrYTF83eL
	 FPkW16MEBXrKd27MoX2oeF8422St8Td2eGcnSkk0qWq9ncr8/SIRdr6VaC0XZd38pw
	 ffHfPMci2Yf73h/Q0KNEwrrwx380tNimbIioWHbcwvUJIp9s9XWFxJ200R+wk94s/t
	 CMYpXUTBr+Ibw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972B3C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197513361.9043.15604788989007927074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d4a1ef00c5b77fd01d13dd868ef8f8058af2e46d3d1481070479be0987a8bac
Date: Fri, 14 Mar 2025 17:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741975133
