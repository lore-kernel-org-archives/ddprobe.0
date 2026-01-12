Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F51355051
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768226034; cv=none; b=qdz7Jh7+2NVOnisUlK6atJW7ZMjL/mj6HpNMaCTHJczz7Mt9/uVcnJy/cYjvUOrmBQ1QsEFuuHYIDd1MiU3rZeWRtVO3w3yoxz7odDEYPZWnVvyehSon0tX6nrL9BCvd1V2L4HYSBFhTkOU5DOzZLrDqxEvsRuHK0/FHpkBJaL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768226034; c=relaxed/simple;
	bh=w2uFi+eg1rEwqsPreJvvaNi/vGpafaUPihFnGXiqzmY=;
	h=To:Subject:From:Message-Id:Date; b=BqhikoPEf7lwxTd0mt2obXwUEaYAwWeqN0/0dWNxg1mvlSrR0P3uJc40Ufy16YDD5KhaYi+qRnfLduEV+F4tFePEoptPJ6XTkz6epgB5khAZ1nZP5kt0AGV7CebwshuYnIf2E86MNDzd92OIL+CQXbJ97EY5rIr6IkWbn1Es56s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGTGqv/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGTGqv/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A42C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768226033;
	bh=w2uFi+eg1rEwqsPreJvvaNi/vGpafaUPihFnGXiqzmY=;
	h=To:Subject:From:Date:From;
	b=XGTGqv/M5n1o7iZyxrs9idPyuegsWJfTkKvxLf6Lxhi/1hlOtu8xWtp6FXxoeDvrc
	 CjH988LcrrsJoN+fcSWYuVj864IjZsB38DMDlfne/eGxmM8lhu0IVW26r0poHve45k
	 BFQ30vgy1pE//AYGJS63wF1vJ2CVS2vWh8j/73U/0YwWvj3AYO1EorsKhUs2FypVlS
	 HakIZehv1gKXfzcZiaMp+dw9n1R/AHJXGSWq9NRTEQRPM/TVPduPs1eGGvyL4y3lxp
	 WK7+PkrroEcmpyRuC4juUCrX7sSGnss0EQPDcpMNTv58Nv7JmRYyb276pYzlAg8iBr
	 +E10T+MDHBcew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D71C9EC90
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822603359.2843.7151206861232362052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d20992c705ad37d813b33a5c54266989bc50b35a0f230a5fa97ce3d608523eb
Date: Mon, 12 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768226033
