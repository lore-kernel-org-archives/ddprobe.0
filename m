Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200F62F83A0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758800994; cv=none; b=iQTNU/hxa0REbPBwTwXk8OJkYMn27U1Ff9e4PeZw1q4H4otm8+z7sTsrstcJ2AZ16qNyn6MIFo8YSr0NFweLXt9sVA07SnEcRkAcCcPSlo/FeK4C2jpSmxtrJ8pwMdVIOm9livq4IYpECXN4L39nVJ0Bkhxk5gyhzSGlWKcgvEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758800994; c=relaxed/simple;
	bh=zn4dv60qDIepaIyycI2nyBDD0s9dfgLKsMMQeiYeeGE=;
	h=To:Subject:From:Message-Id:Date; b=MdO8Y39Ri86KxluYOrau7J5w55HMyFr9MUD0ZsDmExewd8h1bhfhp+q4KFexXMPrehlqwRCa/Zd8OR4NDKP0ejl1kbUGq/1sYfqtCk4bp67w0Sxautid3jvUJfQ5Mi9G767VLfJiHXgNYIiYETFjTEM1kMcPNQbYLtLWf/OJwM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHUxbmhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHUxbmhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48A6C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758800993;
	bh=zn4dv60qDIepaIyycI2nyBDD0s9dfgLKsMMQeiYeeGE=;
	h=To:Subject:From:Date:From;
	b=eHUxbmhPQc1m6XO/ot5t1aawwkndbhX+1yNkpw6HOlU1myAD7FbBzBJWzGH6g9oom
	 XJzh34aE+HCCAhksyblH2RlmUogC3DtJdOfT23i8UNEa/eld1O+iRwxNSZR0Q0kZR3
	 cd/fjDxm5A6j1AddcL8vElhn9/aUebxkIGa5ORNZagljjW52nuL2UnZga7Pxx48r7D
	 9BgCVDhj9wKJND6m9O3EQR26SnmHIHNzSjlvtgQa+c9f5Xl7XN015/oTX3FSAuCrXk
	 QvafXeq9BGAqnCz0D93dtgm6J9VzgmQtsYkr2/OSjm5eRBgU1P74EA+SaX4uNx/I7J
	 0nPxB9Vfjn/wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96455CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880099358.30512.7668733521133655084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b23b1583daf6c79be4d042d229c0f49d4d0b3cf5820a8491566060cfe35d86c
Date: Thu, 25 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758800993
