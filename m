Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7DA2F5E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735962954; cv=none; b=mN12EWxZjK+Y/YwkNsuRg5rY7nK77/+QLxxMSyPhuP2Jt7JZ3834eFibOZOUvHJl0YM0G2FIlLo2WmGJX9O1BfZ/OzPM8p849AxE0zzNeAWd3tb5MCNDgnhP6lD1HwekVFOWnWTsADIJpjRUiVinR7KJfzkvbueKYBKpm/C9hjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735962954; c=relaxed/simple;
	bh=bJ72eSsc99vUHaU4IQkvxW9LyLhbLjBHbeup+eL5qVQ=;
	h=To:Subject:From:Message-Id:Date; b=hSoxOD5GHYzhx1NwCl/zfpbAh5aQBPYvvcCP7KlRj2TDGlmotwvSnC0CnG2LQsFwMZEMHiYwf8hHPjR50rjJxCoUNhQSwvlaTYz1ad5G61ghlrVcfq4ey8KUQ4s2qL1B2ROtt09o0enk6d+vMtZL2YHajS0096iVXaM0/SkyK1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3RGOsus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3RGOsus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61FBC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735962953;
	bh=bJ72eSsc99vUHaU4IQkvxW9LyLhbLjBHbeup+eL5qVQ=;
	h=To:Subject:From:Date:From;
	b=X3RGOsusIZirOGgkU7chuAT5ppPf0ZFYfb17Kq0EvH2L3iWmJS1h+KSpB64z9yHnX
	 ENZ/LOS0ymrG9TXMCYO1ZOblFqBOouqXShTzSP5i9NENZW6a2IKGiMGI2N4LREX4oy
	 ffygdWIrMaPZY25WX7OqOtdryH1Tvf1oOUAYlZv4lds79wgu1JWk+s/N5ndlkBiT1O
	 FznFwddeK82Ejs0T9sZxgDjhEpFq93LvCcnwbZJ1S9biLXYw3QQ3bZZCI0gBkT1ezF
	 m7ha5EpRIWLifLHopM9AZnqyI2s9qBsVxwL57Ib5XDPPDxDATSadbBZHGAuX4++05b
	 iH+3SErs6s0sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A96E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596295358.25552.17192037056390780969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8aa8af15810cad1fd0a3648773cea8ab4369b45c3795ad8e99b0827d45d822
Date: Sat, 04 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735962953
