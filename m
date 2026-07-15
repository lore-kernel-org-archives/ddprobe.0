Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057DC4657F8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784117315; cv=none; b=cjA+X1SNUPcIiR4gFtKrR/ApSkwUgWNeRxkNsNFmiFQiVftz2Kdj8eHGajX9rEmLVSjaYefiwckQoZLakDorTNY7kpuazI2Nx395G4ZfDE8+JoS+IKF0NyC2BCsn2CaaWepCUUtGzgsT/TjmY3EhhBl9oxQpX4O6SUXqZi2xWjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784117315; c=relaxed/simple;
	bh=h3KfLkJcpWUCUi7jRAA6ATxmS498x9wtxZgUuKoH1dc=;
	h=To:Subject:From:Message-Id:Date; b=T38JTdvLdC5CAWuKtfJnkxySNNFjrh5Y0IyiwQ96N3jzARKu3kfs7QsFkaT9BEqDDx1KTcofyn3ETHKGK0+1/lbddnTuKoI1TRtSriQ9IdOpVjzfW/xX/SshantgsO+Qov65IL0jCP4su7IWeVVNjrXvtD7H31u8g+WHIFw+A7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSXrEBpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSXrEBpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A09C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784117313;
	bh=h3KfLkJcpWUCUi7jRAA6ATxmS498x9wtxZgUuKoH1dc=;
	h=To:Subject:From:Date:From;
	b=tSXrEBpYnw5Uiy749bGwaiQtKuJ88jTLxirj7gtBFasdzqTers+z938NUEC2SXLc+
	 l6imeK6sZU3dQwxEAg745rVv638vfwRggMmdr0BBoyhCRMeJD6kjtl7OTPl4VinJ3j
	 R8u8GQETkDJyCo3eXbZxjF/f/XtDMBgXvpxqZ8MKhM1oMz/dLStrxAs9w12boZVs3Z
	 azUm7XSTHz7CAtMZl1VNVZ2e0yJsBFOhw3iL5ObueVziyiakvprqstHEzS3vlaFpEt
	 aY0OtS1xvw9TKReo/QzWIsqjHX0BN84xFvcLjjTZTw6RERo/deJvFRRLpdhuw2OqwX
	 GRU5X+iprPlxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00EDC44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411731371.19482.6737523332113968857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5bf4a4bca4c2250c819518a4e7104c0eae2692611d86deff442abc40a7fead
Date: Wed, 15 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784117313
