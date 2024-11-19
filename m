Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216EF198A10
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732013154; cv=none; b=tD/fbBfhMtRgiztpdSweq1QKrc2oAwP1s395aoPbRiwe2Ed3e7a+3kVEeIs5JBObA3XXj/10/yQ21137e0yV+bBYkekuG/bbzn/KAbe6AFne1Nn3y6aZlFohJ1UhfpJjqUdMI42sHYOs6wxxzzKjSIXA/3FY5nw5oMX26Dnrq+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732013154; c=relaxed/simple;
	bh=JytulUPexky8owiAMboinFfUucu5EN/VVzTIls3g6tU=;
	h=To:Subject:From:Message-Id:Date; b=gxqeUbge87vv/8cDHOE1h2fDZxNOXtRZ1/EXzEuHkKl8StDgRJtiADHI4VmrT+hyWf0OpIj9onZBITFlC3QLd/gGezWnDWbak7VK2sorWYvCNqkn8KLGS7ynPSmD3z9HrRROtLz/u5xN6mZX/3XGN4dyNZBexxU6Tc5Y3bzRsEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GV8AJ+o7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GV8AJ+o7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F3BC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732013153;
	bh=JytulUPexky8owiAMboinFfUucu5EN/VVzTIls3g6tU=;
	h=To:Subject:From:Date:From;
	b=GV8AJ+o7oeRNi5UDV2a1iIh7nebVP4QQbJCDfqSfMtYqraKMGGh/v3pRa+XXHL9KV
	 kUGj5AvQ7pDWh0wFe3Kn//XY/XPB60QyRIFab7qISZWNj8t8SrBcUoKo5WAF2y4Zps
	 W7viuQJho+shXSdTzS90VYb92pkRZyEw9J+Wv6F0yzzrtCtRuidksS3RY33GdtBV0e
	 i13EksGa7lv814TnfcIS6bftP6lLRTuQq/RSvMbt8FOCn5rzkHZ6Pw3MAya1OxGA6u
	 iUmPpsNgoIQj8x+JzSR9fsPQGnENRMyG9lTcy3mh+p5GjRDQaXZUrQuF3BC2Z8Cpcr
	 Bf7b5RnSourEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F835D62077
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173201315360.16377.12592703444142493952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4fbda6410de166bbf24ca60652153f12a850b4950c0ea0324b804ecf76e6e40
Date: Tue, 19 Nov 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732013153
