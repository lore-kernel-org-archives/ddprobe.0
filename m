Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F2E2139CE
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765373574; cv=none; b=I1MUOWRF4hV/nnLeNbIOZNlflxNDUrx+7IDZf/2Ke3ugmaiht459VMsrPSC+mEAAAKgt5i+yPZC7zjr5Z2Y1LLx+L347huzbKWY4AgdC7SZLMpi1WXPQ+FF5RH5hYKXxoU3l+2wKD4Dpg0+VbKuRsGYxw0uFrDMWM5qManDzxRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765373574; c=relaxed/simple;
	bh=mcN4YYB0BfqK5LFRzlSKylHN6jKIwIOIxLQ60nKXkgM=;
	h=To:Subject:From:Message-Id:Date; b=OD44IQjvli8+P6aAPXLE40Y7ulnZILku2W7ISWP9tIvP16saKX8+iWfbHkJjh08qB3q9NjKEX2QpvUsmxV8DVUY0W4A56k6hpkFSNI+bPM4PyTYX3dIbAL6CX9E4YByCUTydqOvHvaoCf8MOX1xiBLGaBZmugjll7My35ZgO9dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4Fqip2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4Fqip2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBED1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765373573;
	bh=mcN4YYB0BfqK5LFRzlSKylHN6jKIwIOIxLQ60nKXkgM=;
	h=To:Subject:From:Date:From;
	b=X4Fqip2oHt39NB6PGWzcKrMuzDZXvVkUHEAtaZQIJ6V2MVcVnSKmtrVy6siuKHk4v
	 KTDRiBjk1zDNyUZmoNc78Ker7Y0t1TLP6L5mda17S45xZxD+9gxCoDHQGRrtPWm63j
	 oSJzS+b3owf9y2haLsqlymSyU2ISM8ShU2lNK4uiUnZX3BIu6/Q0o7KAp/Sqp6Ksmt
	 aWiKkJUS4qVCGVkP72ytACVM8ca+kQv2eBwkHY/2TKLJZe1ghJaSnoqoTzlXJfnnKk
	 volJTLeSj6CYOd7uQchvB0rGKBtXc51ImlG3W4jR/JFjT2tNNfRZ+IZ4xpZa/r3o4U
	 pLV2AEDG0vLHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CACD3C902
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537357359.29063.4979600909975053479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1e81cf5444057de150f130dedd07724713421f65ebc3a3eac305997147a8a7
Date: Wed, 10 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765373573
