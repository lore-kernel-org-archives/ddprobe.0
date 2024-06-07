Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF7015CD6A
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717751243; cv=none; b=b2CMTEijsRfy9nezKwApkoWukpIJanYMlFpIdirvADkRaCAudO0UpBNwjU68My129ek5ABIkY/8dBtusgRzaedLnikVnNQny3Ivi2tGM9PZdi5D2/Rv7ixD0mGcxT/ucIvu0FtTQAncFoQ7kju88Cwje+6DAXCAZ7aXxfTAIVYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717751243; c=relaxed/simple;
	bh=TDBX4Mo0Ty1eR7ilW6ihvBYQmVo3DLMFK9BoA/e58nM=;
	h=To:Subject:From:Message-Id:Date; b=mipNdqixVO3VevFxjov9BCFwdbA4jK1k5Ii3xrrLltE+Q7a86AmOE+NHIfYHJNTwawhtfjEN1zpTOcuKNwQn1hTMLuzzTX0mPYZ92xMkC2tfLbZSQCvWiWMfx8Jb3coNdbG3rej75vvm2skD72NnyPmNp3V/IOxD9HKziDzYJzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPYY0Kjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPYY0Kjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E15E9C32781
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717751242;
	bh=TDBX4Mo0Ty1eR7ilW6ihvBYQmVo3DLMFK9BoA/e58nM=;
	h=To:Subject:From:Date:From;
	b=OPYY0KjfqbVk5exHQcAl8qahH3tA34kdR7k3RISS+47+F3T3e7CCR3nnl24DSQzHj
	 V6J1V17DG5ees+gwMtpdCijvB8qB1Tr4bQEAhm+vYAYBuLOy3bc+2gcXNaE4tpJOO8
	 ByT5FIFg0mlYe/1cIOJ945oi9ebjUb6B87yE29mfwL7rCdMmJTUEtutwmJLXRMyTpN
	 HbhdGbFvZgdB+u3tf6c+bzzUjS9TwDFidXgbaQ9/MTeAgIeMADcistxbinZ2yt2WJF
	 cQvHz+4ArQiJdjowr7NkHL9YIvdiZUQ+BEwdGPlEO6nSJpBQQKzu744Zfx5wB2Yh+o
	 rlZaQKFbxg4og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36F7C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775124278.1375.4591027452703584539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f4fa10b636bb41f9cbbcbba8f7577fa9807d329c3352b9c9d125bbbdf33b09
Date: Fri, 07 Jun 2024 09:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717751242
