Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794633EC2EA
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784976035; cv=none; b=qX4MCTqDpp8MAWwsf7IjmciCmbFJlfIvP3aTFRW9lDw+bKlpNbfu3p6pFTqjfrzn52/hl5ynKJUguXd1SF7igu3m+knHcnSsosfKY3QRYF7c7LL80+ddBw2yASrvEHGLs49REtA59leG7xL5iNBI/sYcUGMv5WVesCfoy5BssSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784976035; c=relaxed/simple;
	bh=s2+HqslpJSp2WiPKAs4NbyB7K/KvBz7jhxBMylDeq5Q=;
	h=To:Subject:From:Message-Id:Date; b=Rtk1L7qT1Xj1YDvS3D6Xoklo8zk9/p6p/6c8L7RjJSton8W14lq8MEIfgKMHWH9y3+zh4Oi3XIRQ6YIx6k8yoP/OVQohMXR4RAAa0/yBMNasL4tFo3CjKTatkNqRhKYqkRixybftxOqvtsKmTjBzh7XanaDHdDOjdpogSk0Xcvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrAkAPY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrAkAPY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC83BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784976033;
	bh=s2+HqslpJSp2WiPKAs4NbyB7K/KvBz7jhxBMylDeq5Q=;
	h=To:Subject:From:Date:From;
	b=mrAkAPY1ojQMclTuXsPAEsJSuY24tuB/KzmW8F/KVQW5uJuJLnpqYQjdkIBZfuXiM
	 RWGay/P7VUWCb+NkU3kp0IxEsWEGjFvngeB7DB+2857QHq6PfkUceY67B9bsn/rp5L
	 geox3W4N8l3ngYa4/2Xvf3V5CJ22ooOI7MfWS9btgiLS0LW54QmWxUIScQgn1Cb2oV
	 nzC8LkeCWT3wuBjnVXG8x8FDjEcApF65PgGwP6OihgocLQPl9NFCi4pbxLk6LrHCH2
	 Lo0EOSA7eLe7jTgLc+ycNBH2DQE1AItvSHZ7X2Cbehk3BOEJO6mLaw4TrTrr0jDhZ8
	 cNFjFMXi5L+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B838BC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497603373.27935.11567027349449237840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5caa1c9e4c5f0de0376bac870c4935c91d467c9689a4a18a43a44adb1dc3bb46
Date: Sat, 25 Jul 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784976033
