Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEDC142E6F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736091954; cv=none; b=FIarhnBeRU9XlgSckuOlWKxp9YFhhq3ycM2nFjl5fwkaSalDZ+NVAioIysOtugbmPgARSbhFVy48MTT/feZ2DIcTj7e9VaDjRXuQUsjRmRysX6uK4S+bvcfgomoNi9wnGcxhiDlDYOcXD/WmjZnT8cqFQCT6cfG0Byp6kVkOK7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736091954; c=relaxed/simple;
	bh=Oe+J+rELBVUQriyhO8sLqbyLtgw+fzYK3werhvV0D+0=;
	h=To:Subject:From:Message-Id:Date; b=cfh1Xk4IDDci6ffkrNuPXoiZtTpB92+p8H8BEH8Y7HTKDbI4+6k9wHRaBnMMoo6FbbSzaSBnZF+qylEs10WZkC8vIyJS2O6geCPidhJSwKhErdHwKY7sq8rUE7+RM7ogy37t+RcNLfMx2W5q2coTJa7M1YGv95ZHs2gx7aran8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUiJpIiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUiJpIiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00E1C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736091953;
	bh=Oe+J+rELBVUQriyhO8sLqbyLtgw+fzYK3werhvV0D+0=;
	h=To:Subject:From:Date:From;
	b=QUiJpIiO9xdLf2loXpOuNCVAZRnuFpX7LxKhc72wAdNfPmaK9QSdZ3lvgNOcPpilF
	 QsJ+AaHy/2o2ZOyGW8PKsSimhJvNV9HFSXw48nyc2cPrx2h938qQBYBiJJA9jbFRk5
	 7T0wGD4UAtkcorTH5BiU+TfxrB+/yhrfT+R2wdUdzM5a82+H45UA2YlkQ8CdyAAHUN
	 hJy/5NdA1kWkjXn6NWmIZXc4lOCJ+vh03gLE+jCnV4c+2V2BHtx1pJiR7A2GmlnGc7
	 SmE+bBZ+1ajWH267u7tN+Qw17Fb6tWF8F03VOGO1f8ridnW0lNM5JvH4STo8nIOMWf
	 zW8GeL1DebOlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2D6E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609195360.31884.16414247819851221778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a45ac18a1aa8a590f2cb73ec5bf387345dec9c04208d76fa3d4c8000fdf24d4
Date: Sun, 05 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736091953
