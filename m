Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BF6197A92
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739005554; cv=none; b=TMmKvkBHelskDfz19AQNCedmO2Gd6VpiFNG/IaMU8F07EKiZR/YgNuGQo+0oIQFO2A1B7rrUGvnmPDnNyBRN7dDlqqjjPbqxYnDtPzydwI6xnwPCSq93NXrJ3BVF+X6LSIYAkHQmxt+5FebojP4OxauZbU/qtgJEniIn9nsP1eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739005554; c=relaxed/simple;
	bh=xcvXp24mCO0e8wqx6Des7AVOYTS/3fa4BRhsga8u9Vw=;
	h=To:Subject:From:Message-Id:Date; b=NVs00pdo3LdSJtM0zofVkyVviAkeGiDgpR7nEi/41ZJo9i5Hotvc9jEJNS7WNWM6A96JhwFh7WyP3LlblxalExNohiM1+V/wn+9vL32FfAcsUhiO9jQKdHZmNBNEjDA78INASoQdTPlZDf4Y/UdXNcjtiU9mnZKJ/pU/IIm0Rzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhOjwfhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhOjwfhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68D4C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739005553;
	bh=xcvXp24mCO0e8wqx6Des7AVOYTS/3fa4BRhsga8u9Vw=;
	h=To:Subject:From:Date:From;
	b=UhOjwfhLC81Lh0Z0790Otnt6bDIPiGdlrjuU+WN/nmR21JwBKloAVO//JiIkaiWMI
	 5Ac+WGJvqQtY2VNx3nHyYfWpivLwY9hzvKurVRB57LqWb69eozAUde2o9pdNVoWoHQ
	 kVxQJHxNuQHQATyJLI+BuTCZ63mT6kxZ5JsGqU8l2vVqBi2ac5DIO//NFQoqrssvjH
	 Hd43+CqDb1AwvNbcrEJoMcafyPBjkTyDn4m6Nhh0780cD3jMc86Xghs+JlN/+1Qaxx
	 PPcaFLFrBl/DLyMa3LYNdO17QJUx9anndNJBQR1Yct1q9mUZ6X0zgYP/Lp28kBWtfT
	 rVySdybnjDlMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4DBC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173900555364.31752.10654314706738464106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6a254b7597966e1429d00ba450560813af3275d97792cba2bfca4c9640c9dc
Date: Sat, 08 Feb 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739005553
