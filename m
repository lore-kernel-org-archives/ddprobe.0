Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4540029401
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720945823; cv=none; b=u/HDOSSMasv9Iozr2N0jrjuZQUqtIQx08vQpoi1TQBsiCMaapj8we4Y4F4S3iHZWQWdXS4FjGXcFhYxw+FymBvjY0YGjZPuffQSQTcwMda1oECZw3YHQXpADwdcdZ/H2lZOYdYpWvstply+u6gnPKwnYL2tFuWlSrkXsjezbJaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720945823; c=relaxed/simple;
	bh=A5ECnx7XuUEAyo03JMuaJmv6KqbjQ8oZan6PQnJipS8=;
	h=To:Subject:From:Message-Id:Date; b=EHNBeGBYM2MpurFI+DdKHF1QnH0C1961dxKLGGUVx9ekZkw4mbrBSgyA7sWp/nd2zwWeRpysxgVSva/Hsrtrn7LeVQctPi5IlLsoJO8y6MqkoCUnzb/vLN7jywujtKqs3NBfPZj0dZBkQ/DDZWkehOiV0g7aN35f1s4arK2N2K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+Y7RAIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+Y7RAIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C5EC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720945822;
	bh=A5ECnx7XuUEAyo03JMuaJmv6KqbjQ8oZan6PQnJipS8=;
	h=To:Subject:From:Date:From;
	b=K+Y7RAIuBhDXKUhqu0pf3NVWPqzgmX0QynKTxw+egFViSWVuDC7R9LlhJCqChnZnY
	 qC/57ZdiXoCEW8+lC41HlF+Wt4uqjK8E3nozXpk9l09W2rTRdtHaGYd8UfdAtA1isy
	 gFaKdbsrdeIhiThxEb8TXzx4FbqJYy0vAdEBtKyFKZk3AFQFErG5G2AN6m0mFCYVZp
	 SB6/EagKovh1Ckb+OV+qLhudh0eriMHaf/Mj9fW+aibq7lvyncK/73KejdfLVsOPqr
	 mk47UxPFbkbs8RVdpmym5zO22kxFx77Bw5oo4aHI5Uu1SpOPwszhzrkuwILmEHrXk/
	 f1r2HA0RIs4Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF719C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094582277.18716.4344105872618196176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7c336d96da171b3b27d97a683c65020603470f5cb0a260d7b558f1df2b4b7c
Date: Sun, 14 Jul 2024 08:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720945822
