Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCFE2AD11
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753234794; cv=none; b=iGA7PX4rGp8AG0DedcoUaPhangRjMLswEPAn9t/9qcQ78fKdkkvDghxrukbIGiTZTMEycs633lSAXaoVWUct/DFvG5GMXc9Zz3d58AwfjeVxQ09g3QE48DDXPxIa9HmmtmexO5hUWE0/5kQqyFn4BaVR6a8kKlkSzvZAWmG/DIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753234794; c=relaxed/simple;
	bh=cvyyQvY03pVadRx6mAXBASfEHyHEVTnufK4FT+Zd2PM=;
	h=To:Subject:From:Message-Id:Date; b=HJdSWN5xnLwV1mTmbLTDCQ0NUksq3RccO/XO7oZYzUxTk6vnG9Z7iP3O2VCilzUkU06oZvCAPCK5OnKG8/gkmEbP2RrJVGk+cF7FvynjW13PDRvUSc1tIozwgGkrHmPQbN3FnCoQRUMTBXQoD2WlSkhs2oUVxBGJJ2GB12uuTLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+qUZxCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+qUZxCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A450CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753234793;
	bh=cvyyQvY03pVadRx6mAXBASfEHyHEVTnufK4FT+Zd2PM=;
	h=To:Subject:From:Date:From;
	b=r+qUZxCZ2zJ5jvvk3lXtacopZxr/E7iqydhpEYUQH/xuPXUQiNzqDKEik0VncSOMk
	 0EScvoU4oR3NUFe0bCvL6NIA/GEv84jXl+qEuFgxMZA9+FCgsTbjwKnAs7hACwcgxj
	 9ZYn83GbR0COUMCcQN2xc61WvalVLdKUXv9oQI6OsQrUXamLGVe7taMlDF6BQWAyHZ
	 h5xHGLjMMNGiDYkPDN+gMb+BdIZ23CkVuFtZVDQ21NJzprWw5hBsYLLt5avZmMLaMr
	 PGVPYUnooJsNqq2Whiu6o+LVTCfQTx1yuB12BUMb8oXPdAgc/VlcjXiOgnIobfbwnV
	 EfdhU3INFDhOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921DAC83F27
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323479358.3113.1699426261658204364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a43c79b84fd6a036be252c0e7f242f47383f4f38db9b5c756f0fb93f7ebfb87
Date: Wed, 23 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753234793
