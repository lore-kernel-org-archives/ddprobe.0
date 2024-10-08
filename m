Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD9F1DE3A3
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728391554; cv=none; b=Y6sASlP7tG/sv+aYSum9R7IkaXA0GPZst2W4WBPvXgcX2cAqOSh92G28DwFZOILI1xhNi7+h9cMS2zJ6Rzh8LdzcadD4baWFjHZ/dIzjiuJimolUL34IG39xdPEFxFSmJ7SGqCZkNl4zWUaPj0cOGfXFXXHNGb4Y5H2tWR15K5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728391554; c=relaxed/simple;
	bh=caXMYV2XgA2knkN7D9mh7W04SfOknOiwpspTBPFkqB4=;
	h=To:Subject:From:Message-Id:Date; b=TGqqpArGrt2MKm7gS8+1G09EBS7Ydu4BtJIz/+cqP/EYXPsajDoHaQ/3LaLVEHcA5kVFCgkVShUNImziJts1pD8g6X+/0djsKowyPcUYqoDdxB3/PrXS2Tk704QH7EgjB9LhK7I/NopRIP0ZuzQRCrEG3BLHjeU/sv4zwaH+w2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti8mqBkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti8mqBkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A393AC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728391553;
	bh=caXMYV2XgA2knkN7D9mh7W04SfOknOiwpspTBPFkqB4=;
	h=To:Subject:From:Date:From;
	b=ti8mqBkzyu/6LH6N0dI4U+ms7Pplkv+NIGQTY5+E68cnXv3W7rLQ2NKIO58B0rDWe
	 vWjhVCZAV9mLHjKR2wkq6WWyTnxhEDo2Kvev3QocYq12VkihyhWaR6bbPeLq25TXt7
	 ldFVMQiXSlCAq/YZjapKtROpx0Kv/XMMtktI+LJUcdkik9TgTFR+iOgFN7JDf9Q4uh
	 WEpoaA6OmgoBwnRRKnXFTsk8K99g3LDJODluOFs6oAsbVdRDWZftBikQFwSLoY5hBq
	 SgBqjqg6Ca18PCKVC8CIMVc5Kd/uW58Oes2IR0cJfgneZtdddQrrafbKPzs4hbzwjQ
	 yS/l/cbG7tvqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921C1CEF161
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172839155359.14346.11136463243777279018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab656fbbc5ee9409e37cf29607f4cf99dc81e4e552a95cc1054c30d77af5e3a
Date: Tue, 08 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728391553
