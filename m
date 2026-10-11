Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC793955D8
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791709834; cv=none; b=MptLZLB8DJkNxW4wKNVudrNCVijhFyHBFYaB/243BjwgMqs7MS4M7UE7d7w6DPNXDfAXjL9loQ+/29ZoGgBw5IJ2IxW23DbwbQg3FaM/PovwBmUTkW8zzIfhdEYuKtPwXGy/K8it2ADMy30VxHdrdiSxS+bpRTHl1JKThBszrYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791709834; c=relaxed/simple;
	bh=OZ6/Q6qxANdEnrAVyA3SGUDN/CCicS6TchOP9LrxDYg=;
	h=To:Subject:From:Message-Id:Date; b=KYTKm1X2EMu5QXouBEMebDsBgwBOS75PCbrqM7nPIx3Zw+kWf06n3/ZrxfCPkdjl1AEQ3XOvw6s0HuxpI3LPsOwZ5ruLy30f8sW6zapau9EZl96S4/zj5guWbWER6sN3UHivp1wDz+xs4Pjw3yIhkZw+kqMzCBZWd3zydbqCOrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udvAbhsn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udvAbhsn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A00C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791709833;
	bh=OZ6/Q6qxANdEnrAVyA3SGUDN/CCicS6TchOP9LrxDYg=;
	h=To:Subject:From:Date:From;
	b=udvAbhsnDWudvuOMM3yYKjfiKedwYwrEDNNxFK/I4swLqYMmDSKonD/ijmvnGGjBd
	 LxT+fr1MWPf9mSJCq4si0MeWVNoqeYs+9C432f1q6nTLGUCJ6XRqWz4rrO+tkS6dMP
	 v1ATR5jUNY4rY6vkkLifnTIzq1n0z3FZpHCf/ubm2RxiBWDGCimCoqHFFcANJlAODf
	 qvXYZszYdEb1lfOwTHPO1YCk3xCuxKlO7oPMSIY+zuQDP8z1jC7/C6YvaOpjjAp4Wl
	 ZUxk76mwrFFGZeThmVvCRqhCB+ELyiRTseePDboPBvPWkg+DArIXUVT7kkuYa77+Ms
	 pVi0dtTJIvZVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B027DCA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170983368.13406.2859992172582058672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113cfdfe80a421627c7a8764eeb17267988f8fece7a6c1ec834ab464755dc810
Date: Sun, 11 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791709833
