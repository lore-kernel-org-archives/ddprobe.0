Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C6A374A19
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785144634; cv=none; b=rAm5Ea/QJfmh6FfnsY/nsFa1i788XPs4hOn2FwFsbcnWLUO8na4orw1m5TrTx3w1U1upezbNwOs41gyNlEhZdSFZs9PUUNlVP/llJa+nzYZpiy+Y99/LHRsZbWPhg2lwtYwns8FAWUXvnkm7GOQ35xVkPqFH85nF8+KfmKJwFrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785144634; c=relaxed/simple;
	bh=3uym+7MN38S60CluMBzivCwz/Bvzw9HovuRA+hyrg+g=;
	h=To:Subject:From:Message-Id:Date; b=SuIRF0MC0s0Jh2kid84CAudh1luVWUEYAAhXJbCRnIFVk6avjIguj2cQkL/zmhdl9BKhEU8J4rw7LMl71h5LWGzEDAuIpNN5/iaSoKWB+S1pHPOteqt9t14QXM5HKPA5kW2l1bR5w/ze2zjuUvgBcpOZm9oR0nQ4YtLovi8I6TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BI/x614b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BI/x614b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC632C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785144633;
	bh=3uym+7MN38S60CluMBzivCwz/Bvzw9HovuRA+hyrg+g=;
	h=To:Subject:From:Date:From;
	b=BI/x614bRB6XRkkyiJESwc9B/uQzhO+gtUEaP+2+ylBm88NI0y7tUtZEST8XnLQfx
	 b0DRN1MbKqzXmh7RFQkAE0UOOPRWCv2gXtMR28RiJlWZBmD9ayPCxavlF75cy2nvDH
	 ijXW0xRmcmgFVzMDwOvyA9AHppFtMdH6oi/+r8IwU2rwfohjl1yg83cju1bPJomAXF
	 9qnL5ibwaGuzVs9qJQONpf0JAV2SyeM9RojaIsc3GOx8cq71qyh44atmN4jqwucI6w
	 SH8DNiNeS8ojHoOz3lhSa/MsOc2NvnkaRpGAvygz3KtyZmv4kNVLYGrsj9snmGmvpt
	 KC77Y1KD3jitA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF11C53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514463369.9817.10637480413591172335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15df33438891949a34e0a5a092f557fa685b32ca1cd783c1fef98f816b12d5b
Date: Mon, 27 Jul 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785144633
