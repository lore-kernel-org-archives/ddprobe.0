Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9862144B6
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743436794; cv=none; b=PeJTIK8eD89VMO3TbldLBe9ron9mHQLXtwlRSUYD8TJ3+VqrPstRFkQnO7spxilfITfUzNEoZjt4KSHk2BGEFIs2TlZiiR6piqY7CCgp54ND3eo/MqVYcBa/uZJdAyrnXisRDVMQfNlA6kDg4DEX9IfX1/z0NnEfBqCHzpDjdwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743436794; c=relaxed/simple;
	bh=QMvl8LzgdL9keopmy5nbeZ5tf4Td76abDWW2MrBK/1M=;
	h=To:Subject:From:Message-Id:Date; b=QAUer4FcO2PCdW9k2Qsf/Xld/4NE7Jm+GnIiRRXIOUCQLRLORnu7HeuMrXbeKp0PtWLA73NNMATAF1TWus/2JUeN6SuSINOzrwTvn6Ywrr4gVmGVk4NdfYR4Jp2bi+bL/zHGtS0JodvO0dxmvjKtPa+WQVyRCpswmaehY+ljEAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqChYnlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqChYnlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BC4C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743436793;
	bh=QMvl8LzgdL9keopmy5nbeZ5tf4Td76abDWW2MrBK/1M=;
	h=To:Subject:From:Date:From;
	b=gqChYnlgjG4E9+nU6rVHdU3VEWv4zpA/hF/xNyKv/mxEZwwB2uRmX+PAwxkxqDBwG
	 cP/1a6ncQq5QvD9JyylNOA5qy6iJZkqJCef0Psz3RbU1hm44BNB1IXZbsutV2tZVtV
	 lXxjrzxwgVzOce7ZgGU0ngzuLP9Q/+y6HvpFPCq9GYWfyApDUZ2XsBPk1NdU3A9tyP
	 8qAW33kOeU2iGSyu5Iez2Xl/3YafM5GfV545fL+oGUSf4aL2LRKz4Bd56tE32f3tSX
	 HYp0Aym95v62SNHo6/wSToazbqzBiWwQCGl4Gs0OEx8Umtq3Aq7IvjnfzLBEaSBnW3
	 cC/XHBx5RPXaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55B3C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174343679365.6683.9582143209027215283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647d4e9100f5d3fdd876746a0a10ee71f4bd6a53a4b948602597061f1eeb4f2a
Date: Mon, 31 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743436793
