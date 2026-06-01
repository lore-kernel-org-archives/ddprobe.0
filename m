Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0FB1A23A6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780278274; cv=none; b=tANc97V0IWda0o5m0ycIYW1+IV2hyzmbnjl2EXDr6AhQ/6qs+pvfrJ68zn4mZWcB4eupc1zK8817VxU1m/vTU9tXgoY1zoZD7taCowyd4fAl8KFMq4QhLzidyz2XZKa+wmiPKAzleuumiT1lg+ire3cv4/OAtjVY79v0hx1hzfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780278274; c=relaxed/simple;
	bh=12MV5ehuhHmLy/T0j4dVRMOc4NDMvlyqXWAqWVYSTh0=;
	h=To:Subject:From:Message-Id:Date; b=fsS0/1MbJxSPIud3zyyTqopfCpmTdWEtY1+BdrMQQsoRtVddVb1BG2KEEFPeVpQL7qB270zCwgrBGGixAyYUqOsvM6UdLWCusn7zFkLf2MRyS8Z2vXHJAa1DK4wkGuaStk/kV9xEEP9zROh3xQ0g21dwO0OckFE8qBKOKUSbz3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZCSouCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZCSouCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E1BC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780278273;
	bh=12MV5ehuhHmLy/T0j4dVRMOc4NDMvlyqXWAqWVYSTh0=;
	h=To:Subject:From:Date:From;
	b=VZCSouCXqOL/I2i/SNQct5YPhmkPYLixH1yGTBZCgVU92u/ViQYs+CJfNEcuXcNX3
	 FcGDM4CpSitqu2r33nM6gdJ756ofAESKzyTKkCZjQRkZ6hgc0gNEGanoZNoaL0tSIl
	 zuJeqJc6mMa2UtfW06ZaVD7CBspmw7AMRf9d+j73Xnzy4ffRxDwK7G3Eolgd5HnFY7
	 IRf3lPaabBSRKyMHp3A/9OpskS5ow6BDmIoEvd1YThWKatZX9suoJAbKRVLDp/ZlNI
	 almCZcEDro5DYqD+xevPXbKJ5DP7Nrk2wZOxdaMZNsDsCaSknHsLRUimteWVDi0XsO
	 W/2aK8VYIlmeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDFFCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027827371.20956.3128780261989913251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f27accce9adcc09ebe5783368c875da341c5739def7a100e32b05be65734860
Date: Mon, 01 Jun 2026 01:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780278273
