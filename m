Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112561F4181
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773037494; cv=none; b=eMNBFdsY7XJmC4TSxUFDlZzMSoBZY3b1GjTI+EyP0both893BOd6QLMIG1uXI7u2b2cg8dW8XhncogYZxI8wthxv84So1Ku+G34qBndaTA7ZciOjYDr4ehim3Oz5fXXVb1FkUUixRDNYYn1yFWfGOldUYFjfZjrRG8qi5m0ozYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773037494; c=relaxed/simple;
	bh=+O7VWTMcE+xPLc6EIHVTVZz2q8ojps3BpiZLOm+OqNA=;
	h=To:Subject:From:Message-Id:Date; b=hQwCCICbD8OLMQStX9pXcylkFc7QT0tXSUthNaOF/b5l61YEw945VletmE7rs5M6REYT5eMOnqy6imbLZ4A0OZfRRmUPBT9D9JbYIyv6MvHnG1RsDecOxkukwzSl8CmlaigsdNL/NvBF2j2LTw6leb4Oe38UwAN62AH/tY5JHRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMREeTTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMREeTTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA538C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773037493;
	bh=+O7VWTMcE+xPLc6EIHVTVZz2q8ojps3BpiZLOm+OqNA=;
	h=To:Subject:From:Date:From;
	b=LMREeTTiXiveobZSus2qEWO1kJUUKYpVL7Jm5nzJn+cJdX5KQQv77mklB9sjCF61g
	 5PW5YdztrsLqK3Wv1rzGGqkdo69SZxoAv7PJNm6f6DnNRiiHnmoxC2MPSq/fq6TRmu
	 XzlFKwX7RTrd4g7ySGjOSpFfP3Du4KJafycarVE9XnYdNrxkm0GxDY73MGF4xm6fMA
	 /kgws8FaH8Rw0XG/Sb+sjVdepixbTc3IOJF7/PRSJeYBkRvijBpmSMvwM2Cxef6kgc
	 hqVGephcBeSz/HbEItTJbjDcStOl7bG/y5O7YADTI/h/ix5gNoHBm4hNxp3YPFsexJ
	 ewfM8UFmAG8Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BECEF36E4
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303749358.28814.7856173106121501810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549cd9aa43411647011a4a01729ffe46f4cffc06c4edb34598e91cc90deea912
Date: Mon, 09 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773037493
