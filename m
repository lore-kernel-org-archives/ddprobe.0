Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3691F25B311
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764114774; cv=none; b=Xs2m+2Iv2ughTE5DybTicwBedZdXm+biZ8dC95nOPjFxaZ3EfZC4Vp8rJMY/dgoK5+bTwhT3fzqZY8N3bnpbYCl0Cv3LdE6PF21vyc2bO9u0n0Wy3uo5TVwhXdk4WZpBbjCnAIaSvXdUe02sCGmBMCztegNmOOxWL+MrGlmT5aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764114774; c=relaxed/simple;
	bh=7EWSYg1gmzlJegMQb1zpmgRmGEjpnQ3YGrSvcK+Vcbs=;
	h=To:Subject:From:Message-Id:Date; b=VruPhPauQcwIivG6+eRKrO4HvkuzC2n67czwY7HKCFfchcwREp6ZrHEPJSWk7Yoil2P4V0zlyfZXSbBSJyIT1nFUTJyOjAm1lhcmtFsWop0PXvImh5LygOSP2AGkSF+KYCKpsQsIQegWMz/xm40m8s55TDA6h/W/yowy7HE3szQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEqMMPAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEqMMPAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8AAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764114773;
	bh=7EWSYg1gmzlJegMQb1zpmgRmGEjpnQ3YGrSvcK+Vcbs=;
	h=To:Subject:From:Date:From;
	b=KEqMMPAoVOPa9W2Gk0becfb9YwC95cMEDv/0tZyLcxQ0wYKCUC2YN3vnFHfqNLZr8
	 CSJL5geF814N1irscjfgC+Y/6o/EHevTImaHUt5Aymmbo5GQ7nG/DaiT0f+05DbE42
	 h+GxKsPfvhc7xXMap3gEeeId051MJgYlhnbk3D+a7OEjAtU/kBZOmb3wpQu/3ESdDj
	 YsAhfJxmbyiVAgMEf91WguCHeZrBrkFF8VzX1VkEoQN2xqZsooH1IuiDON1NWsNrL+
	 hsMiXBWGBQEvlOeTQ8Z8SBlZu3OQwpSdOGhyYtimnabC21JU1Whel1wCuennR8d6o9
	 u15yhGHyoJaEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983C5D0EE18
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411477358.21114.4624599145589431137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47150fbf0133ac6df5e6167ae14704ff4bba879bfc2147c90171189af3ad8cfe
Date: Tue, 25 Nov 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764114773
