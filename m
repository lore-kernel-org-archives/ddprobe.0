Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2152C27815D
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765050174; cv=none; b=QbRYGQBHOkAVmk24V2LvuQ8/eXLgHcTVC5g7sOBXFbVCmIA/jaxDjwmDnA7QAhLA//fznleiR/iOlDi9+XmgZBUaMMdJ4wncG15AWMqXs5NwOEsGa4/Rnslv2fCYlLPpBMXHDAMagK/bXP+oJs/lIT0dzUtLwTnMzbbArnwyZV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765050174; c=relaxed/simple;
	bh=PnP7rB/2Mm47RzWVftsbHIMHhLzKZa80PbITEf6ICcw=;
	h=To:Subject:From:Message-Id:Date; b=Dfr77wTQQK5KfH5viR80pOvj4cqbwIFC4p+A87HTRc2n5P71eVOnTgStT3HxQKxNlwTy+wSMxALcUjlmGDMcsq8VwAzg//3g9zEFMJTVKh7qtMO6HDFSzyW4QU4JPJqDqgN1eGLjbTbw5Eej8oCWeIF+mSRPksJd+ea7rvSe7Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZnCV9za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZnCV9za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59AEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765050173;
	bh=PnP7rB/2Mm47RzWVftsbHIMHhLzKZa80PbITEf6ICcw=;
	h=To:Subject:From:Date:From;
	b=SZnCV9zap4s19B+jVx8t2j1N5+Uk49BTESY/LuyCkkCOw+DXvKf6yAbNL5qPorae5
	 I61N9kb/hghsX4sdkU72HE0Z+j6goEBPLzBjSTK8iJm2V6rRTKz59HJRVcCr0GyOaQ
	 jkePgwiY2AprsuOWjBbk6diY6VvgHM3rhxQ13CewMG3ToA6wDfEk29ZmUKaWXQtO0H
	 8mekRdSdO59tjTtH12ibcOfzscnkuWTMEz7p3jE5Z0ujv65h2eVbEPnXT/IoI9Zq6M
	 RhOtjl5mqprruflsMkEBM9JG3yDA35Ph1fwKEDuzeUdlD6x6p0Eof61gmbb5d8oVkz
	 qwRnVJ08VyYgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F0D3B7E0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505017358.17921.1830748687434549095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9122f44c2bb87785376306285ca8dbeca128a0698118c05ac691f690b0be4d88
Date: Sat, 06 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765050173
