Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3705C7F9
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734880554; cv=none; b=JgDUlT2a9C16+S3SynY8zDkNFxRnqkBMl79lYbXlBc1bs40eysan4Ckjaj7ChsMYHcJBjBCP9xyPWQoMmLs6N4/TkLVqV7m23nTd/ZIGi/VEvC7gBAgz/3fsZgaI1uh1ynCLOBDcjupD2WFqoAjDkYUygl9WX2Bb7nz0YjwxZQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734880554; c=relaxed/simple;
	bh=q73YImn0EXMlGMFV79lRQsu80/C31d1xmeZS3qpnXu0=;
	h=To:Subject:From:Message-Id:Date; b=r7Kkn9+mMs0YKdK4h0PusyhPoZp/OMmNr1hi4IIyWIH6ApI6TZROoLUxtF57v4Jr/yGRdxPWD8EhHdL3bG9jpNB4xANvmSc6/DV2magMGJBZYrxlGSVMPj2pWmen//5VXhigxnSVBe29O1li2wnOaQhuQFncU0wmRJ8qM6LbyTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3VPP7af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3VPP7af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1EAC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734880553;
	bh=q73YImn0EXMlGMFV79lRQsu80/C31d1xmeZS3qpnXu0=;
	h=To:Subject:From:Date:From;
	b=Y3VPP7afDm7LWYTJOyAulh3ShPUJPpIoo1RLgzUXkT6vqBeIBl0/31nDw1aK2p5Wn
	 D5C7RdRCsCboOJFqebb20vod3TutS76ajXKmlMHfyK8v/6tcx3sZvbh7FnR2qxwR1K
	 FagI0x+gtiETrBaMNu6klQyU1qBbKtrGdmdbVNRIHgd+uNI40Ug2+lrQ7QN/FQULAL
	 mGAr6TlJCBwCPX15hJGVN45YoMzEzAeaHos7FFiH4ni71/vatR7rdfC6ZW4t4j6w94
	 9i6swjJIVka/mUt4/iAMLaCzrdbapIKeLhCYnGjBwJ3YSNCMTLSjvsRj1cm5RPTQZK
	 tmHOnCwbocglw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9540CE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173488055358.8547.2374069093258374623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9542d3a2b9a1a0f65ebc01f1ebb391c77c930a2b24803b523628bd21f27198f9
Date: Sun, 22 Dec 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734880553
