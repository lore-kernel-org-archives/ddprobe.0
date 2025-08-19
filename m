Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294E38BEC
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755614994; cv=none; b=dGxAkJvdJbYKgl6CB45w4quAp8Y3r959zW3VScpGnF9ierzJy8ahtC3S4GEH163a9aN+VJnJfK6ydv2AocvGUM7qrcCT1t7PcH6eDawSs/Q6+QxrFsX0a7HQi4gVCwhOcAsq4AsonSC1P5ZNca2NYUqELj1/xW/DPlu4Z0IzOig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755614994; c=relaxed/simple;
	bh=p5HilI9SjOtKj5QXc4kjQ9oIB1dfDGbDWT9g7D6aXEc=;
	h=To:Subject:From:Message-Id:Date; b=PMza9m7XXtKA0AYk8mBrJIHOp4oA/SFLnMfaHmH2Y7l3c76w5XksLmlWzbPO86mByQuUsUhQaZ0JBb0mwf+4f/SOxN6RSbSNSAj9vIdNznhE8/5uP9gVoSXgE3ZKCGQ7SOyAy646XRIium1ACj+WM2jpupMpPJzrvlcny7j1SDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4WgLlJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4WgLlJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A6AC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755614993;
	bh=p5HilI9SjOtKj5QXc4kjQ9oIB1dfDGbDWT9g7D6aXEc=;
	h=To:Subject:From:Date:From;
	b=d4WgLlJrRlQRg5zdzNhiBRFCqnmSJh9KyIxMO1dAGmXBp4/HaTloE+LgHYVUc7092
	 cd5QceSotl2ICC7sCOxr8aRoxLb4w4DcV9AFrfCKQrpINSnyv4kU7quakx9zZUOyo0
	 j1p8omEqBojIjxryeMVtt/HI3WmxdYLisH5Lysi568GZXtVumKlI0MdHqk6ZVhGAPt
	 vEKgFAajxyZMwd2ci46J6Ld59X+oklYS0HcOnu3a/8gZd5R1NE2NrivrF9528Mm4iM
	 v49RSZbsJyyft/ZDvWDuGHWRUImsj2yUmTMe+YY82quZjVgDKfE/xvY1T/frt8koH4
	 lAjVKgwR2FIwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92506CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561499358.10824.17635320394402351766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d224949c5da3cc01f7c5bc8096f0849bdb0378a4c8b8a41109d830424cee837
Date: Tue, 19 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755614993
