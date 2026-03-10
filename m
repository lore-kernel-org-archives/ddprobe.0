Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D5D313E32
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773141894; cv=none; b=lEPgSTERZAesE+vFNwRJPM45jt2nD9Ds7NpDNySYYW0JlWgwI7IjGE/Nn9rCo2W5KCiYX6vVwy8jp4CJ9lk/K/naAX6lPvAdNFvn+GLQXWiBlrD4NV60cUT8qucI+20DK4neAYNS5nqzParD2Lz8qPdKdU/2/8gougrBIfGhurI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773141894; c=relaxed/simple;
	bh=gLn3HLgAZ/80IcW4nnXlMrqm/4zo/6u8uc1Y7HX39QY=;
	h=To:Subject:From:Message-Id:Date; b=qt3AgC3btyAYg9jAt1UmEGWQjHK0UQPyLRj1JgoCnWk3RI889ExjjHKwJ2p0x4cKFVq/UVuLOIZPOuDnwxEkqa/qB0f33Rw32kHJRm9NQ7Y/Ska7q4LmyV901LcNKucxscKoO8fzZs0yBEtfCELgdPsjpx9ktEp5qzb6YxARXPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1uch+fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1uch+fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35F4C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773141893;
	bh=gLn3HLgAZ/80IcW4nnXlMrqm/4zo/6u8uc1Y7HX39QY=;
	h=To:Subject:From:Date:From;
	b=F1uch+fsQ7W0iGYe/sy5pPMmvqCCcPKvQGaKzU/Px/U/IUnmBSEZeYStPVbOomd5X
	 BVEmxaSvuZd7XPhNkDZ4fNUyNcZP62KyUZKGom/ssUl8XlvXGtAqVY5DBLhs4u2qgI
	 U3cse913d1bt4cpEGK+q3yqfu9eZte5OyJxsne/v0/bAnoc2kfe0npgh9T5Zd/iklz
	 QvoKCWx80BcZ44xb/AqND1MHL7fq5d7skI+UYXMF7fc6ik5RzsiIcYxjpbj1rdfKwg
	 hIl3Xn33w/xp1bn4bC+4y1jkP61jHMHyx8YtQ3iMkcOC1XlShME8Q0mlS6lfh8XNUR
	 Wx38ANB9Q7YHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9316AEB104A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314189357.12335.14583950756179174598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2fd8cd93b0fa63aeda7fbd882bca60399cec7b6b921c983f9f902d0b54edaed
Date: Tue, 10 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773141893
