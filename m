Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361121C549C
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733517954; cv=none; b=b8sY3MWHEVQMDmdPBW6wnogCMbKumDnH043jNvygnkY4oO+H1JvGwl2o2JMJ8jv6Ne/wqbxcmbaNF0kz0FJLtFcpifSpqU5/ZwuvhyBmS7tTFNZn/iJH5XqVewe+kOaAjmaNJYUM7VM3M7dNVbZjBsVFTA/rQviJOjwv2sCd2mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733517954; c=relaxed/simple;
	bh=dkJHwOEJJAMrakP0gY8T9uZVaUJLeQ3i0v3R+5yJ8Ew=;
	h=To:Subject:From:Message-Id:Date; b=TTIAI3VD2cLfUHY6bJpfk9ALYqJxuvEBLulZ3mrIY5276z5j+dMC0S3dljdj19vKPGvQvFKrKnlgtXeulkgw+hgi7siaDMk351zngN8YabluwpgXlCsRLvbmV6WYZEaac4wxfVgZTwtzhmVz466mi++RLkv12Dp4lUaj5yrQzC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZz17yyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZz17yyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE97C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733517953;
	bh=dkJHwOEJJAMrakP0gY8T9uZVaUJLeQ3i0v3R+5yJ8Ew=;
	h=To:Subject:From:Date:From;
	b=mZz17yyzo5McMHa9eNZH12WnZnqr3tU5IGdEpxQvodOL320jVqH7FosQvqxeSc2iV
	 K1I+JJJH9Oce5OkbjJSyLW/F/iaqttcEmfmF8lwYmZMUXHoX9hxXF10X9yQiKqVKtk
	 dkogxCRqYDPMZWhehrQXN0cuvNSnVM35uUX+l23qdTTkeYes0oqQJuutDxb/tCHKj9
	 lEqSJnl6cgT1nu5zQWWjm1/tqtcaDyv2prUPZOYol+8HRhNeLoYAWyKRPTzZVNvpdn
	 bcD/JZ/wTWrnBR1XGB5dxW/arAeg/M2To4YaKNm5npz2ZFLaaT4lVYCzc53cENqnfd
	 OP7680cnbo/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F78E77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173351795358.18392.407781922763423332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0519393dd1ce04df34489638a86ea5e79e1e0b8ee6c3d2cbc8f434620e168ca
Date: Fri, 06 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733517953
