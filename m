Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3F83C6A35
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774869894; cv=none; b=PsUpKidRenGWfImIn4jVKq9sxC+Qjj1M0xsfiB310PZwntZDdsGC741MUgKMz8EHQrc0M+puqUE9KKcVcnLca1CdnIfKo4t9hJ6WfsEXapduVZNSJz2UKgBXSRtHpYr1GJPq5uoOe29So9A6DPagJSeH7jT32OhMJr4f21WofCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774869894; c=relaxed/simple;
	bh=I070+sstqmi1gdi5Hdjazggi12KIpmezjLl/h47sz80=;
	h=To:Subject:From:Message-Id:Date; b=aX/tYb/3lcPlKugpwjcstAXDq+GcnUcJhTRfTxzbfQIznV6tNTQJTj0rNbUUCBH8g9QmH5XpuOFtZZeExlErIe1G5ZGLMwa5xjV3K8MoG3izTLj/hKwS5nMKef2T0erP54hJsN04cIqiV+TZlM2TjbILMumYl08Ln/mNSByYGdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UE78Ry/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UE78Ry/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F46C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774869893;
	bh=I070+sstqmi1gdi5Hdjazggi12KIpmezjLl/h47sz80=;
	h=To:Subject:From:Date:From;
	b=UE78Ry/I2ignKjEJ3yoFzJfTX9pLqk9xiVrSiGIYk97E85TfZx+uNGaKtZYPiMDQ0
	 tNXUrDI2zcmWanqs/Zc4xTThsCFykSOTaiB7ZNUzTk/LaqNf2v49AKG6vu9ry9mz45
	 maDsxp9320FYpqVjxrr/k0ozmbYn+DefF4CnVvTLW9QF1XgcvdLRi4SfXyD5Vk4kNB
	 x/Ai6+skiXIAAl0cz3+Km6DfiUF7P1XvInUMV7ux8Ixq6ULAPohW7s4EK8txW/lglI
	 IeLvJWfPsdHtrQJVFHjmwhoFe048jqsUZN7W8SCvQTMSw0Ro1Lg9TGAmIJ1BMpbwYo
	 PCyH0svAjK8Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9338910D14A4
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486989359.12217.14289060565093795701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9259c75e2d02252698fe4b382e5438baf5404062f0e8246131afb07cc0225d
Date: Mon, 30 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774869893
