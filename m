Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E016AF94
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708637897; cv=none; b=Uo5je1Phl7Um/jYPXbfvQkOvI+PAoLhHlAUavwb5D03wSTLv5Un5Gtrfyic34OfcxJedr3d7EKSLW9n/yhdR+z5U5fLDnxocuseZlnAQdOWTtlYL3u9uTGo044C4ZexIxhwBdPWQtK7VDgL9d41wUdvXoLDs+1XK5KG3Bxs+5lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708637897; c=relaxed/simple;
	bh=SmpGPNdo5TgwzZA9sA2cQqh8jiu4l7NrtynoAEgnZFg=;
	h=To:Subject:From:Message-Id:Date; b=s5C2/Orl+sDMuSel6O/tLQdGMHJjeCVT3SmeHimlxCqtl4qQmZbW+GwP8vYTLro5S7xMZgwG8SO0BGC20CX4Hq5OKRAiBJRF4LdLm/ZTH42TVuN4HChme3/fqk09EztNdrNBRp6IiF/T1qVrozz34f1cjPUDACnQbnOgwaMviOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1Gktho9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1Gktho9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A085C433F1
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708637896;
	bh=SmpGPNdo5TgwzZA9sA2cQqh8jiu4l7NrtynoAEgnZFg=;
	h=To:Subject:From:Date:From;
	b=f1Gktho98I3KS8L3azKd70w4wayd+/lMHPRdj8rao4rrON+gdst9U0zzH6BwUSfSq
	 7+YmZT95Da0sWCJLcHo/kTHYlxBafVQTOqPX+XTlDBD7MQAuOxfdKmImJR13J/0M9y
	 rfv0+vH/ZhMiTpag49iMBaeXgbKuZ2NTSi8k1KZ7l0BeRvvsIoM4cwOzAwVfA96/Pu
	 vIPhXVIThgCpHG74LhBoho8EqILe1KfCpvde2znoLX/EgEsIDgY8Hfl5kEzAGEujYG
	 vzno3M2j4aXczvJSsSDsBVFJ5U40aJ9hCJraY7wqA7x5ziIs/owV79KG4EMbQ/8kzZ
	 JpXtMVfbtHshw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB4AC5478C
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170863789636.1769.17449022231476912317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a6061ffd70272d18b54bdc71d5da2fed10f3a73eae5f431074a2e6c3a062c8
Date: Thu, 22 Feb 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708637896
