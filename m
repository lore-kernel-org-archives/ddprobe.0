Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310CE1465AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728857754; cv=none; b=s44fe5W/tmPIcP0EA6zKftwjHow5mGpHv+Ia1aiWEk2idgfU1ywMx1JSXlABBmE6aYLDrHBu9npwuwcDEcyJkxiN3vYH+QvBBQtxNZXDO1gGxxCmkUZ4EOgXQO1BSKV+r/ZIalgF6hhxVytA1D77lcpkyUdeWK9J9X1VeIUYYH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728857754; c=relaxed/simple;
	bh=TZFHPazGqPU8GPzIXjdWQP5xMQy0lB4ZqYLBvnLki9E=;
	h=To:Subject:From:Message-Id:Date; b=WBRQKYrYpusOA77w51Ifvm5Djmb7RDo7kTEbb3amQd95OXBcVGFevH4tciUrZ8mBVmlBUcbcxVM+wMNJXgQRLcGJdc8qprTACMx8Zg6RD3woMgEa5Uy1EFXOhkrGIPJH8U49TfrS3XsmAOPMJ5H9/k+XdRoOt/2rP/FG9Sxjyy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOyOoqn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOyOoqn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8969C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728857753;
	bh=TZFHPazGqPU8GPzIXjdWQP5xMQy0lB4ZqYLBvnLki9E=;
	h=To:Subject:From:Date:From;
	b=AOyOoqn7QVAkaFv7Q8ehhLTx2NtQ8MIzrjn5znVtqd4VeBJ5qXkZ9sDVTf6dvZ3F/
	 L/nhNzrHp1soUieAges3kxsrjriK8NIgehV9OSz1kajO6448+CGmiHGKy806Bhytyh
	 WmgtfeDvPvhFeM3D0q0K/mcQnpu3eyswX45TPXmV4B5qGZ7vt29Zg6kug8t8MAM6Gs
	 CFhELtLCkTo1LaYhslrvJUnrtjROSHCnLpSIee4FbHmQBrTwThKT19bDBdBjlopl/o
	 KP8MPfvB6Hr9Gc3hDqzeZ0HlKYGzI3ecwM0dcUKB+4aBSzS6e5bgkop97uHXoA2qG/
	 gZYJAjmQpnq2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C0CF2591
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172885775359.4905.6711400003457917060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7a2c1243672609cc2b3d1f53cf31efa502fba71b3bd003261a230a2402532f
Date: Sun, 13 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728857753
