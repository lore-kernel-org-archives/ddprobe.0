Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1934C21578F
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760027994; cv=none; b=RiLGPfqutiRw/fRSytLVPrvRhtCvjEQRFv9p+Uuv6SAWOyZp9i8SCBr6ADFmXRymYRmI0RMt9JAVJrf5Uctl2kLk3+bq4DwTKBP6gF4NVUa3HSTbMxVRbDUvqZC8SRh1jODZlJj/DzPUN4EfIM6MQ1KXBU0fFsfduiJOHKZy8nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760027994; c=relaxed/simple;
	bh=ojc1WGvpM9IQndNKMdBmiYvRk4LO1NZuW6bA6yRxo5Y=;
	h=To:Subject:From:Message-Id:Date; b=rlz4E4Ue6+dwy0tHlxzTeArd3abpudNvTwcgd9pl0J3Mzn4fs5zNtjiliJutqrhY3bCc1bDOiv/Y9kqeXDXtEz+K0k3JF4xtlaDxEYgAQkVK+A+ByT1wo7CGqer5bLaNNrgj+VZlmhy9tISBQ/X9rSETq7LUayA1IuPdWD+Wo9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aytdBbBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aytdBbBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5971C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760027993;
	bh=ojc1WGvpM9IQndNKMdBmiYvRk4LO1NZuW6bA6yRxo5Y=;
	h=To:Subject:From:Date:From;
	b=aytdBbBw7VJmcMosqoUq/VAULGCSGAqYsntuq2lmrWAk6OPbU2JRuufnnR7J1uYWu
	 VpW6RQmCVEJXZa+jAKcocnHCqwLnYxUbTSaKMJSu7st8MF8XPecL/XFB90GaxBGaaA
	 nLmbUiHlKdqzq0Imag2Shm8nrXb8pSrJ5usEA5z057qNumatV3+wCcPcuOCvXYGtua
	 GVA+eB+fq8P95QfGXA0tsPaaUJ1BTT/j+X4mQ/QULdDLVB3nbI1v3/oDqah8NUDPby
	 dArpsf0LfIeS5xvpHkG8VDVCaloWONaxrRqxXAAODQsHpudzOy8xlUAeClUPw1BMyH
	 zAVwuO292tgIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F5ACCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002799358.470.11117612669823528421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5840f5d3df162c3bf4885e4b82caa8f52c7acd8145cc670254b1439e20f24949
Date: Thu, 09 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760027993
