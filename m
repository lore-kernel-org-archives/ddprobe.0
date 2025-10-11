Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE6672618
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760143194; cv=none; b=lSi/ja+VX4EGEO7jlXjcQbH6FH/M8wJjZVvU4hYGJsHYtEBLcTqyNzpsW84tLsBqKb8dohNtikCApo1oheVPaPUJwLQUClH36IziQvAQ7gpHk7ZphdfQR+0uOO7VcNfyusgA6/93ZBae3dtQMwR3KONWgzMkJUx/iFGwICS3+UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760143194; c=relaxed/simple;
	bh=j/TXl2o8B8+DaT2OBmCnsS7rUtMtv+R9QqOJ+TLsbbM=;
	h=To:Subject:From:Message-Id:Date; b=ioh8G8MSYDLbE4ANnT/YbvBVfSgpnQekjDfDfCJqOAgHhzg5akRxDVR5FtEwf10hthZSgcKyUSVmvYZ8BOew8NUKcoZN+l9xBbHHT4MFovWBEJeKpy3XqsZO16q0mG5x4mnf0Oa5zhc4Lmo1lUoAniCduADTt1NkZnp0iCTFOoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1CIaqmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1CIaqmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2994C4CEFE
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760143193;
	bh=j/TXl2o8B8+DaT2OBmCnsS7rUtMtv+R9QqOJ+TLsbbM=;
	h=To:Subject:From:Date:From;
	b=P1CIaqmEkhqoEKo+XKG72RQNjt4vBbo3xSUv0X9/5u102m9atKWXCg6LM4SrItm57
	 nTkjZgdk4xbBDQGUBFM9T/jgCpbN6JFAQx06MbhB42ha0TCWEg3CDg0vxk1gowfDsT
	 LC95rwjRyKqSojiCDnzrDxnqCy/9HxTBlOfiDCJv1X7/ZXaqfpo6fVe/76bEwRWemR
	 vokOQ96ti3JTF+bFm/HVMfwDAHQJ3hFMaA3LJuSrqCXGgqL3t44kCqwb/+5c44WIbQ
	 CHYNQTEBmcPW5jw1pThL+nWd5Vw8dmxwPCdkYGAbGBuhomi/noTX5OHM7joGoz4aw1
	 juYA0YQxxZBfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913EACCD187
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014319358.19326.34617707194909929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0405c749c20bcf83fbacc309cb1854f261e41a004d37d1f0d01db3a587ec132c
Date: Sat, 11 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760143193
