Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C85019994F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757792394; cv=none; b=MF8d2trrQoJ1RAceOtPVyLrd9qLxc3eDMaWs+e05nOF07hg6SUKO6iVcYM3AGBSg4lQCWMSfn/XfWBEgxiD+CJfFg7qwFVfPxIKhA9sWqA/iX+sviaYIljj5uZyCsP7eRqzHLNNWmzLyVRXtIMAqyb0EG3t60GegXhCUr9oJqPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757792394; c=relaxed/simple;
	bh=T+rBpa4QTQkx4ZEDnvEgNv38Zjz64zl8Swn18BPuwJA=;
	h=To:Subject:From:Message-Id:Date; b=MbUP6UK6zoXFY8SoxDbmwVs5KxeoQp7zpOLxI57i5qP1ULabXrrttHr4SBlwHkC2kRg+QRQfnrSWAabVBJQju0dtpvpYnyI6YOOntixHWaxrW1QdaFAlmc9uQuCpHAow0Cmg2IktRDOiiQqcUHo7WnuudoCND3Mj8cADtKoPqC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJqAwaau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJqAwaau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3900C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757792393;
	bh=T+rBpa4QTQkx4ZEDnvEgNv38Zjz64zl8Swn18BPuwJA=;
	h=To:Subject:From:Date:From;
	b=sJqAwaaumZGHXZCONntJ2LgJzaalLFYAUmjmKdoBZpr9k4Gf5TQti+zZwZ/YmP5nF
	 AanszjcC+/2gkuroI+4rf2efI/5wxIEsefyfZX4WazePlnqxk/yrVL2bBInEoSWxKJ
	 6V+XchBzhlyfqz2ZHi5zoZk6qUfB96UeD9XROodJjwxtcm1UQwsIBZuRgpYCGr7AeJ
	 dR2azy22NKKqFRXvil9/oIcZ3EWm220qh4TUYfCCVljb7M/J1TB26B4vh9pD4IZLH5
	 zPtT2VkLoDxXsVtKhFVRasypKFMRsgNXwDeJIYUes7YWrmviONGkT3+TcvFPhr9pnq
	 NXzs7vusjXU6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0212CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779239358.4033.16074587511975490526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b86a078b2a0a0b1d0bc75a0ace2207fe802d4d1b24d94ec2cee065f0d20ab1
Date: Sat, 13 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757792393
