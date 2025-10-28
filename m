Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103AD1E766E
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761614394; cv=none; b=qZovfkQqoREoveKK6yBaBs5h+GU8BWfv8WcFOf9QE5P66M+DoXDWysAC4jz5MMyd4e6Zjb9MPkeBKMisdbOuMVBRSAebZSYuVdHbtP91pzFAdh5OYXF6WEHanQ9Yuq0dg9d2vuuASaZshANlxOQG86/e4FephtWREVpHG3Z7hw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761614394; c=relaxed/simple;
	bh=XKpM5Ci2C3ZlHQa3KM5Cu7lHEa/HFSWMXtlZKPhUEvk=;
	h=To:Subject:From:Message-Id:Date; b=dA/tSvNIEzDe6FNN2n/xi3DYWv7EhNvPmSoUonwQsNgN25h5HpCNLj38eoBL3C/X2OP1G/TwIsvtuyoQLeTePiHH8Lf6+vNcGMeOR/K5TpgXT3TwgUYUKBHaqMAUuSWOyMajCTjHUfHj+FMuQe0AKuG5bXMeg3vQ7zDDc2nW2Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtxkHW8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtxkHW8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1183C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761614393;
	bh=XKpM5Ci2C3ZlHQa3KM5Cu7lHEa/HFSWMXtlZKPhUEvk=;
	h=To:Subject:From:Date:From;
	b=EtxkHW8RZcD50v+wINkSYp/EUYR8l4iVLREEQy0AEJ42u+AZcM7HFyvi8X+N0PMjM
	 1cNROF3Tl7Of6PtXY5zFI7rzuqGpoNfY03aWJ8un3rfJtnvfmMx2I+iiwGnVAhPDik
	 ++huYDZMVsoe0TvmrPyOr6ooJpFETCsJ9tncM5ZnmSm0eo43vWdBHtn7VriMz77m4U
	 hY/e3IEipffXpz+noD5M5/t5LM14FNqLnPijX/4YsqFzK6cCFZZH2HAvQHkyaw64wd
	 Fw56h2HPptHbKV1yn9bOOj5dWjsZFpFfZvFl6fn1fTIKX2ZGRAV4xz9KcOH6BA14LA
	 43pSkNcRSBw4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FACCF9E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161439358.11585.12452877021967107974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab90aafd2b1ea71aa6c361f33d6da6fc9e8246fe485a65accf46af085e27a7e
Date: Tue, 28 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761614393
