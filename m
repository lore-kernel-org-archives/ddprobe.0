Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C8B1DFFD
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723438554; cv=none; b=a3K36IOE5ZQbPNNImlfVYX8eK8/qxFsGLzFlAMppgs8kno8cuTTUAt03lOEwSbZ2AtfFqzTsdpgOjd39pbRqA92eZi/dkozXxEvq3+XnG5PPzMMAe/KsUpk77aiNjCN8mKWxlF/v/HxY1BPqtmz8HSFLAzy0Q1ASvNSf06Q01jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723438554; c=relaxed/simple;
	bh=R6ZPBK13/yKTIm4Mxx8eMDZlkfWAnckblgZ9Z1Szvbw=;
	h=To:Subject:From:Message-Id:Date; b=Nc9YOpknSRjnzs+joecQ+HCNT43wnToFeGojCG4x50CliOcpZpz9bUXXExxU93t4KF4dnlIU2QMY5o09lBux1n4o1rJkZjVJ2tpyq0PEyps5sfqigpgzAMdfITEzrmuUnt7sewuvkAW43k/x14qbhKm8d1xV5hSc95K+WqRzifs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/2fh7l3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/2fh7l3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C8C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723438553;
	bh=R6ZPBK13/yKTIm4Mxx8eMDZlkfWAnckblgZ9Z1Szvbw=;
	h=To:Subject:From:Date:From;
	b=X/2fh7l36nrQhN7ntEBD0mV1HmzKo2ujLh+MVlyn0PaCVtizk0zHsE8w2mtecyP4r
	 B8Rrlcum4MqKyZo/ceCItczZHR8U9AehazYrFCJd1mVWeGEPo0stON1ZvqRmDh9xaT
	 Ygv4Yt6wxpM5dlLek16fYCS8KDLdWACTmr+guEEQbmYAM6UdYqCwqGoElfpl5TUY6q
	 t0nlxAfDLxwgW0GwrQm12qdWDDmgx/VwtxuBpYYm6XYEByol85dwjjxscUQqGBpzQQ
	 tr5J8YxgFHi/dt+zg+p8PHrgCzfs8fOxpKXJ6HO/OSHS9goEL/Syg+Py0XYq8qFkjY
	 9rkmET021zO4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C2C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172343855358.29701.7061013660323253760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1931806a0150f628914731ea83a70a39f54f916535e7bda77ff25fd6e78eb860
Date: Mon, 12 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723438553
