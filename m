Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6268336F909
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791690034; cv=none; b=OMJYQECSF21y92rgLxkMiTPbZXsnLFeNreekvN0VI0oZUn/T6W27u5V5MZAHm1GLMdkZNxnAKs3ObjDTjsd2rg4P9K8MWsVnRe2/GyzdfVlHmXMXAb8tf8l4UV0FMjCTs1g4k1qwd9PrayvHWlwelKNm2iqbXaazwYGhurOZxLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791690034; c=relaxed/simple;
	bh=CfCX4E4f9QDmzWISh4FGkiJHyQ7nDkIkbINLdh1oGm8=;
	h=To:Subject:From:Message-Id:Date; b=nrCvJqokP51X7DDH8XmAWMAfsxB7gQDl9wvNprTIhp+jC/S3UlF50fcgYt99fhmmsspGWMoXAx+2XSW7yYJUXJIr9fgUVXdPF3t/yMRM+jxWAs8N8xrudPiIv81lVtJlb+M0aiZuu+eRiiGEEQvGKlZry5rIO4+O9O6uFe/Y6EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9s4Cxjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9s4Cxjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D297EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791690033;
	bh=CfCX4E4f9QDmzWISh4FGkiJHyQ7nDkIkbINLdh1oGm8=;
	h=To:Subject:From:Date:From;
	b=b9s4CxjxsWhbL11WGpLoFof3znS9gjhPWGTpa14prOLkI5eBWhAQYRi30Mgv7sap/
	 DxBVc3uWeMCAivGsW84YgkH3ZGtNggNlsGvx3AiA33QNRsmpFtwzWxvaxAq6VU3xkn
	 4D+W+bQv+5lqy62I/GyCfz4EZfwPcyTH0jVfKnur0VCfci+Mwgicq6E1BeZCakU2Kc
	 oSHGPlU6r4uk5FX5Pqg5+nDR7ud5aoInGDLYdx5fHJ2Q2HNzORXNzkO/mdAZc8djbA
	 QHLsp+k0isCFGwUaLoeA2gpZlrnPVQxsnr7dejmeAQs05E6ADGFb9BmrdkeXJejCtl
	 /7VhLbcE+Wr8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEF7CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169003368.28367.12498926319347897153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b768a37d4f4c2eef72c0d075d426058593e15ec84567a395314421b1281aa6d
Date: Sun, 11 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791690033
