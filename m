Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2500816F824
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729049154; cv=none; b=BN15nyMWsiWnhsly2YlW8YZ0QEtb7n4ruJ+7owzkGMFYHW8gt7QmIK8CfZEmkkG9KOCa1pLJ9Fwu7Kiuh4hw/HlIClNcMSB3bVM7KMhbmCT2D7QxyNXkzaKgERh9pXoHTf21FmsvnZFJk1gJW6MkV53J5hPbGqNNvlOb+JPV3ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729049154; c=relaxed/simple;
	bh=CgLX3/qJBkbAyFjcDV9oCNsFlVxdTuehsvXGAI/3yTQ=;
	h=To:Subject:From:Message-Id:Date; b=ACkDI6ouSvozX3ML6nEKjQLxFDUNTrL9CpEn0lDep4oJahsy8DnijvcJ7DcCX/NYYn5fNiirEwhjpXte/Od8cwHrl1ldLYDiOWzyWmqMk3Wauf2OuP1jD8SHcS7c84LmWQTLBYHaCm/KqIbCoqrGRzxO6Qni0tG8iqQfOs0efvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Acd7wNAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Acd7wNAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA41EC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729049153;
	bh=CgLX3/qJBkbAyFjcDV9oCNsFlVxdTuehsvXGAI/3yTQ=;
	h=To:Subject:From:Date:From;
	b=Acd7wNAv2oRMGd5P/c39eAASAlUX/knDMp6Sy/BliYjsqnkiqRxmgAbwXjoFjGNRz
	 xJAK5qhp5M8M0p4eRU4/ollst0GBkeqe46Mphgl4jadl37dvx2sv7Rv9cPgiOegFRg
	 pvrL/ArC0Illhdyx/jqgKXOhLv7FwITkYtAzqAJqGPRd+YT+XKzjfnxzUw3AilXNSZ
	 RtldNwU0VnLX3uDCCIl0wD9R/dp9zInatGC776JGYW9On0s++QcqWxjE9QOHTvVUTm
	 HQw2ZOi9ZOH0b8nU0rbZE0wDjI8j+P6LhwUSgs4r7mHO42HxrYHqnvk4/7MyOGzwWS
	 4MdLbuEogCpfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9792FD20691
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172904915360.20534.6729467619297959553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341497e00c2c8bd020ffa2e0824c9361b65828a7563c4c8ace19d959cc904a64
Date: Wed, 16 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729049153
