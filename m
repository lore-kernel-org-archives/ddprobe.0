Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A7137A494
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778234854; cv=none; b=I0K7Jk3MUivwRXaS8g7A4/O0JEbxlogrkrDTUHwS/2UW0gyUD4XhxrzZFzegkm7vu5ua73jdxAEDdJOTn8onMIwV83KI4vFd1nL60ZUsngJHn2lAoF2bowPESzpN1d6ikP4lpAURPw0Q45wSgmNogN2bDH/9icgvbFN2yly+trk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778234854; c=relaxed/simple;
	bh=SuPxByD5O8hM0T7A2afNCD51XZDYRz6uVeOxGj7KMy0=;
	h=To:Subject:From:Message-Id:Date; b=dSEtdxrsyJ1XdMxafNcpfGeblSA517oa+eQ80BqTIqiXnI0485x5JSnfctTjsR0khrWEH2Zh8M5zFqrTKuVg/op05VqTuSdePqfKYOlzc6OVZQdQgaZZZ67iOZQE3yEH4mSpFGRFXkMMIq3rgdcgmLCodRfHJSNJpNmTbpipei0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTDFjlMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTDFjlMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0D5C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778234853;
	bh=SuPxByD5O8hM0T7A2afNCD51XZDYRz6uVeOxGj7KMy0=;
	h=To:Subject:From:Date:From;
	b=QTDFjlMF1GKVEH6F1LVKgKDUB0C36XNv+PXmkuryiizvfqicuq0fb3SZIOSr/pSTY
	 Jt9kD+SEPWFPDL6ubGDY1PMjWll+3zqbZSPWvkcMpEz2q23UvRlE47TmSSUSlB6kc4
	 weMXMO8wjiHRF7DGOLgB0iRLWlt3wvHQVbqAux1q1km3dZV+kKRx25gR4hax2CtQQu
	 Y7CfF9mYhQnsaNSu3k5+BzdYP85B7WJIXEV3wZAuEblieFYEjhiEftrP21uhfIpyza
	 5AtTG4Gh49nelrX9SAhiUfV7gnLAI9PH1eIAmRw2ViELtGpiLFzG/fD7kmsd748VPi
	 wlGve09OxFqAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC07ECD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823485369.4362.17944554241425026200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf05e37d5e3557f1bd9ed56b5e3d33e0ec9d916a045fea5a6ee50461aa65ad73
Date: Fri, 08 May 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778234853
