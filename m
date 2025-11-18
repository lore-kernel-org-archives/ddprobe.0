Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CE52D7DEB
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763431316; cv=none; b=u/g31MERXga0fsx0yYwUz5L7l8Jo1r2eE1sSopN0V9qjN1i8TXnoy1PRUvJpB+1OSzYko/xpxDoCIBbWya2Smu6PjrR9BattMCgKeZK3bLaCpvvdWg/NYvVqOXyqJ0jEhdY3NH99N/oOUrftPQT2rQZRdcFquqICltc6f4hDiqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763431316; c=relaxed/simple;
	bh=aPIiqNzec5idC6C8jd8Bcx5Pta0GMShbJkywMHPgpCA=;
	h=To:Subject:From:Message-Id:Date; b=fEr6zIR1SrfzJg/aplhlPS+gdS+ygwQ4cSmt9wVEqrGEDVdwBUue5Nz0YlX1JvvK/vWYRQi9IrFhydLJSs2AXs9Bi3uQqvE+vgT536eOQnNTKMYM4750ri1xTBqZ4l8evXjeu1VLFkYiZk7I9Hv1o4YUtRQGZkHXwAkSnyswoHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZMRLOzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZMRLOzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 56FBFC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763431314;
	bh=aPIiqNzec5idC6C8jd8Bcx5Pta0GMShbJkywMHPgpCA=;
	h=To:Subject:From:Date:From;
	b=JZMRLOzE3qRifeVfdon27v5xvYiGjEWq1HMQwvEMWklp9WOO1The8sSbTF+FcsUiN
	 MpvZXoMc48gzfa+9b24vBgyIfnPugq6gxKh8FLeSzIla1DbeEFuTz4iJwvS2FvawM5
	 RctgozL4kzz6W82UGZLdfSQtA4RYtVDnDTrzORi2p4fjj3fAO+9Dns4OVhHAa0BlfF
	 Bdoec7/a1aUyKPdDSEGUeDl7stoLfOTDrHHD3NMwkug5YYEBzhOjL/Bs1YJpXh/5WU
	 sY/5ojxRyz0IoWseMFxaLEEexgggVz6QoBJYlMGd24195IN8dD21y9JE+RJbl9VGPp
	 UwcBS48r43agg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90557CEBF61
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343131358.30336.9998887737777054643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34868a628ed8e913e17bcc04a9e67da46ad984725a21b6d17e13821468307f3c
Date: Tue, 18 Nov 2025 02:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763431313
