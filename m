Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E70233290E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768634634; cv=none; b=qPpDg7zfW7ZS6o/aIvH0hy54lA71fXlaUfwrsOG4sqRTAAf7mBUHXiN9Grt+2+HJ6t5Kbug/rxNlesZo/CLA/7JMPhg9B2dUXSH952BNXuQXvxDMOlPDRG2ZtBjdXOQbsX+s2VFMljt6wSZfOSDVULswxxTDkjToZpvdNyc5YT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768634634; c=relaxed/simple;
	bh=C5Abxb+4Rp1fRlppX70YeeZdlNk/0gcGa7zmjw8VppE=;
	h=To:Subject:From:Message-Id:Date; b=QNMkqVJWXJwTSXEWkCYReywPSaNdm4WrJKbYDas9TVBlCNCugFW8HQVRZfVIY9ABB6mW/I7NfHZ3Y/oQjrUM47vH1KW1ef9gpKO4nwt+hIlniC789yAUp08xBBAtVYsk7ycH/+M/wtrAY82/7SMZFhq89xRoDia2nGFwR6ORN24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiDUxjN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiDUxjN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18C0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768634633;
	bh=C5Abxb+4Rp1fRlppX70YeeZdlNk/0gcGa7zmjw8VppE=;
	h=To:Subject:From:Date:From;
	b=CiDUxjN4xVyQziSvq3Qbw1l6oP779rvEWxwJmgcTRg1uwDBQb2e3F3OurQlGEyV+u
	 f265vnhfnEEd3xRDXJQafu2vzfDS7MG66nfzbRpVs506e7YfBvhTfzk0y3E7RdpWT3
	 I8C2uKK/WjZUxcUyRrsO9+Z5rwC5EpclaVk542U/RW4YVdLaPzE36Rj/MGUfiCiWZG
	 SUfG1Gnoa1PYmZrd4sww3Fft22og6aaQk/cpWCB1mL79wvPPQh1SU/F7QLRoaPQBjV
	 qjH6/MwV1g0Gb3sqenK82kDL+6wZEKS1XI31s/1PS5hUm74aE6rGlMChSdZlmGGgbe
	 DiAVaWUvCa8OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA0C98313
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863463358.1075.2076544964856902395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff68f4f2c9f05438a0357e8d9ab39a5a1ff2a0b79b59b6050a615e754bd31c2a
Date: Sat, 17 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768634633
