Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178402C21C4
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783094314; cv=none; b=gGqP2kuaviGWMIVwLLpaeOvDHhj62M+dl7XGElABlo4TVoUDlEnrRd89Fdl47usFe2U/hN+UtQpFNo5DHAetVAUiMNhiTUandmgpX3s4W23eoYGMt7dG4EtGdMmnX+A/1spHWJUbgVtknG4FIOOyOyrqQOR7X8R5QMPgsu7+7Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783094314; c=relaxed/simple;
	bh=SPTvhQESFul0CYMOjd9t/9xCMCIT1zVzma/komSev0c=;
	h=To:Subject:From:Message-Id:Date; b=NDMnjeHeSX9q3MuJOi5dQn1KA/0i5CBeTRqIsn5pEfcoTR/keWavD7CKqsB59dIjXM9xtUy9UJUGoj0K5lw8k5ao3rxMy6BzxZkfCwLY1s1ZCZoSG6H3jiwhtYICUrkNOtme0zZ20+Ao7/i3g7xyWCnOhcDeFSIVbFT2tS7OsFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORB8OINB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORB8OINB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB51DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783094313;
	bh=SPTvhQESFul0CYMOjd9t/9xCMCIT1zVzma/komSev0c=;
	h=To:Subject:From:Date:From;
	b=ORB8OINB6dJCDiYHoiXFyLN34Libf1pZWfF9N+E+qc2zCd/It/f3lx5TtxJcAAn+T
	 40VZFYhb+eyrSr7ErV2Lr4I/8LTXFMQfLhJ8mlX2hBaAa8JrF3WXwgUqKv0qIEmuoH
	 xa5BsFYD0Iov6LBl06JokP5CRVK59uyl0j/1a7HsPwIRrkMKxevC8pil2EPkOGpcFZ
	 lkTIesPqaOW2kpyxOW/rT2r+URZb0U9+58Z5hLuDs78D2wI+pAIAhgU9RnHun5NgYk
	 zZgdMAZq1PhfQU09RvF7VYqBY67gWE61oWx9VawGoN/pE85VZ6zRgHFzFd2lG88Hq6
	 LxhOsjJuBkWRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0DBC44500
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309431368.22333.6800347510540343821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d0a45f065bac87e0c722efc081a8d198bd2660743bb63893f18f86edf53ba0
Date: Fri, 03 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783094313
