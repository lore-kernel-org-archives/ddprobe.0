Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D1123C397
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755137394; cv=none; b=QY77KZfsxFYGj5ip/rkdrfxV8907kxs0yE1U3UcFwUcdd202LdiNrO5TYWM0b8j4IzOjndohi11FUkkxczg8vI7+eCx1zEraSfgHZca+e6cowvlnACJlMIHtaNNOn7Lcbtpdd8k7mv+NzbXA3gsLhb2fQKRROVBsShim1QGKE74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755137394; c=relaxed/simple;
	bh=4zqveWv5ZmiTKCF5MtYNNH6VXPj9IIii4/JvrZlP8Ok=;
	h=To:Subject:From:Message-Id:Date; b=fppRUxr0lsdq1SZLxS2ygyZFEpxiOLXAIIXKbG/drx+3MZ/CfTkeYOPW1sFCCFwNzXtpYqn4SluXkWlYrHO1BoY55KdyNi3erjXJCVVJ2qIRC4tJmk4MGEcWBlNXi5JvQb6Rh3y+HJoLm1mvuKKsidRX6Sh1XqVMDL232J+Nmd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXiurY/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXiurY/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E42DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755137393;
	bh=4zqveWv5ZmiTKCF5MtYNNH6VXPj9IIii4/JvrZlP8Ok=;
	h=To:Subject:From:Date:From;
	b=hXiurY/H0ag1/VZ5gGoP59ZRK6UffFZ+h/k2OMU3D0u0UBdjOd1810dNUg9w2NOeZ
	 xffyETlfHuAuJnyKTv3+iofuugJdMQlFoqiUGzK5uGZxs3SZaaKBEogCAJ/ZaAjCci
	 JLFzOEfmzWv81lzW9HK7o/950neeWMrTIr6zYut399M0vDnEmllti3BXm4J+/APrV+
	 FXI0lQEtts3Jhw5516Z2xBzWgdvdM0oIRV6mwnOAYK+0vkQ76qB1SdCOJhfNJTIdql
	 IPIL2RQ7KJKQbMIUW8cTPS+qcYsn+8KWumIzZjYiYrRzboRyQU1JOKLOM0yAIeje0f
	 UanrayuBdUsPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F030C87FCF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513739357.9767.16019472195178504972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a282e66180ed917542c4f29ba88e67141b86e1c28dfa2306671e98d666e949
Date: Thu, 14 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755137393
