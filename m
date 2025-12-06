Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33151178372
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765055574; cv=none; b=NM4HHJZ4i2ED6zaXQG6wius0gHNYfdpodIH69aK6z3fFCFv1Uy1Ms2FUb0ADMF3Op3cd/Eo/umR11tYpix0iuUphuz9FM9wv0xs7v9O+9rgBzgiL+RwjRWj0EMhNZ0M14Ui10jr9rxt6Dh94PfbXesyGk1rX29SaeoVDDZPoS3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765055574; c=relaxed/simple;
	bh=TbmrSonlMttCa+LHTHv4iMaJgoRHpURVmUTGT33nSus=;
	h=To:Subject:From:Message-Id:Date; b=htPHDioepEK3IMXthLbkjLCmsXgAtgCM/utRZ2DVZbwJr7ABNc1af3RU5qneHAKHj19L01PTNqXkDGguf8VieUuFp7bcMOnVO3Zp0xIuP3ebpQ89h0wLhZ5MTNvWUIxHSZ/7vODPiAx62yylc+nE06Gqrp12WaNWwK1RN0J7Jos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8bejpBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8bejpBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE86EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765055573;
	bh=TbmrSonlMttCa+LHTHv4iMaJgoRHpURVmUTGT33nSus=;
	h=To:Subject:From:Date:From;
	b=t8bejpBGZAky3YZI0zDTQvaE0KxHE7dIB/UhwLnHAGIg+YB36AbZpCFHyNzTAk06S
	 hM6o+Mi300AvR5AZkHhkYzyVloLNv30R3Icr1TooK4ROglRMrFSNCF+aVjV8F75EMY
	 vIjF56O3aiI2DHDwsMEmqQnMyp8wCzZJqMAzxgiZYDWE6ufq5tJsRRNRJvAcJtwHjm
	 s//KXM1HYSsajX7+bLL62KyCLIXaLQvU4+mmOoPfvzWUXL1U7ATdDcxLrRkCXu6v8m
	 w6yf4mBnFFxTjfF41sqWzbHJKbD98AqrB0bPN9a+U2wP1076cx3lLnvp/mAw36tx8D
	 SkMhBjQm8n9Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B14D3B7E1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505557358.31199.15586705509880489559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a772c59b266bf0f2ecb7ec361412302bdbd9ec3779fa9521735d2924cf92a27
Date: Sat, 06 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765055573
