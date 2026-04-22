Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BC51A6815
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776842853; cv=none; b=tpu7v4RBiWNNwgJAU7SFthZFPq440vH0zdS/GQLV8z3Lo9DgVrYOaaMH9jqcz4c1qQm9ArbL3xz3MfWTpPRD+/4+0YgbH5pFkKYZJBlFOVXUX+izXGqvz+txuQq8iujPHCkgdSOgHXVGJG4KzljXv7+lY7HRWvdrFnG8jNziQA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776842853; c=relaxed/simple;
	bh=me6LiQPEiSyJwT4HqZXjiIrAdlCdLnBfIP4dQibrJWk=;
	h=To:Subject:From:Message-Id:Date; b=PFsB5wg/50KTGKEoJbyazCVkJbbPEuN7fsV5j0R1BIgb02rwIjU6HZx7a5WUvs49oZUsOoXhcbI4nq4KeSDW5IsQUpD7Z/LHICewhQnDTxiEM9jv81T0H6+ZjWbYotNYmDoTAdsD0CZ+4Y75bKYE5VYohoA2OqURn8TSg0n3nJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2WtN/UD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2WtN/UD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B708AC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776842853;
	bh=me6LiQPEiSyJwT4HqZXjiIrAdlCdLnBfIP4dQibrJWk=;
	h=To:Subject:From:Date:From;
	b=j2WtN/UD7ssN/911RMNmc3ardyfQ5g5t1NGHEUL3yo+dkoHOuDWeXp+iaExXe4+Ez
	 0GH/RtFF9T48ZCwmbcNVeYS+YbRsU11XOX0YN7Vv/vdI2PoievNNOdI2cSstF7W+0/
	 w7z9X1Li3rF36SB+Gwr3IYGPdUofrd/abZYqWf9RL/ocTn6Ih4SD7Bxb8lkUnT/lkr
	 ekXZzCQALWY+UzjAxxqWAVc5gNNWSzwNeNQgCEnpKu2qW5mvzufgY7lon4QRaSU+oY
	 PINQjEjWY2XjuNzs6nOXPDqywdyXT2adiaN8tQerkS2RkeOeHUwwi/9tC02hDp9Odp
	 cOhw0ZAArmoiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CAAF94CD9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684285368.8888.14971206193698324696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c35f2347faf53a90bf4706008d20d012e0117b2326ce31cece58335815cf8d6
Date: Wed, 22 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776842853
