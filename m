Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED86F2EC097
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770410634; cv=none; b=sv/Ix9vjsLrAUKqY2L1it+1r1gccRMRQmleAatceS2gZ2JjNlMYPWRCqLJZqcq2PmJOAXLsVOG6v/DV2A41aFc1/Ov3mHYx+MIa7Q++ZmxT1VBmsY1bmvP5yo67u9lB4+QJinSRcp8nYbenDverAMnNv8YKl7LM1ZVvRWhcFbOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770410634; c=relaxed/simple;
	bh=+SwIB7WnHA1UpmHxHUlzMZrx0E232kvdc+R2hVZNEyY=;
	h=To:Subject:From:Message-Id:Date; b=BUOg+bK4nEQgI27ycyEmClZcU+VysJwRVkT3vbqPhmURVTcUmc4Fnf7rA/Qsf+imhVohWtXBkQcUV6fIf10csNwgYNn5YiET4KlEn2mJC6GWlT5kWDqKVXwb2V25p9J0I1yFXHFnVg/hk/Ma830NbzbEqsxTHW/hI08Nj/p4FhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Blaqmn/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Blaqmn/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F72C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770410633;
	bh=+SwIB7WnHA1UpmHxHUlzMZrx0E232kvdc+R2hVZNEyY=;
	h=To:Subject:From:Date:From;
	b=Blaqmn/8BW97MUShmc7H613vg+RYkT0X9Yey95v/Xq8NGjmqDuSxhpqL8pCWNDygw
	 /UphRaX4bALPHrUuzKWfsw2qoX4hIfU6YkgcQMGpS/hv8Lr7cQ7vfLArmN1vezpn3k
	 0I2xU8w8EpcZF49TsAawRmYtCmIWHWPhD02yjaMvry9U+q/Tkl5UesddYMWmx2t4WV
	 o0oVhrUBeKRmSdrBnqbpbKPd22xFiSvYZNhbf2tZ91oObMeOVef1307Jl1bfBFbFeV
	 Bfw+kyQV8hzwBtPupP7MpOZK+jMvBDtCw+ApapfuKWpqodi7FwTiXZoblDW2yCtbbe
	 UU+iB99nT8l1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FC3EE6B59
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041063361.14562.8961898143832095010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bb68d58ea6b33d3f1cf84d004831465af9ec3b45493f8265bfbaaaaab5cce0
Date: Fri, 06 Feb 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770410633
