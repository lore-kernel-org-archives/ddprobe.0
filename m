Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2441222A4E9
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760775594; cv=none; b=pqw0eWAJFJDMsyiY+SLXWHSUCosJqITQHJv1Lzpsi/iowa/LnHx3uVngZc1t2+TnCdYxKg0xUPuSDuT4D2feCiTJkzloc0mGsdNgsdJh4XcmtPXMoCi2BPpQXtMbnd1I288X5tfF6RwYWWzsDfaLktwbJ1jhNJPBH7aTSdzIJ+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760775594; c=relaxed/simple;
	bh=ka6RTs3qwdbUW2PC/uWOecjMTlVdbMzKuHdRL5rcJ/g=;
	h=To:Subject:From:Message-Id:Date; b=D9XBDG6eL+0OxXMuX0CbLBnJCBSXIi82ddvToldlGMWHJC7liQ0EGX0E+0RSVVHRXvAbxFJ01c5YXWaUXTVwkklXAiQy/TZiMACcgqnlHw5x58cZ11MmckrsnpIJw0F+Rs5/tVsPNDRH9Sh6287AKfqbTXdsnckfSaUzNbIgm+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzEXSTS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzEXSTS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCCEC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760775593;
	bh=ka6RTs3qwdbUW2PC/uWOecjMTlVdbMzKuHdRL5rcJ/g=;
	h=To:Subject:From:Date:From;
	b=UzEXSTS3/2pFwlqeYdnhDzCdF6FZNxomyto14SmGr8JEP7v8QNs4OmT9TFfSL8E10
	 hdQfFPdHTuDWQqE+fFS8DFtT0rn6dWJhCeAOvCViSW+YFZfX3EBY+k3WdDzbzv5bHA
	 cLZK9cNog6DjGrI08d8xYMu1znN3WxDoq3uIIAqrvzr2OnZDYMIb3Xbq6cmGXgK4e4
	 GB3X/2vqYGTZ/xwDkornAgRnnh3L1+pM8Qz1he4ThpSxo0FP6+E4bH2tSMwux12Jh1
	 TyV8wBQgZK3OM+Wco7s5lLk4nAij2YEe2gYGEZ6kWrtTUvDFIDUm7lik4CeO4yk/YA
	 +ygiQk1aEmZ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98312CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077559358.27472.16185963054422473591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f00306447922aa5303a26069b7239700f824338a68471db673697fcece1435c
Date: Sat, 18 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760775593
