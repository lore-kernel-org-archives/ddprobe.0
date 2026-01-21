Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F53309EF7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769028234; cv=none; b=lUklAHg5NylHdObfEuLf64SCpHjutkMwDUr+R4R7UfGlMwnJwOfuMCEKWVs4pcW5zuJoFlr+cSl7Usj1kccTmRby5FqlvX82Pbxb6jlmh5ae0u60b0s/ePhvgq+jF467mG0ypR1IHVq02VlykYwVTPkMlPpAsOBW06CtyxiaV7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769028234; c=relaxed/simple;
	bh=th9ZcuJOVAQbreFmzC5SER4mK31bNQVkVUyTr9Un+R0=;
	h=To:Subject:From:Message-Id:Date; b=OpUZyr2291m1Z8mDSSvX4ZReGjVn92CCdt6nGQFrFmP3FU3qCAxb5Is7/1iSo4NMww6RtF7/WtDAr5VqMfim2QrvjZSojdo5YzYnCaAhc2aDmDsODe6PPE4E/K1IRDFyjawcsSSOuonTIYcnvZu5U9vaL23SKtq+zK5vbwLCV7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELR8S6r7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELR8S6r7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C6BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769028233;
	bh=th9ZcuJOVAQbreFmzC5SER4mK31bNQVkVUyTr9Un+R0=;
	h=To:Subject:From:Date:From;
	b=ELR8S6r7WTpLdq55Ii1TZG2dD8rWm7wGTqfjxnw5tO9g2kQ30V0jIOGICfK8teOJv
	 X1VR7D3pXieAcM3lyXP6cOPc8O5TKV+EKD9ptTdEoVgodC/XXARo6KseLjklLrFxcq
	 l3uQlON5Ugi6Pt13vPejaD9/iqm3GGLVBjAL6Jp6PqgA8HVx3UxHJu2notFJnStj8u
	 CbOCWsJYbvYwPOZepDOw/UJ5Y0CSwYsjqc/b0Lu8SBgZz/nPGKWzY9NA175U36+eeu
	 w497z/VxeFRkNLa7+v3oNvRt0SPmPO7KGLPMCLLML+4w4F6E4qtOxveOQdamNvGDOW
	 FxPnEuFylyUng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220CC44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902823359.6074.1131986567340163629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5ee5a194d16ef1d12f6e68aa3d53ebe932585a07a5c985dfeccecff9239e78
Date: Wed, 21 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769028233
