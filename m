Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB994C6C
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730694954; cv=none; b=HvQviICPKSAuSjXypYzmv+Ow8fifNFwtt5VmenGtwCjojQfTxxU+Pdg81Y/zhGFJLPBmIXM4c5oBqkUyyOZ3cX141EuvJYO1TsBZolhlJOjj1l7MjUuWS5KjSMFIoUtAQf1qndwObGrzl7ou5eKb59LSApUY3azeV2dWp02+rg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730694954; c=relaxed/simple;
	bh=dJdulYnJ2ysxM4auZgbCXy4xSgCq1utxTC7lJsFYst0=;
	h=To:Subject:From:Message-Id:Date; b=qWVB/ouVrC9wPaf9u/Ct4uHg4YWq063Avi0cqBPWAUy9A6SPCiM0A1z39iUjoXrzrVDc0hVt4yOF4BlbsbDn5A6pskK2fToKmHggiTkUZzYAYHvQO7LKT53TNd5bhVde0j14JBxaGM89m6ijd6/uUqbWOb3+nmBzs6vVkqf4h4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rtm7IfX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rtm7IfX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADC6C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730694953;
	bh=dJdulYnJ2ysxM4auZgbCXy4xSgCq1utxTC7lJsFYst0=;
	h=To:Subject:From:Date:From;
	b=Rtm7IfX1Z6UO4Q7M7G2E2L9FGKP8bG/SAsiFkLpOhJKQ7yxZIey4swqQPOartM+lR
	 YSv+gXy28OFNahkvkzIL1fck+vjP+rlRaHuokjxufS3srR45RatOlNymIZxy3nErv0
	 g7loFSp1FlImrkRqZFweO5xEbGeOkiJ1dFREZan/kjN8w4ldm6ntNEG3WxZXParcdZ
	 pUobd/FDUprEvEkWMT7VHcg6c3JPblTXayAly+PPsh/ZVvxrrBb+/0dt1XM8tq1wwz
	 UwN7RCXKioZDel5X1CBRW3d0oGLHMw5T7Wo3en4qk/0TZ/boCi3oLK9siQP/rMRH3u
	 yC6bvRAabGBSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977C2D111A5
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173069495359.16118.18432852871561751580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecef0aee262741076dba3294c9c056954d4b4b0b0126c97521c216b2c7367c9
Date: Mon, 04 Nov 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730694953
