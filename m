Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D99018AFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776043054; cv=none; b=lw0Q0LuEFlTWL/50GIX6ALORgpQWnSzl9VcGX/86DUysPZvmoCyqeDmSUFWcdA7yP7ndb5S0s7rXRWKeg09EdlG+zxRLx+7fZdTB/YIYvL04sO4nYFROyacjKU0/peflGp2MmNcKRblQQ8771KMI4vVS9GVlr62mvYCorX6bx1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776043054; c=relaxed/simple;
	bh=f6hHE+4xCDmaqKkPS/xz6PpHLb02K/dmvKFO0RnJ5ZY=;
	h=To:Subject:From:Message-Id:Date; b=lXJQCpRB8vsxAgvuvcXCr/d/eIqGra11TbPGQwBlXY5uVpjTYVuU0YhwqJqFbCFi500VYRZdPdmE0xlUOlfZ3rk1NY2OSw91jwSTSNb48GotY0FyFn4fM5pKiOqGdLSu42MsJ4hcYDu/q/2jzZMvqzs7ZzHEVvSfZO3H8yxSkcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgipQGTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgipQGTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41BFC19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776043053;
	bh=f6hHE+4xCDmaqKkPS/xz6PpHLb02K/dmvKFO0RnJ5ZY=;
	h=To:Subject:From:Date:From;
	b=sgipQGTwLRP8dqK/kc2IBQuuHd4iHW4N6TFXZNBQ2ZBS1wUVg0FAVYfVFgq7N4Sbu
	 N3G3YRbz3QMV1Fpc1Im2uhJfIhEEKKc+ch1TapKbMmfyUARwvlwq1L9nlAb0trrcly
	 zYhdLdpKDT7326nc41tZN4B9eTgONo8Yvuyxt3hTWhD4usRV2itk4hAaKlZysekPod
	 +E9kIVFRqNDvuukn3rNu6H4jnq4fb8UFUBR4cKKhr6KWYOVPOYDOXLMN52XKagM+ZU
	 ZdI9wQc9p9DUTTIGFBnLYBxHUFPAQ0L6uX6Rg2N/Ny6nYzBeGarOk7C77yXM3EHgft
	 RXqjhbRAI0F+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD13E937E0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604305371.17880.2939277302570130832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e52c6adf2c23c34c93b501f8be08868c89df7faae15b7d67837427f001c072a
Date: Mon, 13 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776043053
