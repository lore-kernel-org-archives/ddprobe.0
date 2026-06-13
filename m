Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F863FF881
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781369194; cv=none; b=irixMt9uEA8x81tXkDYE0vJwB7PNag1VwregUG0IFULbm6mtv4rSoeKVO0VHKFUipNEUw8mbgnXaXiNyhznrgF/fOXB20W6KvzS/l5XvkpKEjKA1CV2tDBmKSM6v9aGnGatY+09hNPDa+8zUVAWH8VJ9329GIPnL24ICTgl96NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781369194; c=relaxed/simple;
	bh=heunWGpHDQFwMSchCV5SWZhu+pgIXdVSWalAk4pjrEo=;
	h=To:Subject:From:Message-Id:Date; b=fWqjmfn3UShtVLKioXkjs0963cow0Vp0hujoVxZMbBMRehsqdtmgIz10NcC9NjukRAaRDozlb9MIfl00hQF0Rp5e6gNRBtdYeQNHzLOZJODw8tX5v73CX05QT8q2NbC1QVtzy8g5ddx+NzjaQ7vVD6hjJp9MbDEsanW0l5BEn4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMSvO4yF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMSvO4yF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFBCC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781369193;
	bh=heunWGpHDQFwMSchCV5SWZhu+pgIXdVSWalAk4pjrEo=;
	h=To:Subject:From:Date:From;
	b=QMSvO4yFNqK6GL1W2LzRUWk5Ahc+jQ9FElcfcVu0ISmztps8t/JII/S1GjcLUdixe
	 QQWIxxUTSr0O14vg00r32FonKhKWs9TiNKWo4OcDbTTJIswXKFDJNTAm4h40hwzrdo
	 YBEeer6ZFGo/H6IWVJWmoeYbh6IHvETXSaOjINiL9jiRW6XfjuQE2YpgesgKpXtDlV
	 04sBFnS/Y+4HTWRbh6wibuN0wQq9hIFgp59fIRQUkhIBQnMcdUXI5/SAA34j4o18hu
	 1wpucJhH9+9ckjLUBiLMhjKuuRh3AJlUz4jECPgn6DMsoUmqR/8GVsfbMC9hZiEoLI
	 qCYnfpPdsiH7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B165DCD98D8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136919369.23945.7938178097363428999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b750017677586ad1fd4268b9c20a2d52149a08dbc34be949e97a69594fd6912
Date: Sat, 13 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781369193
