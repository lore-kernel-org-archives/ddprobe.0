Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237FE1E0DD8
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775513134; cv=none; b=TNW0JGcfi/Unwz8stcWgpx57chW6TDHnoLTqlrViVDzZtFKxZ6SgerOGqQdNfivEXFx5nSj7rBfvnI/ko7pU7oUUaF1Y1Rzsx6IMKfcmeOGLC+vEcDPe6cc0qOtHAHgjEsjXFnx05fRqP+fOvAMvTtrDjZLKBk8KZDeyCLsPxqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775513134; c=relaxed/simple;
	bh=zYr9vkOQ6OPOLQmPQvaQKWeA5b+2S2cIwAjdaxevwzM=;
	h=To:Subject:From:Message-Id:Date; b=nUItWaXhd/ubFgDJ04GDXQ1sfW/hxYtOxOfW2s3Rjr4fUQVTTS9lIjGVb15Yu1fi+IGhQ7b/LAM9VO/WIZ5ajl+0FIxbLHBUp/vtiktJyq2AWO1iqkh4DyIfVXNRz4RoWvts5A3vCi2MsdxqiQsB4C37tAm3DECkqxXUrBhWUuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEZYAItC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEZYAItC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBE9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775513133;
	bh=zYr9vkOQ6OPOLQmPQvaQKWeA5b+2S2cIwAjdaxevwzM=;
	h=To:Subject:From:Date:From;
	b=cEZYAItCvRXTLhjm3O0IsjDOAGk414Qp2QR33UyV8Sn+2T77BoNCXmMGHSPdGhfgO
	 REtsCIKqBja2lDeePwhSmK8t4ICdSGxU/Tb5LEsymsyDxEm60bb3zbFnbePlGDlD7y
	 jPm1IBvBrjMURkaCldDUOWsHtKHLv2LvqVwTR+NYopFmDco1LKXQuGXhY2sQcLl8s3
	 1Onsukk0LXIM8nvRhd6tD5Nr2JSeTh+stoLSsr+lmXVj6M15qzpJjs9i0RiPaWEth6
	 +YqmwG4LM8EYruDCDZBu4xytGN6fg4bgwMSNiiRiJwW/jquwoTPLWCVpnEBdLNVOV4
	 wFFdKPaEUazKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5E3FB5168
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551313369.4943.14888359077924452372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb6a88369c322bc4154bb47b5a0ed0736290989094f59fb032faf04c5ad7d5f
Date: Mon, 06 Apr 2026 22:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775513133
