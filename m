Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2ECA14D43A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 10:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715076143; cv=none; b=hJ97jIgjXXTpDczhXdjzdzCPi37WG0IizR/kGxzKuwGsdpRK5HNDW4Jb+4CGMkKidrxhl9p8iIo1FO7qy7TjXWC2DTLQuhtYFJGPGM++X3tgxEu+kikYmfJsskJbDQOKJDcJSQVCQmQdkwv9OBZQx2ZVhvaglhF+hFBE04AvlSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715076143; c=relaxed/simple;
	bh=QD+lFg3KzKUxoDn3Kghdxqgz3Gb4qs5ggihKjnNfYRY=;
	h=To:Subject:From:Message-Id:Date; b=ft9EmeeRnv+Jz7o0lThaWjWuPUkGVNmclzRbLTa0tho5hYQuGhYfF+gQfTXMhZ1GNHTTEoSdyEBnTIPGDOMcv/eYIiTT+/kF3uJYeENuPVk2PqJSCUaSQQHlRmhmkBSZAbtxSH+Wmyhkt/Z3YIf6fJ8G1oGyv5r0F+032GmncQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5oNwbTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5oNwbTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46D5C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715076142;
	bh=QD+lFg3KzKUxoDn3Kghdxqgz3Gb4qs5ggihKjnNfYRY=;
	h=To:Subject:From:Date:From;
	b=m5oNwbTbndZ0IxuPG3imlmySyQGqDUczSRISR5FjDHqwcj2IVj/M5QAXtmHLk6onE
	 UYbfoJ6de3rm7nQtt8v9WkiCUzp7pxLM1Gomm642iEPr0dvC0flkV2bxnUmJAGmOZP
	 wsVnhtcbXrT2mCJxj7gsXH8a6L2ENPu0+ToeuzCzPBTuIrHYoSnNHvWcu8KxEKCaW8
	 HEtyvegWjcMr7Z6AxmpkjTerJLIyoZqJBEqsC7+u566WpJeglUlycweqMxM5XPTLEf
	 Wo4oxT/AbYalaMsxQhVR3JJ1DK1001zsctvt5VPfGMuQ7L06NBmkUdbui8gxx7Kv1P
	 ymvg11c5c+VUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BB4C25B4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171507614275.14069.3427374231656567115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d643c0ee643c5799ad05c6d624e9822d508256c9920737b231649da482fa4b6a
Date: Tue, 07 May 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715076142
