Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B212110
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754657394; cv=none; b=jpwNt5As/uX6K/4ChsP2d3NIVE/pr8I96WFhqkL4eg40nr9j7E8rATIsaIwXGWGsxT6FIkWuRa5eeF93IVnb8/Xx+19i46Z6Gj+lxewTt/RE7NnjWl+qoLsIwarRoMrdmzn3196ZZwoLjmUVmaaHfiO1gJQgu5padyZice6dpK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754657394; c=relaxed/simple;
	bh=wODmw3aWyHGmhyTfvb/e29LjqITS3oYnOgJYlxkll9A=;
	h=To:Subject:From:Message-Id:Date; b=S74pxJhMO9Zk3zPXY+onxz4Ou2xZPDH7HjaQsn38IFQWFErQicQvXCnTYcOs+7vbWxwEzwvFGILMKqs5PaalHsQ/vOrNnjpRy2GSJCr61lYXwKFMGODwDUsDD6JS3+Ig7Sk8mHdhxz5kH4vTgFfzCbcP4P0HbTlPpAIGuoap6ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nK6lXdbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nK6lXdbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D347C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754657393;
	bh=wODmw3aWyHGmhyTfvb/e29LjqITS3oYnOgJYlxkll9A=;
	h=To:Subject:From:Date:From;
	b=nK6lXdbnVNNMlZWeaDdDuHHo6hkFrDlEjlf8L9DQQlSnlBbNfrIRFhj+zkIUc7ak6
	 GGW6zsFAN0jKSK9ZXkei8EKElKxNQp9pPxvx+P9lFdJPQKdNlgVE6imNyM4qiDaIFU
	 j5mvi9cPEg3WukrNzD3wSOr8cFSB7Riu5kuJBx4teEz7Xw5nhaeJTnbg+SK3qIgRdW
	 jd5AvavkM1Fw/wUXJ+5KfJ/nd6+aAUEL/nIADIUre5xlyIIb8QQUeWhK4I+u4HAnQ7
	 hBqTtDeo0qbFw+J2LQMIWpR714eoGIhVQ5g0Vz75xahPRpdGKySw6aKhrDEjZBetPM
	 kSw5v9UsqgQEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1AAC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465739357.4254.5087083047314588148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6cbf9b2a6a5b8496050efb859e52c0e4c6b379f286d77b8db8593366c381ea
Date: Fri, 08 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754657393
