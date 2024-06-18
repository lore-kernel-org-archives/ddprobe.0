Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4FA1E517
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718724563; cv=none; b=sLl30jnMAbmd2TUwusJlPPXe4U0SzlRtChlq3GulyRdMh3SKONAvItcyvMk7QSnPfu57g4hfkbJiFjiLYZPayhwuoJkSsVt8U5ZroLySwcVHTzv+dmhrdvUKQZLuYVg01QgY69Z1OOS40yGpKhqWbT8NdVWy9UBvKpTLXkVrFh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718724563; c=relaxed/simple;
	bh=QptYd0HsHA3no8i8OPgaF1sY+Z+DqUI2qMDff/P3b+g=;
	h=To:Subject:From:Message-Id:Date; b=LdFP0m/kD2XOUt1mn9IwWXwt593p5hTyral16CalxkGHrYA7buPfCSPBZbzylrpk1lQ/BXqc6VlT651cCSxlk0VrxBThwwMyL+P9ntXUOtfGBH6BUv3T++EjiNs7m8qQxxpVrV02yZYuKJuRx9wavypAaSic9UyAzDc4x1ctAHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X28OVLzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X28OVLzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED9FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718724562;
	bh=QptYd0HsHA3no8i8OPgaF1sY+Z+DqUI2qMDff/P3b+g=;
	h=To:Subject:From:Date:From;
	b=X28OVLzX4Nh6XGp8batCsDXBYrFoIcPibZ1ePp7J9gEncO09ja+HWrd51v/1I9nSu
	 tXq5/sEmBJgAEMq6+ccFjIXu+K50IjMSnX6363DH+yViSkOl4dTKBhLLcsuz1HOMHR
	 ZLJjr70DgT1za92vjUX9tXEqUsMVJtfGIYE69IJcB67iIKFXxNy/BNmEQUsxP1Xgt/
	 WrbudQ064csWqzNALO5Tg/8f7+TfwhJtqdBVny+cdn3rLKArEQdktGpE2xUfIi4ZIq
	 2jadwT+8YChbpYDABD0FzgdSbMvmGfwHlUMOPdQp5cQgC2Nz2N3lDIxU5KmH5FBwah
	 ETw9M48bm6Uew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6ADEC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872456280.22718.11957446501116181184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef50bcfc155669e887a40f7485156a1a574299eeb0e7e02c55e5c915f24f33fb
Date: Tue, 18 Jun 2024 15:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718724562
