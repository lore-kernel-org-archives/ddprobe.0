Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DC0301039
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765308174; cv=none; b=ExDj7Rqj/DMuNf37ETqwo/8UjUzBTJzxeJnoQIKlZpMpIS0xyC5CHJXSeHNPMZkElq5eurKdP/BjpULu6M4SePaT+E1gSAhJmV85RwSDSeN8TblUO57ulGNujJGL7yQyq2fdnrPDry/MIXQKb5yCXi37S4D9jL1hVmvgB8V2A7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765308174; c=relaxed/simple;
	bh=5jjknUkPOArck5RTXLZXtOB0VSvCnM2oqhFpHoXVKoE=;
	h=To:Subject:From:Message-Id:Date; b=YACu9OPGNWzZjxlPMtaxYQYD4i7Cm5tqijDlf35ZtkCiLceC1GOOfq9HJOkzQwKa9QbnS9LSiWvIn5p9bLLeO3oAtcujDnG0x8f9jkT4+48YhrSSlPMsKgseUQSEtRukPe8IOgd0nALTdjgnnGL/xRM2byHl2MskbgQO5Uyw2aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+ZzoWKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+ZzoWKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE628C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765308173;
	bh=5jjknUkPOArck5RTXLZXtOB0VSvCnM2oqhFpHoXVKoE=;
	h=To:Subject:From:Date:From;
	b=p+ZzoWKuSZzCqYIxwgs4IEfoctlexxfrEwlyZF+DypKn0APTU82uhxBfvEgyefz1F
	 spIUXFSqcZWJZkwZS8IIe1HLoj8mm/dDAD13cFQXU09N6uUSvbm353Hr8ceCtVRDQT
	 Mzwi6K+3UeyZfQhYGdJFoQQA1dllCnZ0T9Hrgi2Og1PQxamAPST0YihavcBVMGaNkQ
	 nT/i1/s6X0WlUflWBMogHDxNa5Dzbao6XcudNqu4fYecJarMaavVAgxLB/Dkz/wQTF
	 BZvHM9EwBS4mr+eeGWqWFHS3b5forEfSgkHP+uZHfCsaYMUCq2VopenvHiIWU7xMdn
	 hSvw7qg/yMyCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7A0D3B990
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530817363.791.16796496570360074338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58bc62d3fea727868a728a51f27f7b30b907e317442c58d285186cf39855045a
Date: Tue, 09 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765308173
