Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2535686359
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758930594; cv=none; b=jXudhfIMy5ReNHMUIyz5ggCpq//2WK085i0n7G7H209XVB4gaXBH7El9D68r/DZjipjebcTEpz/BBwn7b8azPbpyCs4L6ZB1DQaZ6LVDmaqD00XIObUWy+L/WH5qvJsFp8s44VfNm3oNUMAVKN0efdfbjWHHzA0H4lA6p1bdKEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758930594; c=relaxed/simple;
	bh=Hk8hhl4orYZI8attEMTQPEyabVS2RDXgufzBntOpcMY=;
	h=To:Subject:From:Message-Id:Date; b=RHWJo2Ld8IgxfqNDFyOMvIJ+wk8AHg+4lqJ/GfTQI0SxJyCF+aGGdB5QKNCsxGBvXhzHb1+FP5eq0fcJspOVygKWEcSi1Qqcgz8nMABvwgE0feTjXL1osU2l+CYAd2CJD7mt1WzeYBEF1KROgXyFId+E6ecxtGn19FO/yr9dqDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfWFPaxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfWFPaxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6A9C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758930593;
	bh=Hk8hhl4orYZI8attEMTQPEyabVS2RDXgufzBntOpcMY=;
	h=To:Subject:From:Date:From;
	b=RfWFPaxYV1u6autMgznjzLy2J8h1tbrRg0vXMk0GiUWf4xSY/49Vk31RZwcfn1qwS
	 TNhvJ2Lrh3imh9tprohAeGWQ08ytJF0sfvPIcKYg1oQKD9azKjMht1VmA4RaVl0ow2
	 vEzILKNURE++oNWvqVZmznIRcU70h5q2+Opf4novyYlGAkW2RkDzKqE1zI8pgE/xXc
	 eIew/MlTNapukCVxOuEniqO63D4qETBABObVmyolSN0KyCG1fVo0Nx6dajxtlsF3ae
	 km4bAutZjDjZE0kdw0wD3XAg07kezZKU4aT6xcTwqV19uaWpBqFKeqXT4tOuOfOxme
	 JCJuGZ4uG7ezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DA2CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893059359.1283.15522487064131914663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb4f083d8b15af7ec9b59e5fc4c0c5741af6f5ff725a5ee7c3a76d2443bea2e
Date: Fri, 26 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758930593
