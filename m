Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BDAB665
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766833434; cv=none; b=rZIPkKM+peR5BHtzzINL7T8eiXJsJBum/y39tu8jF7SS4CWXzuU2njTqNCTOYUQ0K0Rl1KVUMWjqFB1vc8xJyJJasMOZ0zP/GwJgtRvfo71050emfUsvn5eJ/jmI5Jp/+HHlRZ5J/mRyzz8szczu5e51YTiGg4ivkHIaioSyEz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766833434; c=relaxed/simple;
	bh=qZn6x/MhAJGusiWWO1+8aYKDdQoVvSuPvy/GjSVm7fU=;
	h=To:Subject:From:Message-Id:Date; b=s71RkMsnuwZLb5544alcDH5mTEW+M0VLyfRW5MIfyxphCq/y6od3FcJWD3vnlHMc/Q3DIpj1oe2YVasIHBREyPNROegCAnhDf8+XSm+7UsE6JQjtb/2IZcyfwOfdgv4UwlugjJq4uEmJk5TKNeteaJR+wUhy4i/ANz+C9cF6of0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhzxcF4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhzxcF4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA89FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766833433;
	bh=qZn6x/MhAJGusiWWO1+8aYKDdQoVvSuPvy/GjSVm7fU=;
	h=To:Subject:From:Date:From;
	b=uhzxcF4xKdq3nJZtCRxhVwpQlZoGFAdKpXI6dBhBQ/WNpnk+1ONyGuyd9NANligei
	 iyFMi9uV/lrZcrAMn5My6bbfZ+oe5UBlnLF2qGCYPunRevTq4A/MJi44Cc33bn0x3K
	 gQr2RnYktkhFnFEX3lU0JZwE/RDIznk267I2lIW9O+GaXcvUIiiELNjfsyZIyBEJyn
	 KV8ypMg5MnCrWp4YxhkgzRQWV3rMp+ofv/FlElDxMOghjm2g2c8Pk7SkWdx396DR7j
	 VU7doHUSQA8bVx3zxAnNd+k0IlQDs6If9/Fh0YBfGoG9cUH4LstawVebxwdmAExnRq
	 ktdwHCJkWO9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5A5E8FDD0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683343358.3933.6893765097229276541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06431c02d70fe6b36f36237b13e51c8659fa80633f44de60204cbd510f6adc53
Date: Sat, 27 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766833433
