Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2055332E6A7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762531194; cv=none; b=eeaib2up6GFlB6O/G1En3mTgmvQ1UgER+1idPHAYETzwHAvl+5PQTpnt7U1a3pZRg2KDEET3yDX55Tmnt3m2GXv4LwpFNTh85KoF5SkAEJRVQAHGuMkmm9wgFRET6pkbvMHK/dwR5rGaDwnEDHs1GDqDbS40/e+1d4SlbT3lEqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762531194; c=relaxed/simple;
	bh=ZxILIyrBAHneacNw/eQhNK9tDm0P0CeE6zYY86z02bc=;
	h=To:Subject:From:Message-Id:Date; b=ud/1YFpVx/0aNTq/+VddU8sT5aCQjxTGpgJbZ8YOHAkqD6YclzEis9Y1IsJwMAKFg18eowiBtFh1ehyMTwjsv1/UCOFazCcSt+zuBu87yLT7m3jYVaiTdyhLN5I8QBnxk4xJKnaAmi6D2AZ87Z3bzQBvzraq8nxbvfR3v6jtvws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asPsU0aL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asPsU0aL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF6BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762531193;
	bh=ZxILIyrBAHneacNw/eQhNK9tDm0P0CeE6zYY86z02bc=;
	h=To:Subject:From:Date:From;
	b=asPsU0aL2oXRxC5ce+1vrCujlYhiMpXIiEj+I7IzY2k1gQ0G5BIze+LiS0IrpoKv1
	 Om/1x7MpvdtYP7xdrs89XJ5hZQ+8CLZMebhDpvCocRnjQ1ncz0s317woFRBBCKFLaE
	 Vt4zev1DjAkJQY3eP70LLKdxFtkHi3h43PupM82t1oF5HDJsfqo+vKKysH98LznuSb
	 9h+zUrKOGPuFVAJz5X8E6fO0fdnAuC6AuDJ+63sowIpUbuE2GxWP3rRZdr8y4LtNFg
	 s6GSI4OEUHkHzIfbaXEP1TYJiJ3xX/F4k0KQWZdOaDDrIXXHOModdfqCnZ7KCBoxch
	 VWEbwPojcVJvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ADCCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253119357.11729.7097893897236171726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cfa69e7cff43d2a4ee139446292df18f1c6b3a8ed0dfb8672b5a02b6777bd02
Date: Fri, 07 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762531193
