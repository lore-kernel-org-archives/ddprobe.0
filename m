Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4010629A30A
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749745794; cv=none; b=LdxO6GwXr9r5C/F70OZCKhByVZ9WymA1iVHiYO1RtfL7qkw4KjOnzzQWH1I53UUZMVk9VR8BnUMG1sI0hUekqhRgTw8/xX68UGbRgb3fp1w7SAg8g1rdq+EYIrdt2NxMVcqHTHwseHGIJv6g3WWlZQs73g5llIp5ZM05GdXl3I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749745794; c=relaxed/simple;
	bh=I0m0x06AwBEXOOoi7dkzAG9nwhSQo5I/Av4Equuo0cI=;
	h=To:Subject:From:Message-Id:Date; b=FRmjfdrXezKH3vBOGX1RZmUC3bqCfw59m2mRtTf77ytB+t4xHIdl3LYODNJnln0v/1iWsfSwKvvIlTvb5ZrKvI30cf172bkWIvDnK1/U+kV9lFUU2oxRqYURC4un1eumPlKwZJ5a3BQyllNM/LX55HHb8taBwTIyVS2mLAWNrGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BK2a09Jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BK2a09Jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB52C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749745793;
	bh=I0m0x06AwBEXOOoi7dkzAG9nwhSQo5I/Av4Equuo0cI=;
	h=To:Subject:From:Date:From;
	b=BK2a09JpYO1tb9saY7dVX+C3/9M+/mvVJXd2UqDxOUZSR1uaq23R1XyikyC6K7qmf
	 5FfaOpNzBz3B72mW1KBMBAoNoUiP++RhfnCVUuh8i5htzYn9hE+gXBsZq4BMcRouvh
	 YEqfPNFi6TyTudqgZI9SDG1UQc690jTcoShLlp7MZKlUqpzsfp6Ccf3giYueSHrZsa
	 5Lo4PfWnaMHVBfnvC9o+qCkvG9dCuoggpzldDppMhEpU5Yh1HZ9l7mtAlvoRhPH4Ru
	 QJdrHmnp1dX6pOY9VsoIrdI8aYsz964of0nvDzaUz04RDRkB5sOCHxxBLRJRBK2CG5
	 a6Qvhxr5zw/YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED90C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974579357.16167.15714890935523184949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965dfcc791872f34be025bba8d58812921ca64713104c65e9540b2e0884744a8
Date: Thu, 12 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749745793
