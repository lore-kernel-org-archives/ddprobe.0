Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4084533997
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747192794; cv=none; b=s4/+pG/Z3Rf2g2mQk3F0PNE7UQUnCsxj5son1x/36JEiD6EhqmhmHqpQ08umIEpjHx0FrJY73mPdPQ/wjzYlNrPj8/LtFRHuY6G60U+y91Tf68URE+tZhfu0+TvANCrs8dGwCQeuybQXpE3IlfF/6W4LK5dNeQLAfv+E55bxXRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747192794; c=relaxed/simple;
	bh=SE756BeH2rM6JRijm8Ij6/YPtOg8DnYJ05+NMqG64UY=;
	h=To:Subject:From:Message-Id:Date; b=R6HKuRyYnbeKswJoeIlu6pYuE5UkII0hrVyvx3siFPKg+zsT4EiMSrVLWSnNfULv7SAZinT5/jijGSmB9L+LIb5mDepzmZi6b+TpOD0nmQu3V3UUWNzR3Baoz/xD+8NEUEeSjAGqEps0/LosW6ITJn5ZjDB+kkuxUI8cp5nVQro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACLVVodM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACLVVodM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BA5C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747192793;
	bh=SE756BeH2rM6JRijm8Ij6/YPtOg8DnYJ05+NMqG64UY=;
	h=To:Subject:From:Date:From;
	b=ACLVVodM4jSjoZE5ZnLOwn3E1ubZ0DILBD0APHUf4tuTpfXjAD4RpAFb3Uz3JFlSC
	 amVmfTXlAmgr2OZ2yxCeavA6kf3n+2RdpNefrME7SPulZJ70DdkDB8R5wrc3Y96CNy
	 Ml2seKn8xOZ9aR+MDbSoDF9MV+YH7HMsUdStp2LaPJCW+7626MuR84JJj2k0SWz5oG
	 dX7PPl7NFcRtX/T5h78Mbw19++YsWIerTh95MbvFq3C2iemzJAK2AbSIpuUGcloVhD
	 lqKukLpMOBqWRUAA+1E6juMFx+LgHOIcyJB6SKkHyOBTlAxyus13HROWYFsD4NiQP5
	 kLlkbvbScS6yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B57C3ABCB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719279357.10946.11963232806167591532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08168c13b6fc23669ba3ba8ae4cc359c138f44c7deeef536aa623c02fe004e1c
Date: Wed, 14 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747192793
