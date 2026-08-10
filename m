Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C6D407575
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786373434; cv=none; b=OTqogsFHY7JlL7w4XTFuMIDLIL6EnJUbjdoC+8cL0l9xInYScRZecFelbR/GPYwltYjVpQmaGE3p9bcy1/bZwMgMb5n/obBOzJJhHWxMDnEa1l5/p2y6SThqo0fRx4I6SXMUHIt1rsHXt9nDYa8O4I1H+shuiOXhuBZgrpMQ3Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786373434; c=relaxed/simple;
	bh=HmoFiFb+4c+D1CMlusIklrQuYfoDOQBLTO6wX3eO0EE=;
	h=To:Subject:From:Message-Id:Date; b=VqUie5t75adXpDJgcZy9gAwOJSy6wiT+n/zo43MW8qNR8TomMiTXHMh6zDxFBnaTn5EXqZoIERIWjxRnnDE9E9TyhHlqc91+06EVARJWcBz//iPgxmvaEXaC46eKA227Co5cegdK1Xa8NyERBt41lXg2+aGgCCDOqtdqmMmPeuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fl54colC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fl54colC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1411C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786373433;
	bh=HmoFiFb+4c+D1CMlusIklrQuYfoDOQBLTO6wX3eO0EE=;
	h=To:Subject:From:Date:From;
	b=fl54colCQXclHSKgluXaBLueB0A/D2lOhWlpVSewJh1aRAPV8qW1ke9pyA1qXJtyE
	 hZrzbc+/Mw9altHKDjrkCYyILnvQL03BmHvaDBGfze+3qyQBclSGegmuITByG2rlPD
	 n/wz+IOHh/GMxwsKAkV7MqACnPFsLJk1iMBlr8zwlIlbnoubipDDjcCPTqvw6J4LnD
	 KGS1Dbg6Tm/ITBAHFij5G6XAbKpgfHUEIDiTSd58jWyUmQNdGkk2Wg5MxHsewal0Kz
	 H7k5I8vvx9V7IirEwDb84/7KoZDjGHrKZ6asChQ8FU0/Rpjn3fP3QpncMlqm6eDf8A
	 7iRR9CA0PKRLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE676C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637343370.22323.12259266208535841292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0df8694cbf477735ee03d9e83a0e6e4249c0fb3bd7cd327f0009d5273092f1
Date: Mon, 10 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786373433
