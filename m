Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7323FF1AD
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782735514; cv=none; b=Ei8P24OG8foR2tVRXZk/SyYXMdeGUfuW01B+btcQIkFH5+CCiuxRgOWF9+qxiRIXMvw5I21KjaniHd3PJbsuBbzz2RekR6EGbHaNqEa+lVFKibD9pB2D/RX2p/50xOw3JWbK8LXQ1dqwxUwU/XGNNOg4IH5oKblD9mYP3VGOpXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782735514; c=relaxed/simple;
	bh=01hMlpUaLBpeYPFAMZZSaXBLWrjn8pTeGbuhlNuvgU4=;
	h=To:Subject:From:Message-Id:Date; b=loYzrbA/vE35Ajhe/9R3DWP28UAXWCP03ZrMD/QVeVuIw4qTqq049aCf+A53toy/09vSi/MK4MeIt4Zy3DZxTGggKaz1rw6PRPeUZFk+B+n5+NeVgbR3xKFRTDaP/olIsXkS/PWOBHoCEQ99QoiJDQehcAuQd4wpq6bU5kmbIZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5aIMDN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5aIMDN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22EFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782735513;
	bh=01hMlpUaLBpeYPFAMZZSaXBLWrjn8pTeGbuhlNuvgU4=;
	h=To:Subject:From:Date:From;
	b=B5aIMDN/tujnIYXquMpud9pPKUpX4ri43t0lTvDzWLsB+89pQEsyjFA542778AnjK
	 h7lit4IRgZ1/LUn5RWXbBYPKoy1HLE5Q5cJyAXskzQadesBUjCCOqMzklBMs2vTHXD
	 jw/XgI1WT0ufIrscaAZ4V4XpSflbD21cBJgQIP6HNhG9voihNVNAGtWL28Iw/pTWCw
	 MUXJpa/8bGi/aNfn52HiM2f8ExdEesDfviWBs5JloPJPi9OYeAhWDB1yicNbrWR5Bu
	 aCvFsPpJUUqzqsz4SHSGK3dmQmd6eU/wGXKvbwgtYVR0H9zvh5C0lbc2aDmM49nDyY
	 o93HJ6xxMpWxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8C7C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273551368.22318.11404363860124836777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51dc138d2b8089fb6dc9ec97a17309525070888d48d51bb75c1e930759103d6b
Date: Mon, 29 Jun 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782735513
