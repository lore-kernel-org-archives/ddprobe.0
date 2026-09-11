Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3587631ED8B
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789135234; cv=none; b=KHEqH/HrXxxjUBphTkQTCl5NLhpJgYc6I/QRzOZjvXIURaO2Grdh7INzKZHAGoRz/ewz3WBPJ9MhW8zotEYWIqfF+9NH81xQdmqABzwygwZOY9r05GX/TdlpyzQAdwz7mJ4MT0azIsdQwveN5fph50gH/K7JcLyQ5b6X2SMYiEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789135234; c=relaxed/simple;
	bh=i6vnd3obmVYDLcXORzYTLTLeIpYrAPJdzQjCpeaP4iU=;
	h=To:Subject:From:Message-Id:Date; b=P2XmNvOaFdH2bsh9H5lM4NBFQEvffrvNCstTuZPf0T8LX9/C4ygCQ/6w+IP7HsvizgrUqrXbZWSdSegbvE+dNYsBZoYPSzoJyBv5COPVUeL1isx3YLzniZVHQpBal09ZMSXjxKm7wyON2oqYoqLLfrzxi8Z408cRA6lMqALrO/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=touNqxuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="touNqxuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBC1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789135233;
	bh=i6vnd3obmVYDLcXORzYTLTLeIpYrAPJdzQjCpeaP4iU=;
	h=To:Subject:From:Date:From;
	b=touNqxuIwpa/8IuirJw1yABq3yWttkQSxT8//VEJVrxS7AJUAiYLxQ3yoGDLSYF+Q
	 hy00R2v/e/giSZSlIbeu1N+B60VJv1xAhHNNG91rciCyKNnPJjuhGJWP8vNgGsJz0A
	 2ASuh+ZVSI+kQ7ITM/pXOSK00bWmmPlzvr39VoJqTXHsBzf6icaj4mQR9142DhqsAW
	 4X1y9i7dnn56OMT1bH2+QIixAe547FoLMAvGEJcAoAC9keh39o79RTcLBsULLOlki+
	 59510FqmcxMY12LTsznpyc97R2YDQWOQfu1PfU2VDV4WLYOrbpWbDY1O+0vPc2yQHA
	 TT4yONYNyIlmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA494C88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913523368.7499.10898577747479788012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49313eedfce3e3c13ba0c31bc6ab06638ca377a463e50db98b45ac5df59b93c0
Date: Fri, 11 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789135233
