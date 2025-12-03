Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01339308F11
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764785574; cv=none; b=ZadXO4a/sHd2rz2gOS6cbqAHHzlNyq4VMn/1zliCe1wk+M8sBrLSKTrVOPKhALwCmsk4wcWJ2EOdF3RBFJAFcXpt5MBq2anPVM/M9ndqtyzL88oAjv63eFnYqvrj1R5Zp3I9ymFRVZFI2J4dzcDHaiqaSkEozSvMYtNRiLQVP+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764785574; c=relaxed/simple;
	bh=m089bHcgtrMnZwQlXbE3RlSSdIMvgAYcZr8+65mbvKs=;
	h=To:Subject:From:Message-Id:Date; b=aTii4/h72EOHqnRB3H1hdIzy4t7TZoxYMLhx7BIzLHkHBX3KobjASL9bFC/JfufN5gmR4RpozyNTu1lUPzu0+lnmQdL7fzdzcJ9aSiYfSEPDJG8m0ZnmltBNrtqd1Xw67qP/bevL46N7euLUoIUTbZKeomEjdWZ4E5bhZR4z78Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTBsAlHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTBsAlHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E69C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764785573;
	bh=m089bHcgtrMnZwQlXbE3RlSSdIMvgAYcZr8+65mbvKs=;
	h=To:Subject:From:Date:From;
	b=PTBsAlHT/ls6cREX+ooOkS6bkBQV48EEOqqysyM3YoMVOgXtspiNJhNy3+BaT2GN8
	 3aKnF25M6jlsIaOHkBemyNhayF7AnFjr6X6pXAQAvb5s5LEg1uv8/IBe46ydaKHhvu
	 zq23sPFjpOhom2McbEe7Lu9Wzl2c82GJQLesRa6DvqL4z+XmS5EbkDYMgfXcvIzbsC
	 b0fTRBDJ7Xk517Z6GDCAYCsNGV+aj5e9yQuWfFnkzK51rpDhgu19b2ZNIFbfSbgGMB
	 T5lglCz4eh5+2p7JWyGiNx3sNGc6TUvqR8UO4+A2oD0EAnMTEys+UmtaDrNYKqaUvQ
	 3164Q4oB0He/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9521ED1BDC7
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478557360.5681.4939483403081104647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bae60e5d6c25c273eda1bd4c3233111d60e5484b7d1f0f37500fa265aaeb5f6
Date: Wed, 03 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764785573
