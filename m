Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3700B1C84A8
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751175594; cv=none; b=Wk7+Q2O5mfR+wcH7drx28n7vdIhhHk7qBp0gk+7/J5hCsei6VLjzW+bHlZRf36168V0yv3LTgPRm76bGa0yTd7upf2ZSrLr3LDtWID6cg4SzKV8mHZENBoTdXYHaZRiEh5ZodOuEqjNlmXwg00OnJxUY5lE2gYZ616isBPvE40o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751175594; c=relaxed/simple;
	bh=M4ohfDF15Hyw4XgWNEscFQWSG6Sx89jRwz/P4Teeu5Q=;
	h=To:Subject:From:Message-Id:Date; b=gNE/VsNEYeszV5hQYiimFy5HzF8AM39fHH/nl39FH4s00oe8VgrnRZIbpMLTGAh2w9D7mlpUkMm0+Al8nmHej+qLVd6SCYXW55ocQAYWZVaE6TEWozVpghd38zK7+l+jN8FObOs7T1oi+o0mE8Ge1050oZpCnDDqMsDJ6eQgTS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9iiP/T5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9iiP/T5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1833C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751175593;
	bh=M4ohfDF15Hyw4XgWNEscFQWSG6Sx89jRwz/P4Teeu5Q=;
	h=To:Subject:From:Date:From;
	b=R9iiP/T5UDnHlfiZqA152pzqmQ2kzHxCsPfQN9MduNdFd63Oq0ld/hbM/cutt3ZWm
	 jv1bzR9JPslKtq+Xazb683EBPbURsGfd7JnRH3K8GdpcgBOdm1vff94nOSCXChIC0X
	 JaqYUZUoCheM6LLuwtADrpL3XNeqiFl3K8FQiKVctPDN5GIdrjQejGjvClQoC9kDey
	 eu5qx2uJOcCbRtfCK4vmiT9yqAfq8uDs2RH257aAdNEKED9OSrYNBU8jbfqisruacw
	 pcjdlu9xX+I0YBO+4JrZ2Ot6XmM4VUyh3s1C9rF7/pUWh9+KzE3IKv+Urg8akKMqlb
	 HAqgxucZ30EpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91182C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117559357.8988.10778967554375368842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8888240f2d7b4ce0a1ec3c732929def1c878b4168d4b4c6c4e697e5e91536816
Date: Sun, 29 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751175593
