Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F97E1E1041
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732719954; cv=none; b=Ytq9G7jiHrEgSjU5gKmxIGhtt92eP3l8xpBonXlwLxM5IvbG+6GdwyhFZCh6Y8eLnJdfH9bkoEg/Rh4pd6iL675qRXD1v8g0GELCJIb9/sT3nkVQy6ZvuyjLzC+TIlATIwkMCFpzqk0gZJLk0wE3MMbpamX5bYtcvNCdHBitxH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732719954; c=relaxed/simple;
	bh=JcttmHDcky0wdGYfM9HUwNB/P23N+NvBmmEQs8218UQ=;
	h=To:Subject:From:Message-Id:Date; b=H7xnCNJyMwgHBujud71q3Sli23TtJSxIPjKhpQnnnCDWI5oDvDApESdLQNV3shwFEnGB5CU41nAHfQcy5vPFmEKmwVm5Nb2kG1QhRC8gpwBlOWnaTIrWTLpYuU/3sPz90tjyFyOiTnZ1gaOeNpcQ3gE4oOBY69PdvqJL/77HSik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LS1vPVko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LS1vPVko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DDAC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732719953;
	bh=JcttmHDcky0wdGYfM9HUwNB/P23N+NvBmmEQs8218UQ=;
	h=To:Subject:From:Date:From;
	b=LS1vPVko5L0X8bM8+37SQq8KrGe7wpTdDYW/AqKa0fVVWjMPuvNLuZLThcxrUAIZy
	 NfPtqQO4dCQbDfoiLC1iu/VFAdI0U2yi+mN0VoxCmQvmVqsaJm3/eMXhR36+A9a3N5
	 L/FNRBF1pHDy9CnuVWUdLyPruMt7lyHd4N4i+qG1Ava+dKGsDatjPMZgUQjIU5UPna
	 XjhZxca7NG8L/Nhwc83O0C2/xCTJYTAF5nhS2OFRTt0sx+47E1MD/BhffzV/pQ+WSb
	 Ys7+UfiTZyyYgbp3vox3IXHzyCn1MySfY/+c+4x2LmichYbQUa1mw0ozYhivxGn2HG
	 DnxoNQ3k+kphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9169D6ACE3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271995368.11664.10312932178527937452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a32020e504cb930223a7ce9a7accc6e2fd6b4c70952a59c5132059e4462b7a
Date: Wed, 27 Nov 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732719953
