Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335312989B4
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764764574; cv=none; b=fk+vh47wju4WEi/+0YxX1OiAeugxbu5UecDJy2Z/QkyPHmPJTr4bScvcaVgKGlpY0w4U0P32JDFog4X1hrTNOlREeGuNZqAE+lcK+HW2S4erUUW0RR8dvXTqrHrl5qPfzNEr83+nKQZBxFBqs3FDxCJ2rPqCvZ6s0HpnRpmf/dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764764574; c=relaxed/simple;
	bh=Ww6JxZqpVkv/TxfyH0J24/2h9nUaaTVZUNuAWNf6P+8=;
	h=To:Subject:From:Message-Id:Date; b=YYem1KyzpHUqBAb73Yh5dv7ZeAs3i7cbTLVS32ab5GYLT8CajsLn+W3V2yvltlGiUE6Ib/hTpYoyD0L6/WAvTXC7F5e9kjMMcldYK01G+iqxxDeuGNGJDuuAKCMAr1N7iOmjy5dOslYqrmUEMjU31DDL/0x7+qzWvu2W4ijvqIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXjE0mPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXjE0mPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE771C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764764573;
	bh=Ww6JxZqpVkv/TxfyH0J24/2h9nUaaTVZUNuAWNf6P+8=;
	h=To:Subject:From:Date:From;
	b=KXjE0mPs51sT1B3/tsuMxzH6G+s/8mS/iJb05jXdRrnmNjDd8Pjs10LD0+DgQfCoh
	 yIAA3/NZ+bskEw9u1cH8fJKbtnMJqZ5FbaPSC9bVLI9A36+Hmqun37QY1d7M+Dd/NE
	 m2FlpiKfFlTlvLY+AM5GIsV7UMINoZ8+FHxyZNcGgSeoiYWoy7ugZrhPUwmp/uboKQ
	 uBalSVwXSzwqH87pMlN2mLImv8L1WG7OeGVrWJ9yfLqX0ZjpdAN7XGMU3MbxN79iqk
	 6bjzLhsklc8ksDQYjeTTui+8HWMdXFQVeZhmXMx6WGUz2vAwl7LjSV1uNKxPaOCHcA
	 51o/Z84KHVSzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997F9D12D57
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476457358.2558.16121181393401086462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51243535e60d794cb0c6698a1cddb24dc0643336e5af6dd08b1015ac841e5bf0
Date: Wed, 03 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764764573
