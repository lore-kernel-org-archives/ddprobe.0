Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8572E88B4
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757753994; cv=none; b=fHvR3WhcqtO32yTu/M51LdRWa+l629KFHtpmUwIAyMd6BihITDxcJ/4PSg8awDtbK2UxC62x1+S7529EVt9tjUUpSACvlTE3aWRXJYF6KvufRL+IwxKfmgjPtwCML+tg0Da0gFVE3rwwFSz4wxnwCsNDaTSI3/da2ngw35V1q1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757753994; c=relaxed/simple;
	bh=p6AnDnrBlNLnA7cyXxn30dZ3NocE9kP65dXNj2hQ0AE=;
	h=To:Subject:From:Message-Id:Date; b=hBnOxLx3p3n3HdolKymlqGM5CFVL/XJTB9QKJT+Zjx9jpA0TXm2BJrcSkD7gonVWr7fXdjtWN12WFAyfgbr7+47zY3QcskbZZ2tHiDPRhoLzSCq+YKy8J0JkebMGWi8ijb3OAfhfQDkUB6CO0xNoDclJnR4/lgyB8sRGemxPOsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1brVCwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1brVCwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A7FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757753993;
	bh=p6AnDnrBlNLnA7cyXxn30dZ3NocE9kP65dXNj2hQ0AE=;
	h=To:Subject:From:Date:From;
	b=o1brVCwOmmdnFqn8lF1JDRDjqkeDwLZ9VcJlalf2lLiyRFbEvve4zw8X2nVtJbh6h
	 mug/yCxcUu6p4z84oWBKKqm/y09H3XPv2dMkXDTB+t4Iqh2k6k6+u5UzBNIqtSRE5F
	 EYmeo+Yk5BpWmRK1Sodb+CwKCB1MiWjM2F90vJ6WJ2VPxmPzpBSX3wjaDahOWVJ02R
	 DwgUWPKbFrpFZiKFKmbSPq7GQGeFYdCzyuvZdWOJ2nV8ssCLzGktoYXxYFJeP+VlLT
	 pXCRbRtZ/1qypj6Yfj2pNVSqeMp+PKVu6tLeOgMuMoVpitgkawW9BHjjEgusskeUeb
	 UYAyTFpxLh8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D97CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775399360.8247.3862576184014212136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570e8b7509378ca9b4ac446fe3cd28203ece6c3fc6dc5efcfcb3ef7fea06413c
Date: Sat, 13 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757753993
