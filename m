Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493D8126C10
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734167754; cv=none; b=pIo2e7mTvRJKw0dQeYV8BhUHhYYD42lyYtNAEmFcBQbNpQ1aacXRZ9P5WY8I3KTDRKSbXymqrkG7TNqQcub4Ozjux4FmNP23pymXwCaomF1Ecm5GpgX6G62ZCGdsZBrSmYYtL2lbgm5vGVKuYwIaHTnK+7JeMtUqsNAu2QNXFuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734167754; c=relaxed/simple;
	bh=2ik1m+ZaQP47zEASyKyuzQUDPVc+4suqrIJPeQd8eUw=;
	h=To:Subject:From:Message-Id:Date; b=TG/N4d85ik8alwvqPiXcFgIPU3ZCppThFOpzKSpqnr6B6DZZXFI10ybDjtU/c/dCT4gjSRlMmzSg4zCNr9yisUBgsCnCVfygzk+/qKedl3fGca5MRmobbTkzOmvtVbyjEfx6strI5SJV5732S7Ana/BgelczUjj3h+mLczeE2sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFQ4/q+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFQ4/q+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABCBC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734167753;
	bh=2ik1m+ZaQP47zEASyKyuzQUDPVc+4suqrIJPeQd8eUw=;
	h=To:Subject:From:Date:From;
	b=tFQ4/q+KAPNRXQhcW1X5mIsvstGlVokr1Thg49lvGcQRLN/xB5dqp7QfFWdoT/bKa
	 CvqZXoAUAhPk4Qhc7j+4fKNksbiXdYc2iYMutJAVyJiIW1sAe/1namrabNRYuNjfeL
	 2rqrzkA6h/95tJ7Lm9VbrA8BCOBu4i5rp4O/E6sw6ddWYFOgz12/VdnKrydQ2+/e91
	 Y31qgV0F600+gpspFODDBlwsKfJYq0Kg4ss1EmYuw/PXMy4LHyw0w/jodXIHnrmzam
	 dmtAS4hMXwcirusbz2p11YltVIQCHTqoXX+ieH70K3h5y+Z5/MrNbnok1pZa3c6Agq
	 mfGo8rPBJTptA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C3E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173416775359.17654.17835108421350789448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8652b72012b62f2c2d0b59c2e5a2b1dbd1603db724086ba59c198838315cdb
Date: Sat, 14 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734167753
