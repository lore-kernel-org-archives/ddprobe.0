Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3223B3FB06F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777537654; cv=none; b=GyTFRkmdsOnLiQOEmtIXbiODlPd/HsHRjsEYBOFrMUcMg4V7xdjCpqyAn3d1l4bikBGE4cFYJS07yTxhimpQzviV8EyhjwHaEY4o1sJZf9iCoG/bWvsKFRnh29THKOnk4PoWOkvWP+QVPXbdLMeX6XQRhOX3RW1evNp3VCcXSoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777537654; c=relaxed/simple;
	bh=nrNAS4NvBc8waClJEfqTrFluilBkSBr2R5dBGoT1hLM=;
	h=To:Subject:From:Message-Id:Date; b=gZJOG1l+YwGksotM1LmVSoU5MkykFIfJpVJtmNkHojhfG9MCvYuI/JlhX8KOGHM2Bh83mbbxcGuDFqWHo4Aj9hsdcHy6b3J/kKZ6xDSXNH1X4f7+4a69XzptLzrMldfFEG1Vnr6ag6KBKZajny0r+MKRPjJ45asdHdMYYd8zq7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbLlLzS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbLlLzS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9737C2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777537653;
	bh=nrNAS4NvBc8waClJEfqTrFluilBkSBr2R5dBGoT1hLM=;
	h=To:Subject:From:Date:From;
	b=EbLlLzS1Qpl9LTVssdrTk2Jz/5vcle9hdwOUXomfoSKvW1G03Mj8oxCBrSKyssCDA
	 eZMAefzFFzkYAGGTVtM81XHWYB4eQ0Mjm32xV8WHut7SsMCcA/L9OBmJyH/De7RvKd
	 Wri0xPWMIIAzLYJ1ue38zeoB57ioZ9smar9JBIOCWi8NgsvmrAiBf6h2IPMzCHst87
	 qPOdm9KhrXRRt5jcybRZDUBlLSYcSiZwByoGEEDpiTXIZ+isI261ZC3xBdjwLBC5Xk
	 ar/OzyIid30ajFwF6C3e5FhbulmUPeCcXoluTQEV91xj4mQRjOBNcQMVnTM8crxEPT
	 h7uQNkxIDrXLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E81FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753765368.1593.8509167450855792027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf72c98171acc1179a9d5992506698ff7f4690385681bbcd84fdc958d706aaee
Date: Thu, 30 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777537653
