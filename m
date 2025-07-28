Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B3E136E
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753666794; cv=none; b=KIHmKiCdPKuNVPQIBh+Puv1PhO0yLtWYYJiiLWYIdXhaEHnRI8fAoDVSgb5dxRsP8wk5FqphBVFzaTzSSyKBxwIXtQx5QKVa15ezdu468MiL0U7vNH6VNR1wa7yedxCkbfE3FBiKDf/kLeqVQKub7bbOU3dg2x1RfDlKvQ4FlTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753666794; c=relaxed/simple;
	bh=WbMSflAmAZDnqK1Ap4ITYIBLg6oCPuceXodIiVkIjMg=;
	h=To:Subject:From:Message-Id:Date; b=Hn7mg3HmqMJbT76lKyDX2gT1zGeK+8yi8YBNX96vr5a39OIkqrYPfG+aXJgN3tPVF4AWHdm5Z4r+ug1XFa4AP6jS0dQwRF85oy2M5ZF3oxnnm8NUq+c33QMtSAxXIG5H1PujkpoGdUe+rWOYmUtSsJ6HCG5b0WGTTyN6po4PIuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ii1WHoZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ii1WHoZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A730BC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753666793;
	bh=WbMSflAmAZDnqK1Ap4ITYIBLg6oCPuceXodIiVkIjMg=;
	h=To:Subject:From:Date:From;
	b=Ii1WHoZ6VZ0bwlW0BIpfjgEXH9ZRmc1iBpz+XjSg8vS6LH9BQR5hMLYr1VRywsW07
	 6NcSNhQ5Cm/WiYsv7APklBUM5MGhOfnUIGxxoYtAbJqVe1kx9Zg2Ey4XVnpZchyxpO
	 zrFzrpEJHA70UrnBFgf31KvWaJ/0HIUaTpoVoqjKsfS0B3CXM43yRWaE0FgE3W62nq
	 pJjPh0luuTBnMZKspmN2TRoDS7l/PxkVn6cWhEzD3Bpxs5Sp64dPdSc4UtKwqX4gux
	 dMl4LIFs8KOxfPUsv2KUUhUOGOmynKXhKX9FVal9NcrBHAvgX23jFNleEzo+Hvl1DC
	 92PH6nsRpYWJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D61C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366679357.27185.5919481481361713661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d91bf3f4aa786592ded53f2343158bc73f38cde2aa7c1a301dbe39612a8991c
Date: Mon, 28 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753666793
