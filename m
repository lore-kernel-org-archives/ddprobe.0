Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A5FEEBD
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752020394; cv=none; b=r1nS+a1iqI9/L9G6eLBTxJZufIvWsaoJV7871gbfFhkGr5YRmbNibIm56Zbhbinhoik+TwM6kY9SdEKLMQYfyOMemGDLPgZoN4+moNYJEDyROWBzxgtPIVoUstmCEWIPqK/rOh64fpQ+0PqRKYlDJdtFMok2OyOfi+BHM1B/voY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752020394; c=relaxed/simple;
	bh=Eh+IZEstyAiLcf/rBX7dp3zW7JHb3t+7ptRK46d4jyQ=;
	h=To:Subject:From:Message-Id:Date; b=IGtpVd6mDV8wAeqzNUpjNaAqV+7Raebhq6UwID0O8Pi4ZmqtT45073QHJDd8770MklQBBIRNmRAw+X4TmVDLSEDnVv86yX90bzclEFzgL6TNTP7d1wFNAuyzS8hA4jzEN+aMiRYq1DSOyuqXjEpdmNr43ckFw4Fa9a1ze210OSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYWbjXtI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYWbjXtI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC95C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752020393;
	bh=Eh+IZEstyAiLcf/rBX7dp3zW7JHb3t+7ptRK46d4jyQ=;
	h=To:Subject:From:Date:From;
	b=TYWbjXtIoceuP+a2VQWXYyV0St1aJ0ufaBPwgBKs1PSEAkqXKWTIJUzMxHrMQ+XPF
	 XFSgDVSaqZTHR/g1MkFSx94ValEhQzT+VSIf5d/b1eiVo6Cq6CdCsdhW3eIPTE9AEC
	 dh+KRsont+JKKSAVmK3PbgmxovlXgdqAMo+J6DSLzbIksrPWsPMthSw9TWBoJI3cZM
	 2NGKPLeoWjS2FtLA6XVTd7aZLNZOuoEkHgBmx4AY4ImIF6R+xsXRGjerR0kv0A3T6I
	 hwamh0Z/sEVo7rbYgZzf5QctV9jREycxAqx2WHHp01ECESAICqhsYZMdqeac32vGC7
	 EzPwVQW0FUXLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD08C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202039358.15247.12453160675604745889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5343b7e254686d0297042f65baabe97bfad17d9dd32c4ed33f35b4de78bce25d
Date: Wed, 09 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752020393
