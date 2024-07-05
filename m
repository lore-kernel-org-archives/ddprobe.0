Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358A18248D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 21:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720215923; cv=none; b=liXlbdo0InX1ErdT1SfV0Z6eQdntHcm8H9lMFzUHGdWmjEK7ww/unaxr/AliPnQM/Npx7y3PkY01pQMJQ2TFRPp3wdFdnmUXo2YTxaNep+2Epx/0nyhi4tpz4FZlAnEbuAUgDzBFZzFm2al4hSmAa5eBexfI3JESEjLkjE64ZOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720215923; c=relaxed/simple;
	bh=xOJ+ThDAhNThuOlP5qKXAR1vVqk5pVRMHl+c2VKNn8c=;
	h=To:Subject:From:Message-Id:Date; b=HmRcBu0bR+8fRkdxQ7KfThnXIfg4kHiV0QaQtkXUMhbA4n/ZpEVUQhZdVTykfxT5vVN+ex72kWn8eLbM0EwefujEbv4aAV7iZqlY/SL+x01ZOmBmyUBsF1FNKtbhFgeWEpCq341/fA+dP61XAtkkU17MPrXIgGKOfBfqp4oTJvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEjt0coF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEjt0coF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97F9C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 21:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720215922;
	bh=xOJ+ThDAhNThuOlP5qKXAR1vVqk5pVRMHl+c2VKNn8c=;
	h=To:Subject:From:Date:From;
	b=VEjt0coFCZel5eb///XYsfpCWRxKcAXb7DssvK0r8u1iOcgGbyGUBGWaNAECnuBx2
	 0ARfQyDl1orolOcJDVVDWHD/UC3GOzS3ks4Vz0eLelXCqiAngt/ey5c7iM2RXD3d6y
	 RqUMc9y+WOY+2Eph8PNwTSZw3/5Ww8/XVdyANWZHP3a0PK3UGH5v1m2ETj1HCvZ8ft
	 yziINV2W9NGFDdMCD6QKhr0z+rNyhp93VXMql+y4KIr9lM3p3oe/Qp+T7PukS377Tt
	 HLYAfW8N4dnQB2PBBiiRl1WWcD2uz5DpppTY3ShGHptC0ddqQRh9xm8CwXlar0t7gk
	 xnfaJ43PotjiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CF4C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 21:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021592279.3132.15470070978900727913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d594003328011bbf1f492f6b4466b1af776b1ec5ab4b44ddfad4bdeaad0b6f5
Date: Fri, 05 Jul 2024 21:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720215922
