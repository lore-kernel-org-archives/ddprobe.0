Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8603542F8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789206034; cv=none; b=RkiDC6SQ0h3DJlM3wM1ANmhu4o2Yn5l7Jo5f+B0rAeHWLoDO6GudfmwvDbgaMlq5otDq5UxsA0BzGDz6dNLjeWO1zVKwb4lEubods//MRGISJhEd0EhHYxj8Va4xXPXRCybAW67rnC35hctoBbQIewP9csXbnW0EFP/kv4BdjvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789206034; c=relaxed/simple;
	bh=jk72hnRVK8H0532o2GKU1iWHKAIMrwnHuNeqFy5Btog=;
	h=To:Subject:From:Message-Id:Date; b=U2bwbxK9uGL22K5Ts4VJQirgbHn289u5706z/X3EmHPOC4x4aV+34NJvJMqn5DqRzpDMvVzIBRRCBrnKuuE7OhPyHqhHSpaxKHcVOXq5Hxa2VdeZyGrysFwyq8enVyUQNcrMRoslP5MKotyprxiqqEFERXKdjTKBfm+VvYt47g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=breZhKT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="breZhKT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF39C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789206033;
	bh=jk72hnRVK8H0532o2GKU1iWHKAIMrwnHuNeqFy5Btog=;
	h=To:Subject:From:Date:From;
	b=breZhKT0KiSreWhpz+7x6w0cheI318bTOkdcWNL1z0hMgdyx/CavWIri3qKIWLzBm
	 huV7iopXsQtmSPl/7wjKekOO5W7ZJeH6bFc3QFQb66qxuF75YbXy1ja2aUlt2IDlgY
	 /GMf2nGHoxI+no3IkSpIa5LldA6U1Q0iSzixO0N12u1tfk66LXqmSXPef77Aaasrpg
	 ZaD6qjoIhFK7UIvsaCT1j5RfPVvd8shgboiO0NrdaAh3wqAPP3dobYVWItJV8D52Z3
	 0IrFtTU6m1cs7nE9xir+qJtRXzYjLgOhihwWQcKeq9wn1DtmYtVhBfz/Xr3dzOm38S
	 +7ZxpU8+KG9bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8BAC88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920603368.13371.12218843151398009664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec82feff1abca4180a5d5526caed97b40c53d315a70936d9ba80519b11e96c15
Date: Sat, 12 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789206033
