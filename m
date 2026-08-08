Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510C5194A6C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786204234; cv=none; b=bkISEWJeutJ/LmD/V29KvVH2pU+rdlDFqJ3rzmXYGqZ51hia4pCNNI3/N10JnTwHjzUixxvLWEeWlV9kNLl+tEyLTySHQ8btlBB78NfcKUmXgXc7n2bRE6OU9vpChGh8yn1zoiVeufLsgfuqI5TY862di8WR6WXQiU2V1tmtw1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786204234; c=relaxed/simple;
	bh=pJGPEu+a44PAHNsX91Y7JRRgwnbzjfY2y0oUYZ+zJtU=;
	h=To:Subject:From:Message-Id:Date; b=eelrPbliQUQfxdvsxr0ANcghWd1N89USc0U6trsKDl4MuJXV6JOIyO7XsW0tJVHuA5DwUN99g/kzfmrklefhKjvPworA60CjnuI5H5mQlXadllhAhb9IsDfPNMqqi0wHdFJnKw0C2dmoFVyEHsBp4wUIhtgMC1qzwv2cmGJwWr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tmf/fTJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tmf/fTJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD942C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786204233;
	bh=pJGPEu+a44PAHNsX91Y7JRRgwnbzjfY2y0oUYZ+zJtU=;
	h=To:Subject:From:Date:From;
	b=Tmf/fTJ7G2oz8RHSDPbpLH10kZzvOSOEDM9h+JZQGCsyNt9O1c1CacflN0pAZh5u+
	 cnBsDxmoO38uD6uQSF8JtbjAeXzJdUybijNpAbeMUBU7gVcKh5pq/bz9+nS5q+/EJE
	 VBiqVmJv+zakYi/TVyYebSigClQ82kQduQfLNHjj74hMuKKi13OHn9TAdHv7Lbyotw
	 UxGlcN1cxNvsQekwdcJrjq8BFhktTH8yY/MVDrghXKBXfzVFI2Xzx4AfgW2xMhZkzr
	 nleHQ5pvpjwlRT2vS8KnVH0gD6W4ZQPdgdKE/691ytq1YbLOUVKRLVz6i3xiJ0hM50
	 7HiH8+2ub/f3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FE9C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620423368.5190.8367529773733978992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce0ab0bf1c627367f049b3be9308e13d4603bdca9558aab22fbb1820708bf3d
Date: Sat, 08 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786204233
