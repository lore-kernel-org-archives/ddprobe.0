Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284FE9478
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751326796; cv=none; b=DSMTp4+NFzmhFu/BjX2BqViYrvXMucYywtLkllhH50NJ664J9mXOmpPUpCHfseZidol8AqzxzAcB0i4gMsg3B2NPb2kqcmKX+H6Wnat8vgW/a4s6rvCO1N7G1Gpoa5bC7VhV4cqs+8uQ7MkjZQKpAw88WM+e2hsovmfMQhn3jmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751326796; c=relaxed/simple;
	bh=kyQTJVy6VmfguDIbedVGgR1EjPCz5h9K7cz0E2lZRjQ=;
	h=To:Subject:From:Message-Id:Date; b=K5/mBXlILIjKoyrTvZvgVORQhEnRKK+kPsJV//5DNjTm1rmUa8BK8Nm01tnI+UjwbpUi7DhwpBcq3TAZ4DrONVnTM3yVMrYlNmTWnN3h9GuNIRgmP4WDHChKBk7mqoHlbsFhD3t+/hf5xJ5A188Ktx8vcIJKtcH9W5XaET+psvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDuIn6O4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDuIn6O4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5E4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751326793;
	bh=kyQTJVy6VmfguDIbedVGgR1EjPCz5h9K7cz0E2lZRjQ=;
	h=To:Subject:From:Date:From;
	b=HDuIn6O4NhKDcqI+IhXgoraWUHmgOmxtOjrpDiu4HLjZFurwZc9C7rXRoV9aM371e
	 BQ+MinzIPIxGhhPpONp7Dch4hhqZYE1aiikdG73LPKTzi84ekYY3YLCY/hF0MeqOOi
	 eu6w32l7QovuyvVxbBQed/US+U3awZ85wD/61lIm60/8vPYO7YVHmDJq54+IHuJjb8
	 02ruz1iTw3slJpm6ei9ZyozqobceEcIpItFqWh7DmE3i9kLmsAk6YeGGAmaNW3hv3o
	 RfBSXnKMHFvH80Uc0ZirMnRHkeiKGJ86CjjN4zDmJAorut6YIzQtvsYTvF+jNQrRNF
	 dQeF6eRMCxwEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC0C8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132679357.5912.8745050968697319705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738e3eb37595553fff63626b82622fe707a6cd2f2bb43e40ad6e8ba29049ca59
Date: Mon, 30 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751326793
