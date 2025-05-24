Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411CCBA50
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748051994; cv=none; b=YF/gGn/zD55/bovdlwBFko8BS65AmyJayV9xb62u/Up8wX4qGlOrLYGE+d38zRiafsi3RyiPQ5diprItBDLE2Mkmbzs1yrk7FelXXCyfGpV4KspRB0uCqTx+5Bh+Z05ROEn12GATVwaIo+bKC9SaczW9MjV7CiqfudTJkw5QlhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748051994; c=relaxed/simple;
	bh=K+VRopPr4ZYMTpPdknSdKSUmVY3Zpp3H1MQywMAbzBM=;
	h=To:Subject:From:Message-Id:Date; b=u70aU1wPFXYlwA3agGjSpJicLuyMv+enuPXUIdVZmubQXBd8TQbBVmYxplS9p7Kd4D4zm8D9QZCItVre+BLohHljexz+ln3FE/vcw5oOJOxR6CGHhcqkJawGi2szeKNsJ0QJSccl4U7G5pip8N0HQxpnjjkYjbcv0PTt6Lwxqrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gL1cvLeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gL1cvLeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F32C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748051993;
	bh=K+VRopPr4ZYMTpPdknSdKSUmVY3Zpp3H1MQywMAbzBM=;
	h=To:Subject:From:Date:From;
	b=gL1cvLeQ+Zb2i0tsnpc4IcJOzG2Z9uigi3y002qkHAZ++YRaQlDdxEWUsnxl7xpM9
	 JW6D1m3jTYL0OUy59MF6bP3Svr04O4XWUrPKIKj+NHya3Ty6jWeNofjXr+PNJb1Bhz
	 LcFXNXEVtuDvRyZ2TmQUg3aT/5qFsoSHtzx554HYFQC1EGAzgf4ujVF0ZoA7HnjbRR
	 5JlOd4zWc5ro0YuxGIsdJXiENJ07MUB8FHAU0OMQdJtk5ux/5lyhoGoepxCyFTyaLC
	 HTqkJTDNlst44MujpVPqkDslggIdj+7tE55u0CfgyPnuW1TrXF6cQBlrapLV+/D0JN
	 zFeS240IT8kOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92726C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805199358.2177.14764438222448325272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2b9a60997bc15ebc9eadefa9b6603f60543511ac06002cea2309fd20b4c939
Date: Sat, 24 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748051993
