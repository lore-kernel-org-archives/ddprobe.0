Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42623178CC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719492863; cv=none; b=iv+/CVuRN9hs3yueeiKP+ZJU4NgvFuD4xzEcsTNNLS7cgtkIpotVEnV6YgVfO7yPZslUgHaz9PngXD/aWbvfoETBASA7uqrHcK9xhSJEKZwfxSDoWkL06N+PGa4WlhVWbEE1cDo8eSsnpoPsP/Ms0Uc+jmGwBhvvhpYDEOJ1in8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719492863; c=relaxed/simple;
	bh=lCjjGDHp+4RZCPsLdjI3z43ppEMBOJxVd11pbAMNagA=;
	h=To:Subject:From:Message-Id:Date; b=r6903th5Uv9ZCdHcXPyO6HVQRanMj5PXd3E2y+Ik89L0bhPXme93ARrnhDxXBMR6opKvWFh0VcJYm9rtmFfFiKpRsd+wRZacjCNAV1JMdBusY8VTBgA972Sd3Diz9bPJMXD+Sdeb+I1obtm0cHZJXan3OQNkGAWAvoy5H+dhJY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPkzL4fN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPkzL4fN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E11C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719492862;
	bh=lCjjGDHp+4RZCPsLdjI3z43ppEMBOJxVd11pbAMNagA=;
	h=To:Subject:From:Date:From;
	b=jPkzL4fNxl9XaGCmTEY6O/xEFJ6ZRMJQVoAB3iWYb/fWh1U5IGzXZrzYYdOsPh3gf
	 J8HeCzNoEq2ilqUw8OPSP6aWPFzHRwVGwpKhDV2L8Qr5noLYm6/gVsNh2EvePvneMG
	 unP0V3u+RXSnBK/4VbiK+17yhc8q53TcZhRkwBOhTZ4FMxEQ+yfPDxCAbpUiSYBjfh
	 J+G54ZNBqvLhAAPnCEc0Wb5dk5KB/qLHUe7AUiC3lS1Amun0ky2AnYpnNeTvaSxsH+
	 WXfIi4WLuy1m6v30nwfw8fazSPdIZeZrtoKSd69hHsfLPaSWUbKuCVeFVZHXoOq5kB
	 BwZYb50ymgEQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE75AC3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949286277.32758.17394993547257578691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9a0a8c585aaf8e33353108177aa3621f2176838e9fdacbf3883a363b62b19d
Date: Thu, 27 Jun 2024 12:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719492862
