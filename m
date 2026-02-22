Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD0314F9FB
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771763094; cv=none; b=BqodaYUNEvuZmwSBn0c8gOJz7nP1Mob8aU1wt8/WHl3qDwUojgJqDlr10YpmZN+a7dm9jJQaFDrTMKtPj3mSJ/5PAotUrnOQ+wbK/Ih31bb6vHV7wjXsxHCHlojBF/7GQ2OI7h6ZNmgy1VkmfuSrYmnFDmvEIqmPkqvWmFsJqWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771763094; c=relaxed/simple;
	bh=12DA80y8vJ9G8BWmOnjD88mny7kb8yyNsr2GUzdp6n8=;
	h=To:Subject:From:Message-Id:Date; b=h0gG8IG1N3V2SKCx2LWvLoCLaZtgTA1QIw4Yyhh2zKJaNs9Jhsreqpp5RQ32NyYHsMsCY5T8ll3KEMD+ZxnlFvS4rQoHdk8TU9+CV3zvw/BD2yLit7HIUOl5ZjywUz/LNMK76rLcQKuEdStKRekp3chZ+PUPfRjERW9U24188/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrZ3q1C8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrZ3q1C8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CC0C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771763093;
	bh=12DA80y8vJ9G8BWmOnjD88mny7kb8yyNsr2GUzdp6n8=;
	h=To:Subject:From:Date:From;
	b=BrZ3q1C8M42Rkp+ONAmtdUVOrb0HAsKPwk+GARdaTF96+8BFGE0EJdNCjgkE89h5C
	 BXFLGAuHmHh/4cDGewYlTdK+cLeCq+aQLbqiEx7lDhd0nd6zMf5HZXQbB1wIfNuAPN
	 5KaWXML25IGACHxuIahKhsgvs/GE8VfB1U2+sgwQvZX7yXs6cgEMOVnx4zCTLlGDzt
	 eq8fMszikofIJjEZVr2Zsng3OKSBoRHkazPWCAZzH4CQJpJC5uWBYgoJlycErCboTy
	 WaQ/Wai5U44HFMhgPxSDV4BlJlh3CFZRfPTs5KxgcdStpZvkEqLZsnyXo8Y4iW0GAm
	 Gd95VXmiiJNIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95919C5DF74
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176309357.11350.13895136794827282477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ef1e0cf828a17bafe9e32a68a1fbcbb67085eae7329826afa69fb9ee36689d
Date: Sun, 22 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771763093
