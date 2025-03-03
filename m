Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACB7215079
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741016934; cv=none; b=aTH7Bl37xnDr4l8yaHLuTqfbn4UjDNzKcPPmgf1suSyZciVC3mrT3UY7D8IItYZkhPb9qUpEdqvljkZIzb56V3FU5ZaQuWOJ9dfAI7eQasKspp1vKR3Qu100qJ81K/5jGA0n7g2DqdqWOnb7zAUJq2kQMlk1FrkNNdP5BkeEKpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741016934; c=relaxed/simple;
	bh=a5Rku7iNfL/bjWEh5pr4l6+aUJf8Je717B52ZlT4fXk=;
	h=To:Subject:From:Message-Id:Date; b=hSJuOkL8vzOuEElS+b6UINfRX3n0zy6S/e5408omI4AgPWKDnfyftgAgnGL0UgFNCrV1VHLDC3HBfw/f4yI0LbBzegIwWw6jU8iv9h0VW9LbHLbzZwBf5VSz32iQ47LbE2KlRBpo07YAn8iFjoqKH0vgMZzDrHVYvmDDm+pA2rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2Q5I48E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2Q5I48E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16B6C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741016933;
	bh=a5Rku7iNfL/bjWEh5pr4l6+aUJf8Je717B52ZlT4fXk=;
	h=To:Subject:From:Date:From;
	b=k2Q5I48EU19KNhhzTn9d+MMF8axjKBvBU6GsR+6jSozDsAo+wKGw+ctUYdpJvLdAX
	 dtYvMR+t0J+oEkA1sGa83e1yABcTCvFPPcWoFM6g6OTEdLF8PdbugzbKay/hha+TGf
	 hJgi70Ifou6efj7KiskWk5yKj4QrFR6csOb1hHs4IEsjowD7xIlurwqnLtjoC2SGOA
	 Y27TZA5796pOP1RzCPu1w4yBzDNue/MWUR/yMafykKiQqeU/OYpOSMQT0GgqeYCyFr
	 v8gflanOKD8orm4mXliXliUqsA1XVzsXvIsoo4Dmgpn8DQDDK+krptLE0XEf6SSpaH
	 MvRnsV9IdeQYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98250C282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174101693360.31743.3183966338548454595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eab78833b1cbaacac565fcbb6898451cfa7dcf246ec09458a7fa2c3464e552a
Date: Mon, 03 Mar 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741016933
