Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBB51643B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776311254; cv=none; b=Bz6KCNiFKVU6ukr+mB5T7gcNtLBDB6DpKXFbxZso0OKZyU1iBFA4481mCtI/DBJxgb2e4Kl98uPcrrsuzqGDdn0kB5OrbaYFvwvrPk+NkgRNCOyxKwko5TmTjUi0Db8bX2NlSmstAA3uVqu6ZlhVR9XALbEiDgRUjDPkTpzOj1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776311254; c=relaxed/simple;
	bh=TLvZdLp2ysWQrZS6QA2jorJ+I5CDGURiTdPb8S0OGzI=;
	h=To:Subject:From:Message-Id:Date; b=EPuddPd4dG7HQbO2vR7a2IAifeCqii+nWZqmGaCbJavDXqh4WNJqLNQMwPNUr/2q/ugw+/u1QXS7Kq8i1S97qCDn2LmRZrih5LD2GmdkvREuxNixmPfFY1C25f9fo5YZEqAVKUJBRQ5VEy7wzOt+6ueDuUHgwSdukDAh9bRYPKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNKLEwCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNKLEwCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC39C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776311253;
	bh=TLvZdLp2ysWQrZS6QA2jorJ+I5CDGURiTdPb8S0OGzI=;
	h=To:Subject:From:Date:From;
	b=eNKLEwCP2oub4BfjeGj8oOJqHeHS5olREVIm6cBIl41wo01eNZjiZNciX/qf8MtQX
	 fnMnfemrwfQ7HnKlwvk8Mt0Fqhjaz/TvkF+7L5nnPDCf7olDeehyI2X44GX3YhObv6
	 axJ4PKEHVIcyNOhrku4gii5rPrNc08sr5IQX8Whk3CkKGY7jx9LCzxfF3HUngWoEIG
	 YZ0LlKSZkZLpAqYX2bgcjTq5Gy3qfDX8JBXq0o92XNLe0kSV9SoJOgcDPdPi2Brart
	 ryKHF9KIiyT5lysYiGx6SfGbMO1PhCr2oglPELSR7fGhqx4LuApzRSzlGaLjL7gYQ6
	 25SfkVgweJw0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10FF433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631125368.8292.16228645400195648699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19328b769292ee52aa49ec56b491dc4dc8935c1165f4a0e524cdd0cc45d01fe7
Date: Thu, 16 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776311253
