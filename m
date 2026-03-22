Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244423090C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774157094; cv=none; b=f/LfQOIVK9bFpDff+SSDqD14es/WrfVKRx8b9C/k30aXOzumxGxZA1ERQ64s5NnjEcnjE7MAOKew8VNhivrjeD5FT2UG/pdSFV/iKEuKndmeeuCoSssLahC9ULL6a93YmZ1vMxxP9tjaismX6ZqqykQ5zDGi+i3XZfOFWpKWUrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774157094; c=relaxed/simple;
	bh=ElqMGRFrDFkRdMtX08gHqW50AWhnSIrj4lihPPiDM4U=;
	h=To:Subject:From:Message-Id:Date; b=eP/m94yVI5ynI/dEAaTGhE1a6K8nCHZ9p681G97vikTjhM0mgxm9XS6J3o7uDl6k0amOMfhMipfkUEGGjP8GO8H9Il7jLniKS0hcgX0i6Zt/kDGlbjdKPY5T8cqU8itxCHuN7IXY8hJYn/1Y8fM5PoLXuSWmH5wgFsxSRMkL1HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQK4F8/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQK4F8/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67C8C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774157093;
	bh=ElqMGRFrDFkRdMtX08gHqW50AWhnSIrj4lihPPiDM4U=;
	h=To:Subject:From:Date:From;
	b=iQK4F8/ewMUdkEgpWd/aZ3St7Q9XvnphtVa7ErAkzmdjZ0/+eqp1Vg/3+F5Wr4bYw
	 WKb32BRNNHMCZZXxSY+Lct3VlerVGMAqj+LAV7p4ahRvx4goy/hkFDpeyJMcVVc4en
	 s0sdWBra2w9S175FXYIq6WJ6iq3fw9gh1+bBfQnCNkifB7+U3oz7aNU1qCmIIPhWB/
	 RC0cQ6sbQgjA4L9p8rMIb0tvBBDIUwLA3B3r4Z6WX/zfvqq5GC4OObey+CMNp3MU9b
	 RiL02oKq87Nc2VH0rFuuZZ9jkIR738rYtMebmYRNkuEcOJ+QAmnm10EQcjFKYo7ps3
	 lbZ7YgvALsHUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AAAFC72AC
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415709357.18777.5030989344011956317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ff19ad274371759ea835de4b65930c72aeb8fa16c74fa7cd8b0efa456f1c78
Date: Sun, 22 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774157093
