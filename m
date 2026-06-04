Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CA61C5F27
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780544674; cv=none; b=acSyOeuN1ojfTjHzkXVuMb9sBOm/s1Yl31DPJL5g7e3+mFO2AVZOlAVihFi1qQSsStpfKiSN2aTwcoDTwY6tfeD/RMTGridZQXKbqU1zVDcYRUftkM0jcRweGIZ14N+RjBa5l98/AA0tvxhWvAaY9D2EQIgC851q3ew7S6QSXV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780544674; c=relaxed/simple;
	bh=9fxwji7vTHC2Ww9wIlNHJpLyDU8LPBfon4mXa6G5A7Y=;
	h=To:Subject:From:Message-Id:Date; b=M6DGRw8Hffv1JqHXRxdpMBqbaU5qHumkqDrghrWTY33X0Y0fjHBzUkQq+2tetFCWbHVEmCbcdfpb5Iyg722ax7ad6odSFZTfpqZejmY6RGr+kncQY6UvRLUGUNenTJ+y3g7rWB0mYLzCDvtzdyq0NHZMa9BlnfkbXos6dfpxXn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4paYZum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4paYZum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A9CC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780544673;
	bh=9fxwji7vTHC2Ww9wIlNHJpLyDU8LPBfon4mXa6G5A7Y=;
	h=To:Subject:From:Date:From;
	b=i4paYZum4+g81S4cbkrqCOILfadR9RDHyHasVta66r2l60R4+vKzOWOWVzCCBW/8g
	 ZhVhmw04oguVgbbz/zBhkDjXc2nnE2DmNsrvKJnwajlk7PATI8MguN6304EAPSN47Y
	 vUCyhCUNaJJmE/bCawD4bJ+zVok5w53902YGNFom+2lt0nLC7rXMZp/ZWRLXFIytrJ
	 pIvFphqCeEl8ZXDdbL7pSiJcXtj1GHjCx8a/JoS0FUs3hTE12NNVQrqgZZvGj7Lev+
	 j9V8DvT749XpMIxuvpcjqYcFsX9U/lLQjDxIlASVoiGbxNMbWg3BHev5lLKmj4Eddx
	 KRHZ1Dga5CPqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED44CD6E55
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054467368.21323.16232676190198140984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8f876b055d62be3d556b73882b57cc2aa8e3442a47eab4e97446b38ed1b968
Date: Thu, 04 Jun 2026 03:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780544673
