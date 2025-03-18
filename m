Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476B81C28E
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742258394; cv=none; b=s525uLNfDNR4QMfaBEhbLNzHTQXThiaR4KbJbHB1xrrbohJ829D5U1SidS6eUXQ9hhuVSOcXojQnB4oeT7hoAlraijGfaqulcecbAhk/VCUssRV2hTBv050zpqbAjoCNjjXqm85ojKedXjM9wckXQV2jGR/WujdX+xLTxxybqBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742258394; c=relaxed/simple;
	bh=YGYhYXKAh7Z92WKBwUEd9Pyfv5tZcGd+2asuS3CMltc=;
	h=To:Subject:From:Message-Id:Date; b=nMlcp4IM0llqpPpvLCJPQu1xG19XSQ7FCCRd48mZO29FvZifBL8znL14deZFUVCEzVrS28kJE8NXPdzbo49Qqozn4pzq6xENfOj6cnlIvvQLKoR4B+qR0zgmSDrkfJQfxejGBomYz6K1dYoznduHgCyp/I+jVgWAjJNxzNXRE3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmTAgcdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmTAgcdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2ED6C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742258393;
	bh=YGYhYXKAh7Z92WKBwUEd9Pyfv5tZcGd+2asuS3CMltc=;
	h=To:Subject:From:Date:From;
	b=RmTAgcdVDhGipCR3gkWVKu9YudvqnAwHBbIX/PGfKUKqmZDUTcWInld6LR6qqOvGf
	 uMcRdUBDuc9g1yY43qF7uf6HizzDD3sK6rzczfUZ12IKeAw/R0O8LrijoAlIqgNgpN
	 wLlzbhKXuXSxBSW9n0OWxzI33drmE539+bEOw5+OHuy54gZig5j1MsIIJSTLYDCCn1
	 lrj3vT4lE5v245dmuOqMltCFunwKJcLuiiCQw6nOThu97o6x/yUg6sJw4+eDQvmhRq
	 QDXJ8gFaYT+NKCXRBkEDeByBlezbC0O5eGmlefpHxZRBjIBFYD3QQqfNclEQCh8v72
	 lv29a9POvX1CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E27FC28B30
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174225839363.23608.984897407674944775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e0558b36ec0da21713edfe4c2f262489d065f9cc7a735923a8c8745440b262
Date: Tue, 18 Mar 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742258393
