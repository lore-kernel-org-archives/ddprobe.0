Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227C91C3D
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727123754; cv=none; b=lirEoniYr5vyOHsHAXutaSqphV/MfqVR0WMnNnH8qe80T0NxQ/1ZT3JQsv3bcOZAxdMM4GM+n5GBqKeD8G1bbzv+eenrp32UeX1IrHPPIrdMPFFTV9Lj3uvVhLXDmcf3imC4wlsWf2Ag5ITlazouGXqnM9Y3+15iVsv0qz8gCWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727123754; c=relaxed/simple;
	bh=MlJ9hqUYu9zHFeIESocXeXv4/0htCwsngwvPJjbAES0=;
	h=To:Subject:From:Message-Id:Date; b=KBXsFuVbGdrsWVH/07WsQVTcHcVEImnx4IiLPj6k2Za8hc2mcXh5hFdNeT674GCNqF//wpBaAWjAapUDcZOVOrmcoz/7cvHGt3oXy0LnKO5MM9bBAKr3bszpADQ4655vV3BkuS1tPlDnLJF+WtOmlKzmiRc58pZaT6fjpILIrVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbncE0W5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbncE0W5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DB1C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727123753;
	bh=MlJ9hqUYu9zHFeIESocXeXv4/0htCwsngwvPJjbAES0=;
	h=To:Subject:From:Date:From;
	b=TbncE0W5EQ1qDdzKc70iJ4HnnMYUBZxNUXn1R91RgZHIlFoGMf64hrQOqmVu40u5I
	 kvqV/HNprrib32m8g4cqFqgKZ57xsmYgFHGMlQnHMLwhGeQuMC720kOKhXyl1jA8Oq
	 fP8lP9ip7upe6Wn8GP/VVPVIdpiK5vVI2WFxJEwg9MAmYNUkqID56xkrUU21my1LsA
	 xqguZNThqKI33rr2zD/AXRapd/BKTaiLusamLhrwOm3/NcojfG/Bp62YClreUR6xaq
	 94ZH4x8jAG4xQSTziXSrRGTAcnR81l2ck64n/sPYWTX0VRUYvTdlf+ACFP5CkgthWx
	 mojOGBurVtd+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D29CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172712375358.15128.8191993062304941341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902e4554e99b0240c25f9eee50152804708fa5ab854a2a3348efb79bf74a0afe
Date: Mon, 23 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727123753
