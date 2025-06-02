Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258C720E026
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748878794; cv=none; b=VVpze83draK5vcfN0wx+bDuaO6gnPZ6zvxvO0/3aPSfMMVDg0Mxd1w760EMQqhA7Ng3ZV9GmhP1tEWigKHbvHL+3KpFjrEa/tTMANPEHs0jYMOmzcY2bu7ZQU0NPea4Nm5VYNgHiBzHZLCRfzP18knmNdSYOLa5KwFD6QALdqzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748878794; c=relaxed/simple;
	bh=dC3ybhXz7yNYj7w9FDUmwsAEjfCyLrmK9598Rclx6Ak=;
	h=To:Subject:From:Message-Id:Date; b=qQoutgy9mp2SzdJVD2cBSFLLtKdWCzDahmpWHS5tZCMkcsIwZ+wixP2Lq6iG/2PxQaBlMWEYfwUNECWD7jx5EztMLi/f3ui6qvPpuCnaVvfeAhk4lmSzWlt5iLDua3Q2tdNDEyEsWfaVRajOYeOtv4OEq3/sUqZu7aMwOjiDVAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGk0JdxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGk0JdxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D2EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748878793;
	bh=dC3ybhXz7yNYj7w9FDUmwsAEjfCyLrmK9598Rclx6Ak=;
	h=To:Subject:From:Date:From;
	b=rGk0JdxHxKqHYA+UdQz/W7vVTAJpdywMY3xweWdrMa7iDylmmdEyj0Qr6xWKf6hEP
	 8RUnl1mLjAwyBbyuqoplE9e+Bnq6SzLqfFg/ORvr5Kx9IFfEEt6JN3m71ti4uRozUo
	 ZyhFuZAqH+jXIH8rTjDRRQQ0II3ZLQGmUZeAdg4jKg1tWUfzH84ANya3rNo1yGTOSz
	 by5Qwh9IJjWTrQ+gwYnlPya9tdLgDD7lvnigIIzyIR5Le6yqhfyodrdHsRGhiQ/NkW
	 c5sYONL36aluFcnb0tHOr/zTuHeY5xfY3a6Wnz4S4e2NFrKNJggHGnSaYkUPhJyXXU
	 agj/myhp+t80A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90712C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887879358.7618.5594075755470099155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c904d1f10e19f093612c44f42828f200ee5360034bfb2ded4a0723cfc6d62f1c
Date: Mon, 02 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748878793
