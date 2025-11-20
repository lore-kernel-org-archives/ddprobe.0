Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137851A00F0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763598114; cv=none; b=Ovo6FF6ofwjk/6jrGS4F79tQg7z0n9rhfP8P0KpV1KMF46uc0bLwlVM0lGIEyr10Of7Pn6De8YzsTdz1jPUHWa4OnvoigNPa+o22opg4TqXCa7ZA1yHpkINsIq/n6TH6qmK/23mWaWx55P/AunJQOzmTSth5mA1CzevBUkKfqsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763598114; c=relaxed/simple;
	bh=zEi3FmCblo/FpZJev5jFfQL03HWrd3gQSU1JMFf6DGI=;
	h=To:Subject:From:Message-Id:Date; b=FynKhWil0yOwqQ0HC/21Eba6NVR1K/3YI7Vkee5i6Xa+d8LN8Nu9a6nIm37zghvW7vkLl+kOtJRr64HotJSxS7KWqpp3/pp8Jg5BMpNmewL+XCRcQE5bZkyxwQB8OEW8325JWXzDIWPLI2SxUSk2o+pMV66ltZBhYcXEPNMdOOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSeHqznY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSeHqznY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7036C116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763598113;
	bh=zEi3FmCblo/FpZJev5jFfQL03HWrd3gQSU1JMFf6DGI=;
	h=To:Subject:From:Date:From;
	b=ZSeHqznYf8K/GRvS3p8+gobQwkSAmpWeTa+4qJjlFrT/ezsfUObQV3LHKAH75JlUc
	 89WWSGKYGDER7FrvEfrTsryb8nvT+K9y9xx7DPRpFtcHL2XYiBE+YJDRks0N4rgprH
	 8dQ7zP9g8vkj06oKPk+IBD5505QMhXVe0Pa5zlYe+5sDDf0lWPpC4CEbr7tPRcdM9R
	 pFJtVbg/9olAeL60r3dwflpKktsYiWviBIoJN94sVAqumUOthCRHIZ/VGiJJfJ3tWp
	 VdzhSG3mJ7jsfgqftOjziT4/40sjeFfwD1NXkMTd/AYRMbdTyntRjHhuyQctmNKWiP
	 JbTYFpvxqvP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952AFCF6499
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359811359.18275.2721908947600625583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a434c196192cddbd4670c5935ad5027e9c0a31a751efc67c89dc15ba651b7f19
Date: Thu, 20 Nov 2025 00:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763598113
