Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4843C3A16A1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784198914; cv=none; b=KrI64zP0IBgQma1ficU7D4wgsaeqKWVcd1xaOp4bM4PKhPWNr+rxqWVvdHgBVUHfgLf67wYUMHIkNemHGTLjTQ0OtFqGEmYhF/hqCSDlXqznMrTMA8RrsBtjpClmIVJ5gMx1xRmcZceCU1Ifn16cIWfKUsJh0XcJQS5h7JWLhsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784198914; c=relaxed/simple;
	bh=TMQ3ukcuvqA8eYGr4mmL+eJeLFOWKizaf9LiNcKfsrA=;
	h=To:Subject:From:Message-Id:Date; b=TcJf4bJf00SUTJPYnkZBZXJ+dm5ouZgsu5JZJ9YlJGRKdg18Kr/kfldU6yYbUjMdQl/lqe3TyA9nDWMiDlVyB4hry6e6S9xDHq0fbdOvktOr3zNCFddqfw+MhVwWCQr6oR8MhSL0MTRCeTDbsCsjYz3N2nNZHAJupRNabiE5qMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orDpbf1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orDpbf1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC778C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784198913;
	bh=TMQ3ukcuvqA8eYGr4mmL+eJeLFOWKizaf9LiNcKfsrA=;
	h=To:Subject:From:Date:From;
	b=orDpbf1er8WIzFObCflP1w4dkswa5qoT3bC1SnM+0ORPnsxkYR3sYD2a9xslPW/a6
	 viKvaGJoWrm+95zSdbwHRyVGg6PIo5kT0XFaEs/EI7nAnYXXL2ZCCIHsOXSD14ddRn
	 3cmTHHxTov1xXgojiq0Wu8KjodWtnnXf4Ai8jRg8faKVF4hJpIsEFwQ/XwXi90BWA7
	 jEerfItIntXo04wpvX+XOh8dJcjwJSxWt/o/mTQzL+DHpj5uD0Eyf9Y60me+wH17BT
	 uRPgB13zb/TcAX6ljYeGNlVZpqsI8kup0VqvEhG2pZzrcf1LqE5iHEMtok8wEVkX4F
	 MkXQ3qfZLgjsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AE1C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419891368.14080.2123953463563627605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357fe13645975c47dec477a7728380bebbbaa7c3ed9f6dd42429c3f7dec05a3f
Date: Thu, 16 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784198913
