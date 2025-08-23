Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFC92AD22
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755925794; cv=none; b=SF4VQjMAwGyeCJcO0MO3diA+GSZ2ShvL7MvfIkehYZxrEbur3DxQl0oJpGUmLlcR4aF2WqcbgEJlCEReW4+h48p5huooe0JmJzRTTjcIo7eKNGwqkdtacQxQ57Z+vNOW93pQov+ligiGgjW+Puv7qJhX3HPv21dNmXTfqHox3bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755925794; c=relaxed/simple;
	bh=MQD1UtZx1tx4UZQ5ckqwHherH3tjQSLlDRLq3U6sXZk=;
	h=To:Subject:From:Message-Id:Date; b=i3O+LPhn11obe1AqjKi8fRbprECpTf7eKksnOqQ8QYX4VYWOWFhHnOe0CFBMKeAXkTyoal3/ckcrUf/85xo3Tdl4FH83BbCFg9/CwCW22nN7zofXGjblwoFirIsO6eyVo6Jd4/EBvRY9NCrPaYbB8vfRWRtxQzFCxuKWhkp1Nsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvBXNfID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvBXNfID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01ADC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755925793;
	bh=MQD1UtZx1tx4UZQ5ckqwHherH3tjQSLlDRLq3U6sXZk=;
	h=To:Subject:From:Date:From;
	b=JvBXNfIDCX5kMc7sfVYH76UDVrwKuYcuPTpohtHKGuE6KJ6I+MjojzWXiusgkIS1Y
	 VE2e47b6au3gqtxuK58p0n0pmEAg0W0msfchVvvoAx17FZ1xG6C/fMYzvUszFs/TYf
	 xVvBkasoq++UWL0IWeZdtwnmrfjtNgg7GSerVueodg/E8LhMp2F+9XGV0LKFbkeYvn
	 QJcIZMFV2Zy/IHxDU3Bv2Hnh82JsahqnpiXMVOhrwbTXGYe/gmaL5f8L9UGXCSiHJ2
	 ZzRHbJb/cL4uWdC6pmLu6wmvxEtrI2kYsSfr4hw8xcd2B6qKrrK7BecQXZqmG5e8Xc
	 07o1Sv7WmEDsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD74CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592579357.20487.216585431371717511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e6505ec0b3f2d5994b3df27c5ba807ae6df6b4d26dbbbc6fa285b57aa4755f
Date: Sat, 23 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755925793
