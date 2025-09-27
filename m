Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B3E19F40B
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758950394; cv=none; b=F8K92cKCvn63XYM2myjamiNp34cPK8O6vGtZ4WrfrixaXpF5sfV8d9YjAb0RV9ADphOpcRrqNJw+O5lkynBkLTkuLjoQBGBdU1wEvMZTbA6T1ctAqLYNy6qC28ysBUzZD2b4YDO2ZshMSUMbe/jEPUa1rIJ8xwV13V7cCfvLbnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758950394; c=relaxed/simple;
	bh=oDlKXPEpSju27Bdc76FhNI2ZGWG6VpwL6iRkuDjDPH8=;
	h=To:Subject:From:Message-Id:Date; b=iqFIdrMCwneY/g+PmJA5qVa/lH/wM81CrIv3iRr3fT/cSq298aR2jowtgsxyeGGbVIZn3ju4+Ex36zyww0gTTHJ+cbyOCclsj/zO7ZKzZav2dtHvJd44u/MMGbQ+c9AvcChMY5mbP1l0RTO7+czTzf32k28qoXAo5rODwAah2TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2/ETW/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2/ETW/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5488C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758950393;
	bh=oDlKXPEpSju27Bdc76FhNI2ZGWG6VpwL6iRkuDjDPH8=;
	h=To:Subject:From:Date:From;
	b=b2/ETW/fOx3xKIW5WjBwhKK1BnrFWG8v9hBS/e93PClbf2CPJa1Uo5JgUSnx22Gcu
	 wisHZeXl8cLABg6MhLRYkDhLwwTp9XypR5tNjmzmCjesfF60DZQslHo3zqnBvH6QJo
	 odCenjJVeG8nlnw8xwey2JrCKP3iVSbMqVRXkzs2ktN2Zmiy/26SmWg6H+eAX8X2Sy
	 VlnziKR1nAM45fAv1F1GAaE+av8XesW+c+3UEQpoiwP3C1t5JrndRqE9GZMa6pc/Lb
	 fqTGhg7RL22m62SrAiXd2X4aCdVIA2ptZumWpwEFeTS2KDAFSwxX2n5x+YKAnbRuLt
	 d8+2tslc/Bb2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AEECAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895039357.19223.533956887817004598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10151992351ae828987de3f4ec1a80deb2fc9a64f721210852d32d51e3fa1112
Date: Sat, 27 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758950393
