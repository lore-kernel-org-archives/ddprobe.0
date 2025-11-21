Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37484334692
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763724714; cv=none; b=oU2XPC04KNKhumPq7woNkqyvC5ZVel8/6VqbwiPvy/ZjnJhBX6e1JUXA7OYeBMAh69Anj332T4Fh5W8gb/JRmMVKBKT+YHv4T5q1gd76IKU8Vfx2UmaZp8LYLVl6TbXIeVOGtCsFE5WfTCQShaXfVPNOTGSE9HAzqIarI2NbYio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763724714; c=relaxed/simple;
	bh=PgfGwlWQxLwL05zf1UrxmiV2aNZqWaxOjNqAeStYY7Q=;
	h=To:Subject:From:Message-Id:Date; b=ofteYEQdOfx5kI7G2ETYsn3qCJ4VjBM8+8UKpUyjjO8lilhww9YrqyS+xmC0elZ+S/1u95e56cyWA0jykgkIN4VVuMrm7qOXS15BxqBT6j/73p6Wlx5kOAavrguwZdmpLJegGPh4+QrQ5oFNobJsOsvzez91VoHy+MKKzIcwScg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJnbxPF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJnbxPF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4120C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763724713;
	bh=PgfGwlWQxLwL05zf1UrxmiV2aNZqWaxOjNqAeStYY7Q=;
	h=To:Subject:From:Date:From;
	b=mJnbxPF+sgWU9hNWcdm5FM78u9FbkaFZ8ImWC7ctkFBv9rQmpAdLAYYKqn9eZuqL7
	 ZMRsc7qRp86/jkw+XxwnrWtQCpsX1l7H9ZoeRrYoU8N/glDflsKYAvJcQiI6dJcSAB
	 3vcshcXmrcAQQ492CwTIMFKrFdLEe3X5zPSvFYPOCA3wiuuhZdu1XwW+/i2U0SdghA
	 Rp+pujSRHX9zCFZOLF8mzGxLpzsiXdka9FASsE7t2lNESCm+R23yKyLkpRoxlv93kI
	 zfGFu5XSTnriOsDUIsLqeyTxB6b6RZjtxHBpu8STP2K8mG7QOEHHV6z8IKFb8wRWKA
	 i/2EsgRaHctpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9084BCFC263
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372471358.29095.14383249513036514422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dcdd7a46e774e9e2414a94b07d571c3951344c4cb8f2b76b6ebc48ee5c46a3c
Date: Fri, 21 Nov 2025 11:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763724713
