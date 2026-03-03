Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DBF33C1BD
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772541294; cv=none; b=N48c8kYfVcyGrgXY0X6ahlT5xbCzj7yen33ahpQ9ggzOtEg8GImEMuIWJTxYMxm4yylLxsXUJr7YlgsWVuiKZ4Ay5lNa4EnTTE7aZQGMZW/Gu9Hmh8SOi+qKqkvKqYOPwSNZ6xfPusCIP3VMoxaTvRd7UgVMcD9zFlBGUYZHXow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772541294; c=relaxed/simple;
	bh=Hoom6Xo0dELjFVVThzoXYp2MfKu1FIXv0hFCCrry628=;
	h=To:Subject:From:Message-Id:Date; b=aN2bAW6/FABA3P+wNWGhZ7a0sOuLNaaqhPvpqb/qv33JUDjpoDAYWDS50F/oLY/nYNjoUBEIIF7fVqhbCJiQD3AUXMK266EY2FvnJVd6/iqMQHA34QHH64GUIAUlRA12CICo6iIVrr8lBsCpg0jScsXdAUXIKcQlJvuuTzrCNFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8vlEUxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8vlEUxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A39C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772541293;
	bh=Hoom6Xo0dELjFVVThzoXYp2MfKu1FIXv0hFCCrry628=;
	h=To:Subject:From:Date:From;
	b=j8vlEUxNKSYC9De3CI9VJa37EIgoJjCvECgC9+9x/NP/WsTBFEfQqIIzg2+7HOCG5
	 4rXoe+NgdDghMasbdQbWtTXj6nFSy8gO7bzhUTClNhFyxm+TfMSUSTo4U8N49wzWgr
	 3arI8gRj/wc/q4hMLPtqn5KVt0NeqT0flI1nEuah2p9KXlo1nMQBKik5+l/EczkzEl
	 Wiwjw7+N0L4HvnSY2C+K4Cx9bjH64pRBzgKH0uU84OXFlIYE/Do00CCSz+LVzfERis
	 OWBrs2oHxS3g9sLX/CZpAULXcK4v8Z+mBjGR4WnGB5abT9ilMMAZKbMzZMnOeQDkvZ
	 FI1UyxfRgLl1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1B2EC1430
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254129363.19060.16056072312024400677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5a90a6272daf8ba5c281b17817a23a957e6bb50ee8e6c52bf8d07fdb464a98
Date: Tue, 03 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772541293
