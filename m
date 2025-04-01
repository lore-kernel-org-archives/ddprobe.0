Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512831C3C08
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743544794; cv=none; b=D7NElrH35EmfqpzTZszGbTNdHTGdqfd+U41qfmKededoOpVPqwUlXSpw+PSQA/eEpQfPHEW8HcwgrmgPlxiyCLa/IUoJ+TU6k+bMh480CbldyccCnwqq89eklMJO/dr736UU3m/lpX0eFHBIs12Q17pzvrTm02BOW4ckIHtQKyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743544794; c=relaxed/simple;
	bh=zztyrpYzO/HfnU4bujgIiuGOy4veupc/IBRkBD6dLyM=;
	h=To:Subject:From:Message-Id:Date; b=Ca1W0diZhRAq75v3h2PbkLpSeM4dULsXSI+B3nNYlmIaf64Pa667ZN6s25WimcZea/ujJX6vKeJCSeYnWn5z19AzgLk1PVGTb+CqkDUqUlRKQmKJwIAgoiD9tVLPryMiYetqtyvgBCLABaIkzPnOn8ngBknPY/Yt2weMLB0AI2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfa10HNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfa10HNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F2CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743544793;
	bh=zztyrpYzO/HfnU4bujgIiuGOy4veupc/IBRkBD6dLyM=;
	h=To:Subject:From:Date:From;
	b=pfa10HNHTLMj1aUIa2t9Cvuwoum2cHPgiWr85PCe+QEmHl7tSLegfVV1W4AxivYvE
	 FgtmVc13Uu1OnueQgw/qPv19/lKba3Mqtf5NVIxTp59Rfa+A9BjuwFjZJ/nFj58liH
	 DKr5esEOSaBsfXh65bLDR1T8nsUUJS47PcN8do4/l7JqDpquWO7lhC35m/ovtIgli8
	 9iX+4n+pxgi8iLrYLGmzFtD2DISx7pjuL6OE4Sv7Ng330XKvHcu99ehe80P05rF42l
	 9bFm0vyUmo+S4YzW5Y3LVrfZrl2lkYIbLUAm3vXoOIPUL7WH99+tJvl3MUMYgEKBkk
	 XotKnuM7SdFVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A968AC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354479359.1254.15222958526786533255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5668b9156f2a813a652692ad981161bd8ec9295959f6db850dc8a14ed3dee7dc
Date: Tue, 01 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743544793
