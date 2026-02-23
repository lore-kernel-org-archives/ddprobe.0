Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE20B29BD9A
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771857293; cv=none; b=UdrcgOZPslF6NmJcg15qs7RjmlPmA7xHDYO24rtU+MS87AXM7qB/df/9AQnAzdk0U8Lz7zBSoD1opPBBIWYJ6nuKipXddk6oU0cyJlHpUDlQfDPl/D3ORIvwj3jndAewRWjT9zwr1B53JXodXekT1NIWLxeK5LGfdp2zLfNGPiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771857293; c=relaxed/simple;
	bh=FKYfeDYmFJYtFql4RW6l2y3u6zuyD9bHoXxDhqykLao=;
	h=To:Subject:From:Message-Id:Date; b=b/rLwtOyTsHsdFx0DVGWRCQaUYuLU5WXMo0217qGyMteNpg4GXkW1zeiFjg7Wcv9uUy2zYWKkpmoZ51xgovFueD+iMNIjoXxnTEkQbIGYi8HRwt3QTFWzOD69YYHw0u2intpz1h47CKGCHp/mQEaAPDvS+jPsdiQ/XI/1sWY4WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ynl7IQpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ynl7IQpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E46C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771857293;
	bh=FKYfeDYmFJYtFql4RW6l2y3u6zuyD9bHoXxDhqykLao=;
	h=To:Subject:From:Date:From;
	b=Ynl7IQpHYrdJQ+aCFa/gsLocTjb10Hu1APef3CkSwDfkNZiP694OiXibdqSzxx+hF
	 vY5TqCU+Rvz+HNexEFu5aq0kKu/q5Q009P+nTjX1221FTz9OBAL5o8wkpVRXSWsxbv
	 guCls2xCm72MQFbq975PKtHI2pEc0Dz2WujMOKjJxFCaT3IGZtvIrhnFA0/eQi667s
	 E3MvLVJ9yBDpnIKob0GTXA6KyED6buvo+qI4qkalcbj/Cg10E8Vbyun0/z6pgSupyX
	 eq71SaVk3N9kZucQHvx0A75FbytOM6d6Oz21ZI0e+5nHESefjtklPMmYeJb+T4keZh
	 jBZmo6SoGuyKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90429EA4FC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185729358.10610.4642689744235414769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33336b023a1c7edc4d56b58c289f3dc79c7a1f712ffb5675330bd75996c3514
Date: Mon, 23 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771857293
