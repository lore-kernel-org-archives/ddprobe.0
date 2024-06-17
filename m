Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D951D9520
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718647103; cv=none; b=d/DxcGpXkuDYTS7QmQKtr9DZznSwU4mwBTvF6hYzO7VzsBhzflZuctp+eIx07ZtmM98e2ZBKaGv/eH8OhoTLl9NGkdsPc6M1ES2boO60vsjiN/uF+bJymLDp9jkvKOjbi4uYpFWI15GldHZkN0S0ykEzmePMAK7xOsXzKLYVuPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718647103; c=relaxed/simple;
	bh=plNWh0gquNc9/ZlP/VGn+aNYwg9Zxho7lkAzPQ92858=;
	h=To:Subject:From:Message-Id:Date; b=HvY5foj3yGyE9Cc+B+c7l1APWc7OMQb3J2bsNLYxJDuAjJ5QQHVnPtqaDmn5sHDnRv1hQdhRBz9fLF+kbtc8Jl511XKL7NIz8ASpEGLU/ETro2ftpJjqoZo9kFGg1pUP2eDLX9R4zgBLBrMcbBW/EUsOVdkvILCgYIQPgI1DPis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGJ0MbfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGJ0MbfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEA6C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718647102;
	bh=plNWh0gquNc9/ZlP/VGn+aNYwg9Zxho7lkAzPQ92858=;
	h=To:Subject:From:Date:From;
	b=JGJ0MbfSE3v35Xl8j95isQc+0gAInN4DJjIeqzAWczhL0bHKaQCA08Qfg6WSSj849
	 S1FZhzt/TAM3rpzbmo/xVsyT9eyq/TCe1SPJCNufv6vMLQSvkO6Xbj08FUE5YGypQc
	 emiNw2KzUE4ATxtRtHS+pwydF2Ye2gHqaeombtfvDJ0hJbxTJFR47OigQaqhwPdFmp
	 M06j3SJoZ48nHAqIAV5UQu/y2cB9Ya+EGNvNIP52q6CcdrlfGurQHz8AkEnc/l0bWf
	 GpKtf3/UQWG02a19EN+2EKhN2GqfgXtA0HF5S3T54XTPlbINKaBNd7U15oTlHQ47S3
	 rpeAMM5V14Evw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2C7C2BA1A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864710275.23299.14057216584441690682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5805ac30783211a7ef53c187c5cbc196e7fe3c5f9c504b062226e03160c800f
Date: Mon, 17 Jun 2024 17:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718647102
