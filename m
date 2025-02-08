Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5DC137E
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739040354; cv=none; b=SJ3Gorl7d7QmUU7tKADiG1Bj1sMCF38RmdZulA3wRS8S7+h0kgIxIfsZJ1i/25lDmydrXwrpyK2PjL9c4jB0uOt/+Qkq5xFxJdq1I3NeZVbWWAPWlxiqdAsp/AJCnTTPs66dREybdA+GAWA5K6ajQWX+8RRm2qUI9+RiVAy2+SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739040354; c=relaxed/simple;
	bh=W1oMfZNF+hTIWBmstAGGarhRw4lVySaQTgcUzincccA=;
	h=To:Subject:From:Message-Id:Date; b=tzBc0CenJ6D1vcKZY1XD94ix54lMJb08n8+LUn39obxvFnKlFK1HNEd2SFwJlx3IrMKQguTcq7MLsptBW/gUzyrFg4czibgRdrJmFJxIZKUkxImSk1Sn+cKQ3LPsnDKM6/3nC9SmQqAQGI8vHz3Iiy2Am8i7JNWz6uP66imD1iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1IRmMql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1IRmMql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB6FC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739040353;
	bh=W1oMfZNF+hTIWBmstAGGarhRw4lVySaQTgcUzincccA=;
	h=To:Subject:From:Date:From;
	b=s1IRmMqlFXRNn4JiCrHcSPiotFA+8gZQSBVlE4S4UWOqFQwke4V+TlXz2+HD+volr
	 Z9dCcmJdLV4Z6DtReyEIyUrruLUrSJ0JlwogQPfufz5e53p16NaeIl9RnC4NW8cJrs
	 cAkqMoFTPffVoT4kY4YSZRPWxY0/uP+Uy1NQnaTbp7bggokaCUxcuQwvRt1G8r9peK
	 CShrlbUJcRImG6pq6c3OS3DPbvaQK+w+cYzg0OQzIpZYGqFmKY2ZxVoQ5UEtTshg4R
	 qNvJB5334935edlGnOS/lJt2U0vsyUfVCHBza1O3Sm4I1e86fxtkfxPFnXyK6qbez4
	 Q0KfbkvdiOF9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A99C0219D
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173904035368.23553.14325612566728577352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ebfc950a6e4da010ddb57236cb035ffe1e6a8513224a72d3548144ca9c6a86
Date: Sat, 08 Feb 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739040353
