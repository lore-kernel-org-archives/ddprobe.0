Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA6C1DF73A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768667034; cv=none; b=b96qxkx8jbZwd30RIUPQ05MDjZq437XJks+9zn28cPbgL8qq/Nu8R3TwHQ2j6HcJBOpgHvtaj1Ittb9T1C0dImMpn1Y/m5j5N7uu6RJM38dsPsPZcvkt2QRO4kASPL1Z1JE7tArezut6ugnxlp+HttOJDH4XC5VCcdFYW0ku+0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768667034; c=relaxed/simple;
	bh=25s1SdR8JxlIASZtidwU5RrIUeECMYueszIDjyQCD3M=;
	h=To:Subject:From:Message-Id:Date; b=dI/bawoBvLIDKblBD/xNvhjZSLp2Q01bbh3XiiKVRikqb1gQDGyIoIQJLVm3z/Ix9zMWvs/wltREo1/wcawEYxoSnCm+Tr+hZoLgFbBW6OoBwlpcF119u7R1htH0LvCRkxgUstvRdhXJzTxIpJd1nBHePz/FgbwsVwZTkSRy4lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seBYgjin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seBYgjin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38C0C19423
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768667033;
	bh=25s1SdR8JxlIASZtidwU5RrIUeECMYueszIDjyQCD3M=;
	h=To:Subject:From:Date:From;
	b=seBYgjinuZjB65buPJm7w+vxjnJ7KgQld95Fi81wR22kC/6hVCYLd58dc5DDPpE2A
	 lTLb4BkdhqyuFimA41uzRp+ILly+tvyOWD+CvBcVdBuw4ymYH4rEzsu7Xv7+sV4Wdl
	 sgR3V15Q4+Lvi0yO/ukxcaVml7ZQE5nlT2GGAH0XL82udZg+2UQ/wUM1tmc495PzwE
	 /Ol0XYm8Bz/JFAAKjOnUWyEttdYR8XTLcp3bdQYPZC70qHkU/RaF4MNPZYS5NyG3Xp
	 Y+D7FEtodB+w1fh2Kj3z6Ge1cjcr/Bs/VlVLX2NMjnbBa8R0sHgJV47JnRviFBhzwf
	 POOcZ4W2BxZFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9513DC98327
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866703357.15315.13347765016081411783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2dc7afef99a1496a5a9e7315d33220ca6ba93a717a7a7d10098cbed35c698b5
Date: Sat, 17 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768667033
