Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287E81C695
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766760834; cv=none; b=g7Pl1YyWPgB0HJYV1sRmrsf8XGTcWmpoWeqCoK3Guyd6DdOBIUvF0bZVSkouRxVEUivbegXDe8Dd4P7J5hl72fs9Rz8/Fs5jriESbGonwXLHIUaGywCYE8NH6ER6WmB+vHST5vkb5m2rgHhisnEwkdszH6Y+TPBItSkvA+irEFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766760834; c=relaxed/simple;
	bh=nRGlgtxGGYO72lrOl1Bp/5gWU0oQF0ZOnRdOO5jD2/0=;
	h=To:Subject:From:Message-Id:Date; b=d7FcViXPpUmmjqDWwS+CRD62Ddq2OCGhLcJdZU31+VL8SDac+K/25upIkZPzaDYuXTDk72bwos9dnXvKdmvyu+zlIksp6y5DKuot65eMP60bERUAASOHsYsHLgWiBFFav9T5hsxRedV4+599oOAxLxFZO5y0inKPYmiKJLrbJZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8P1qnKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8P1qnKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE343C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766760833;
	bh=nRGlgtxGGYO72lrOl1Bp/5gWU0oQF0ZOnRdOO5jD2/0=;
	h=To:Subject:From:Date:From;
	b=N8P1qnKd9iD9R87E+MKX2I6gzkGPqsS5JwGwseToF/soNE77z6bzXlQ5eb5LEVygW
	 rawr7EfR4MPiK45AMJ09Rget+JNwBNch6iKoeuXMGJqM69pLiv8jwNB94G3+rJptFQ
	 IW889owQr5J+1Df2+hhij7735ThhvQ7bbNwB+iEyUpZpAJCkacZez3Mtsb0qYGL2mM
	 NNSP+rKpfvvmqC8nHxGsGu6KujEnV3yiAi2r7oNaLLVBzvBDSNHNr0iovLMzpOAlL+
	 zI2qAa6IDa2Y3QaPrCJn+CLSXC6KqJBrMdNM76DgHlnNuqs1TwIC4mnl6CslFUdRNT
	 3doIkpZ18U7Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9704CE8FDA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676083359.31027.18193805399055450728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b58ba28e05d9aff6201760752f71a53a03f737847b5d000d11f007f6ef19fc3d
Date: Fri, 26 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766760833
