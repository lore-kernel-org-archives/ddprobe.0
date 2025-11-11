Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C1346B5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762903794; cv=none; b=phNl1bMdv2pAIOBPV0BBMZ1ETU8k5EBhGXDNYnfP66d31m5rnn+h/QuODIVo8JdGYP2/VdCOu1HZhcN+8ruYMC0BM+e+Ylp8WaBPs85IqBl1rOjMpDECwU8gjtc4oNELdJfiz9f0kqiqEdlyYN+GzjoBvdSV2lAhAA9kPb/Xx98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762903794; c=relaxed/simple;
	bh=KGhwRhMVFjFJMSaE2pb0iaFVn/PGNBpiz4NDLmwfSXg=;
	h=To:Subject:From:Message-Id:Date; b=IU668idFqMsZV2lu8kiHGkWEkCqdxcNTrx5GBTMGdV50RRZ89oyxy9QTreVtT1aOmZETDedeKhZVbWohF+3O3RYRtN3HUT7WS8r4uN2ycZgPTKTiJb3YebPetuKkTL068GsMYEPkHdAimZpYxsRUHLiQNkYojHhceJfChsQ6pXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sv0FuFAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sv0FuFAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B3C116D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762903793;
	bh=KGhwRhMVFjFJMSaE2pb0iaFVn/PGNBpiz4NDLmwfSXg=;
	h=To:Subject:From:Date:From;
	b=Sv0FuFAhYPe2kFeQWA8saVFkcXM2BBWCxDruME5x5F7X2qaKjtjbqSN2umnQTgLJ3
	 mA55yDHS5rrkWF1+2KpIfDQH2hk1StKrbuEhdjxbnAWNBozooOhtZONAbQWFYDLweU
	 3X+qnBBB8ppHL5o5B1ygIhmJHKmV56WbxrkM56dH8Q6UduDrkRbM6niizlt3tYNonr
	 aObbboAHt5mNMjqzyoUMVlj9DsDq9p+uPGd3nIMZAM6+Ljz7xLXHvqj3QOS+b88H5Y
	 DNKW88NOhd16YXmZv/nyX+LKNAaoAwX1C1v6nZ8oU/Njpv19WrwdbMHaKbDltDwb4X
	 JCUprO3C8j1kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9541CCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290379360.30101.4441497390574857989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2cf47ce0d83946a536741268cdcb5dc93623e2ad7716c42040a3f22799a440d
Date: Tue, 11 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762903793
