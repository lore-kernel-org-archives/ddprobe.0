Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211E61C84B8
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754383794; cv=none; b=HLOYc7yiYK7NmAiebs9/5++N8irbaXBHivsRPb6ydJSsBM2EyKbqa7oekNI/mPNQZHMW7ngSl+Y2IL/D3osWC0z8J1FfYimgISH32TcebooF+MxxZg6agokSah5ZsKHigSQD87oL7yz/b+00siQSQzjQEInbR471aldh/z/apSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754383794; c=relaxed/simple;
	bh=8xdvr/lnrpSF5dMTfrG4BldX/JCCcL+O+ITnBG031W4=;
	h=To:Subject:From:Message-Id:Date; b=b2iCtiQdCHV9BPM9io+BUf9rMnVY/k9leV4fcXLakWfKD9vFQtWV0LHDabpjyZ4buJE5OHuXcKpFozESeb3ikGtO7lFFsxF8SYYuNS3uwmRnWzx8p0OBA2KIFp0BG0lovtppkto0QSLgLYgOY53BECNOpgF2EeiF1J+ik398S6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNU8H50o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNU8H50o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA040C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754383793;
	bh=8xdvr/lnrpSF5dMTfrG4BldX/JCCcL+O+ITnBG031W4=;
	h=To:Subject:From:Date:From;
	b=WNU8H50ovY7loL4WE9DTCAkwBd3iKW5Y0y0pQhWJFV6OlYaTZVevKoTj36n74eEli
	 9JSa268lrtrQ136V4IhUujPMFeij3pgadb+BWmOKGVHYQU+Sj6uOcSqeTdlrJdCuyz
	 5ik+gfQJlmET/2hDnFJRKdv0UXglfbSBiFIq6sr5919B/M3aQoaITOXOn/RUj9J+g5
	 GJvBuBbH1wAzyvvdPvDQ2Qmf9oSC/WhOYXIQA8GlH7Lub59J3OJs5ERlp3pXkE9vGE
	 kmUTe7St0K7Znge9pqekxYF3PS+46sLWsiuC34Jh9Vf3a2jdG1/Ef0JpKmWKAs1QOa
	 dy/u2zReTYn0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972EFC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438379361.2141.8714537632157353177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17098b1391f8a2f4234e258cd464411b26735e3673093537638e2a692af39b4d
Date: Tue, 05 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754383793
