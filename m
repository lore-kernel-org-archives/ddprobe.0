Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3493C1E889
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719582263; cv=none; b=kqw0axoyUd/vDtFnxCHGv+nvLOjxOOPSD0JRut3kWiDVwRO79rWxkaFFA0B7ooQjuCN7g0tAP1COogM5SlYmsMQ04RoYg98QX0jf3fXsh7FWUIIWNm56XaANY9GrFz8vrnVHJ0VnsXo9jrBTEQziRiVLocl4zGhKejSX96OPDIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719582263; c=relaxed/simple;
	bh=4eeABXHRV6Fx0QRIO1a4vCkcCiLKj++0TP3kpJdytxM=;
	h=To:Subject:From:Message-Id:Date; b=IfNUeuJym/+kU1ESpoPJ4wWPWhpEa7Y9EY7obo85SMo2XoDQkTjdY+SSOMRxDpby6NtyHPHEprp5bfmBggDcez6Yt5CG3ROsw6FcwW9EeclDqIyw6CfPEKRvqQg4zy+n/p2JEqLhRFqJTjedIdmIpRZazMPw2sZRha8av7h86B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJCWeq5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJCWeq5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4495C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719582262;
	bh=4eeABXHRV6Fx0QRIO1a4vCkcCiLKj++0TP3kpJdytxM=;
	h=To:Subject:From:Date:From;
	b=EJCWeq5hOnUJvUujOcygCeAc/K4XvY4jfi/p1dScpbud5L1aOk5Bn1aV6A4Vj32S4
	 euDNy5LLRecdVpMFHlCE7uF3D9qNIOnHFx6AiQWX7+muvsF+kXmAdD70IwfeqM7q8U
	 uUmHm/3UsF9oDkKkA7yJoQzs0Vd6lQ2oSgIuWJh8TcfMgwxEVYmtvghvvG3gRKD2mP
	 nmLeOanKwlC/NJ13yVc/L06NAhtmH6DpeK+3xKMKxrE55omTnyGqM+uc+6UkbuG/B5
	 HWulDjcILcUD5lQQT8CoC8RUjUDsDy3PTtfIFr14Ylsezw77bexcawZZqMQyOnTWsT
	 cNYX6BoLUw4kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF49BC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958226277.5108.10170068920020075753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585d1ab33ad85303d66e249cd7b987311ccb03d6968a28688c542d463ef0aff3
Date: Fri, 28 Jun 2024 13:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719582262
