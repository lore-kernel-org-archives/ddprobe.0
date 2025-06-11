Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0162E610F
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749660594; cv=none; b=TDnLdG5ce2KHO2zod3cWX3qo7rNt3QFjAMCrmbV1FP2bdu5g/GYTfPbjPv1AMRNcyqnV+UIkV3yLON4CRPAl+l/dGPlNbx/rRolVALt9pXDJxbGpBfpZl+EuxHD+ZqULmbrSxTS/lVU2ADhG78+hF2ddhHebUgcgqjnpK9nL3uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749660594; c=relaxed/simple;
	bh=7nF+Q6hdi9RmlAmVVWi0AjPqfmJ/ZJctc7TghNAz0wQ=;
	h=To:Subject:From:Message-Id:Date; b=n+nZ1mR6wwuxfbM2OtQ71l/MzLQtfDNhL+J3g8semVGzXZVwCE1JeOvz+wrrqJzXxm5VZlvZy9HSHGM5IDwqTV42ML19X+fuvlslCR7YsMyi2SmFMppFXhMTr/0MTL3Wc+eFajbCvWDQzM/dBPQ1Ia6q6CQvdbBe7DsuSKwvSK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4fLCTyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4fLCTyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB9CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749660593;
	bh=7nF+Q6hdi9RmlAmVVWi0AjPqfmJ/ZJctc7TghNAz0wQ=;
	h=To:Subject:From:Date:From;
	b=r4fLCTyqUERuTaN8bP2PVZ+spzFFb2eiuxvq48qGQqKhggjuSsysqQocAKc9ER/Rm
	 bohZ7C15hSjWqWXtSaxLNLMm1Ixovsu92qKwyFr84LbCi3ERDwmibNLL7t5GQyKzCA
	 Btvo4uSudsfi3KgHzx7llAg2+DLaQzz3Zq68kMgen+zqZAcbBr83uTF9PmXuGdVmbE
	 tbTbG7BWTx4jmsBjw8W/6ruqPmZPzdKArnrLj3V5Zo0sixptBrIiB/mXpNyYfKMphq
	 uecok83EFzP5NvQxT5yk2MWVjU2Bw5YxxBp5frYHF0R5j/pzwqcAjyoHoNV5lxayce
	 JT76O5eufmiEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9607DC71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966059358.29798.6996357059379088097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946a031a16b8530035d10c5f31cb1b53634e016e11d961fcbddf7c8be9eb0f58
Date: Wed, 11 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749660593
