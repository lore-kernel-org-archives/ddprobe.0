Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3882F26AEC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746635394; cv=none; b=Eu3RRbLuE0n5h7d7DlF96SY49/q3K5Vg/+geubgnOoEEXC2MU6vn/DeeU65XDI3z2Hl62T920eM/cjXpbH2BVoIp6oc8PA3D0oTNgU+fgr+YM1nn5YmPvw42oS4YEegHfqHI5niDdrb1UCcZ1dXlrRVl1JgGGpB9x6NRT5qCOHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746635394; c=relaxed/simple;
	bh=fMix2kLzynu85nXr3i2mG7L1oM/Ef09s01NxV60nanQ=;
	h=To:Subject:From:Message-Id:Date; b=IFoc3c2GXWVlmAkyrRFtoSl+k5pisLcwa3g3fIvW7jGQNnFuj6elTuNEYw8IrwzEk2ShMSebN/t4308ALMvAKhCAvUAii0BW2g9j1CN/Pb0wWCiPRK/rV+j3MtoECYvzcCPJ5LkBkZCbrwc1aT+ITfkEF1EZvkDVjL6zeZW8nyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btEn1NXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btEn1NXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746635393;
	bh=fMix2kLzynu85nXr3i2mG7L1oM/Ef09s01NxV60nanQ=;
	h=To:Subject:From:Date:From;
	b=btEn1NXxbzu90fAaMCmXBxn3kk5rE1f7UhVwKm6namtE7CUdvPf18feNr0Xd28YvX
	 5tHcEWqltiHjcneLWHvBCCCBrhgr/dOkVpX6wXTKDa0iywN/UOLipZryjlkqKoDxUy
	 gRIFkz0y92fCOqTeRhiST3Q6qJNRXfTQVVYw85w8g6uUQwxJ6nErNyEHiw9cuTtmQU
	 ne7eZcNVdYRGf/pt9cgzovpvVWmXBHXeEZdB4WC9xBvTFho+fd83mBnRSluBcNSTLp
	 duORcJ31G9q9hTCeo3m9YpxTSUOQtH3MKCEGopxT7AD9Z8asJia8VCDxs6i9Ts37fv
	 PiMwGyEsnK9aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E11EC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663539357.1799.14171960092601078604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d240cc691ea60d01acd15019701a0dc2a11c42874226e9a079232f9af70845
Date: Wed, 07 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746635393
