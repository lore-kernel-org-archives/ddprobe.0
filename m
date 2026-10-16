Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FD43890F8
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792147234; cv=none; b=r7Th0KD0baxQl41n7OJec5VktiaBw5UHFM/fRvy20IKhRFe9M2Bv6OGK71gJ5W6q7/ej3PaKYsYHrtdbBCduaUtBlVlZtWDiuZ85V2Ktl8cIKXkb4VO7cXBNjs4Zy42QV53/1CNLeCpqO1M0WVrsg8iI6mLUaQ+l7g9/EoFJTdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792147234; c=relaxed/simple;
	bh=+m6NhFL3vOeBc1ee6oOAf7Tf9scB0e6IzVDkOOByZOc=;
	h=To:Subject:From:Message-Id:Date; b=AxhUMGTAOkL0TFVLmffYv5uAaogJGCG0FXpCty1ZdtT+hOA7JXezUosbCDyFSJR/wtImyK6WcNd/kQw2vHONREQ/IuwjUFYFIBuQtW098GKu8zEzOxnKMkMa1/3JRYge4Z0HuC6U4eaahq6iOTa4PBCYULoQQmqpFnnSoZtK4F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrXYEIlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrXYEIlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB346C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792147233;
	bh=+m6NhFL3vOeBc1ee6oOAf7Tf9scB0e6IzVDkOOByZOc=;
	h=To:Subject:From:Date:From;
	b=QrXYEIlKDlnZ3/qBycjLhhCbSMxv3lEXpVYj11favRYwSUw6jlquyUntA0I8uFTSa
	 V20tuxQVWI818gw6LqUKsm5ZypKqBh/cLoAD/RTsXttmuvbBtkhjKz2+QRG2jUgfQb
	 Gcz6KJ23XMadvhNvX3n5a5TMf0cx+JQ4ciKcw065NOHFAvqhIHqVHMy6GS2T4kGdQS
	 W5nASM6aV/lZFmblRtZXT4PQYu5m/vUBIwa7t1O8hrQuWbplzys+IQs2PdRPBVx/T1
	 ZEFIvTE2a9XC6l911kp7dWu/3KmR203BSUr2mtrctAW486UVsemyqvdQ3A7kS8VLP9
	 8+BBuKJOjJ8nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2F7CCA464
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214723376.29627.13827726112362702688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49de658a996d057938decbd6823c29ee472552b12cd6663a871aa2c29289f2e2
Date: Fri, 16 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792147233
