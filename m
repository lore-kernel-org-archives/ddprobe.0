Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C932F302CDE
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764274373; cv=none; b=M0sO0qqYRfO/cAb4uISv0FPUvJYHwinpv2GrqKvbNrIvHvKF5XovFRGSp/K5eHU2sIYjbOwYBKwWgpVgkIlqzGksEl2gHrg7zcaWnLlLHotMILMktvy+Okw7K/3jEihWcunq7oOy7WppJoE59O+ccseHTFzXxL14gNSnc5bPkxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764274373; c=relaxed/simple;
	bh=3bI2xmtWNqWyswkebYdJij/f7MjoBoavBjAoO7uA4g4=;
	h=To:Subject:From:Message-Id:Date; b=LffCVBVdRbeWkoavv5/R8FBRXqU9NO55YpJd+mt6tp4QYRct/YcYTqzagXpolFECY121cMhSJI8xPgcxn6ONF8jPbufXJERp+rLfQXMmMHTFFlWczbSiZwvkYN8O9l+Mok55cJxIV1RI4QJfWfDzYmOyhYaxik7GLEf3QnOlIdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWlM1mM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWlM1mM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66C5C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764274373;
	bh=3bI2xmtWNqWyswkebYdJij/f7MjoBoavBjAoO7uA4g4=;
	h=To:Subject:From:Date:From;
	b=nWlM1mM4kfQrKbUUm5e2ncbc2fu46rcjx2zCIwdYWGmMI2awBDPa+21meaD67qOnX
	 adOJG0Gr1456dFLddz+Es/f1Kj/JOt8KYb6a2CnL47PRJ2EpIZTiRdRGwWkj5MM7TK
	 ej6+aibJ6VK2LjifCdO4l4DzLmCWYpbOzWVqhwhyGOrrIrj/RoDgs7scHeel0elhxV
	 HrIFL61kC7gx0d9zQtFhkuaITM2Vw3CtcHTXUSdxNBRoKJNNhKA9u9gZN00xcUZuXg
	 tr70jmD7HFT2M9Ax5OmiaDi201WIZftEwhI4Ri4vVUdHAQOrbHhKrLLLqNFcTi5hbD
	 k8PEz9Sy1u/bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986E8D111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427437358.24466.2731818144206096688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d7335264dea34ab592fe1fba5252a1339e1627fcfc071e5e31a4aaee022cf6
Date: Thu, 27 Nov 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764274373
