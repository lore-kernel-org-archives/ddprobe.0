Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46193BA4B
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733628954; cv=none; b=REurErXh9ZwnFCVbVqup3+OI/W2WWG2fK39eIgt+Lx1NNESDkPEJpDIop7RspN7TyB3oKPJgYJoqSo/mRbmQo237DGmkAd3WAQBKhM4IKMh8pIF+ARw1RG8S8ZBTzMPnyi3tT0v1O1W5X4e09DRQL3ukOn9IIPPX/ieGtPp/jC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733628954; c=relaxed/simple;
	bh=hwhI0NU5YZ4KDYbeidQ+8ThnJoojhwHQmvJ4Bw5kkdM=;
	h=To:Subject:From:Message-Id:Date; b=rBo1iiGfGcjr8pan9zqaPM3x9ShR16e+LJZw7r+g8tjGgyKapSVfRVzNYKKUK2Ke55KGMTDznY8UTWbD3YV2cWuymMM70Hk09cmAlHu7mVJHR295trwnYmTFYGK5JtRMCM8IHp0oUw7qq59291bk5YOaSLHiFVDtfmuiF0b0nuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwTIqqZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwTIqqZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6FDC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733628953;
	bh=hwhI0NU5YZ4KDYbeidQ+8ThnJoojhwHQmvJ4Bw5kkdM=;
	h=To:Subject:From:Date:From;
	b=SwTIqqZenzvsqpL7k6rmZB2AtsebJKI2gQQYI7E2Lxz88Iv5zfKfVBxW0VKaNjBoZ
	 IjSrlGYnRsEXJM4/L5Dxa3WYnFFTssYT7hbJ+UJM2oQQJ2eW2c2Sj+Gy6QFiT6907z
	 I9sKxnM1w2JpkCL5P+9gUEHoD/UOCPQIw5B7t7VDo9PkqaoIGnJjKC3OEaaA80FBEB
	 sBf0En9BADbYr5rcyf4Ql7QVQuyAxYB5EU8yzjQTxDheAL71JoXTHPBptyTgYGbI16
	 gzhUedKj1xPY2JncGIRwRR0JPPm1KCFWeATMlA/l0785kv+mETNQc1j2SCS70NXZKC
	 dCmqc4gwQhm/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D61E7717D
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173362895359.22952.8811623153897668623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa0d34a073f6c9cb2a8d44bf1e8ce880459645d1a00e1c2983664ab03d44faf
Date: Sun, 08 Dec 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733628953
