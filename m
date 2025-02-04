Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9F520D4E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738672554; cv=none; b=nZqJmZCjjGyFma4Of1lpBlFlEgEjDYCSiQ4McalmZjFYQm/kki40KyoJMQzYqjayW5CxkTlP7pe3cLvTPOYfs+TC1m9DsXFllVkBS5B0qdafy5fwvOWETcNUPnA/5Is48nc6kMW9jzh/xmrRFxABfOftXg0aPLe1XxQ7VAmFKFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738672554; c=relaxed/simple;
	bh=PucyG6HcDVTLSmSaddCwBAwP/u9uMcOcPW2cnUCHjns=;
	h=To:Subject:From:Message-Id:Date; b=rGdwEH4QO0VQeP0PS8hIFqQ6T1gzjfrlDel2hi4P8BE9WIJ2SppgD4O6+78IQmLc6zr40dwrPxxDdRHdDBEa5Md/L6dbzpmGovm+GbOxnvaHTq4khrZDT3QgYAvMAsPJC1L9UILhT1P43f4Jvm1Wf3Qs1LnRiwbRSlviuDjEvTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pfc8d1FY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pfc8d1FY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD639C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738672553;
	bh=PucyG6HcDVTLSmSaddCwBAwP/u9uMcOcPW2cnUCHjns=;
	h=To:Subject:From:Date:From;
	b=Pfc8d1FY6WY/qlosAQ6OOyTo2m+SW9JZ1J55wwHpcJz4TVrLUYPpcae6jK0PiIa9p
	 f48OFnxWGphPYf9v4Mgq+GJqtOIEWqI/RIdfTqalzN5ZH1OsZoK/y0LN343MZonAyS
	 6cjFm2BWNHX2N2oS13Ib/FS0bCo/gRUdsPAqNx6x0gEAHq+VySC5cD4+RupLjKb929
	 BFeaLP03XUIAfQHm00/YOIUbaUrcNcKQldeb+NVei5cJJT5UrEGGfNW0ZgstH31sht
	 yJPF9jwzW7Em31n9A64DJfphky2i1/Ai34T/cmRHTPeQ0w0CJtptO4anbt2zMAx5Ro
	 F8DdJx1+aq6LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4A4C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867255362.3492.17946081717691485483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff8536908d85cac11d1fc21c4103b5f1f896319b90e4c2eb48e1590a246a72b
Date: Tue, 04 Feb 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738672553
