Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1CB23C367
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744025394; cv=none; b=Xm0/KwrY6dixxNr8YC+sTgPu19rzgo18XRog3fyiRzPTWEMs2e1z3Vo9KxCNYJC5IkkJ5htazq9T/w/bkLYTPSn6DcKL4s4AusV5cEju7qNtsdMLXYzFEWeATAjrPNfIcjU4MEsyTmw04VWFv8zBKHGbKwtD4PjDrjITjIZIQNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744025394; c=relaxed/simple;
	bh=hB/xzNTgcH0EAwNQCjgoydW/ITIrMgb6ogAFwZWH518=;
	h=To:Subject:From:Message-Id:Date; b=td/3AoLVDWMib7a3t9g2FT3+GGuAqix3NZpudHNbuATZDBteylH/fxyoTwmRbvmxOqwj2BAOWBMA4PvOCoNeqXoAT6I2Dy1UExeI8EVhTOJjl+XX68oDFA7m5SqvKL34ooXrZMLVXu4/mGIqLri0g0uJdf3PucZd/9GAPNQgA9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDQVozcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDQVozcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A865CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744025393;
	bh=hB/xzNTgcH0EAwNQCjgoydW/ITIrMgb6ogAFwZWH518=;
	h=To:Subject:From:Date:From;
	b=qDQVozcPYtBL8KJ1ZxC5eS3P2PI99Mb7mUizqPTGMv5j4SJq3Y0tlcUKzj/k4eDJ6
	 pviYFmbUHDBcawpRpiNfNZElZ2zXB3DAh7t7iOP1UOwmB1k1m4IRXy9QeG+rHUIQB0
	 XeM/yFln66kH1XOl8K6//pWYvPSX23dYPT84mkwkuqMqHJY+DBosmFaqaAaWLuUSw0
	 TB1sPUw4jc3zdvs5ZOqD/0t7CVnoF7IZFqZWpc/ZLSEShptYCkI4HKgwgoSwfvvQ4x
	 C4SNGK1WOtieu1r4FJLGGb6C+PIChTQl5+cYxV9mjm5VpVuXift0ZWFgyPETcHgMIg
	 gkiN6QZ7yIy3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91773C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402539358.26260.5936851809546505300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcfb6f797b46bd157ed3258a58341d29121d958195e195132aeea43c46f3888a
Date: Mon, 07 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744025393
