Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E802C40C5D4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785827434; cv=none; b=R3pgG14yT5ZluVdDSwK7N3cI79L0pvLYHHOU83Jivdwd1UhD1t+3k1oxqhvzUeuH9/BQU/YehMLIkkQIOG3uc6pB7jBaXX8Mels7HL3pq5BIukUeKbHY0iKrxwMHNmDwzjBMo1DVmHn6HmIc90Kp1+NvxIIeG3KiVbpj8cJgZ94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785827434; c=relaxed/simple;
	bh=WIJyc80xKmOYXC/tYocoKZAisGYcVA7Xg34/xxSOHwg=;
	h=To:Subject:From:Message-Id:Date; b=H2sObHnraVDNSTfHu0tWUVroU1JydvHEuCusB02O4S17J768fcKlTWcCQp/dF3Z/H7IrlfSR6MQPoJ4M+tztx1W3lWEgHzs4ZikQOQPkiod9UVd6DPgVN4htheZQEcU8fVToEMDhYt+VppM6c2Sl2lZdkct9qxqu3fb7N2n646k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVG/pnl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVG/pnl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C81C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785827433;
	bh=WIJyc80xKmOYXC/tYocoKZAisGYcVA7Xg34/xxSOHwg=;
	h=To:Subject:From:Date:From;
	b=LVG/pnl7eh7kWFGckTEEVWD6xDJA3zeb5rIuyvihNIs5kyLrLvOJDOqAf/5uALkF+
	 QdRxUOchoc8y314DWrQ7ukVEQSEIOnbCK0J0P/nbs76fdq9PU3K99cHhYGP0G96Y2b
	 AO9D1gLxAWMnEvZ6eXk1FyjpDGuYng1QCpP/MDbr+XvUnnIknOx3Fix0ovOmbwLLt/
	 /T0PD+4ywYOJlv2T2GAc64GtFjrdiYrO2fycKksOw0qXXjzuxrSkfJMOlFC8CrqH3r
	 NXqYbcXx8Bn8585dC9xrpF7D4POPnQfgg3MLkyiSfJ4RUKOaNNQsHJfNJtI3uCokw0
	 Bh4Js1wmZLY4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA54C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582743369.9973.4602893078322689179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06beeced5ec03d108df5464d8af95d21d6b07ef4ac6dbfc0cc734e5185bc78b
Date: Tue, 04 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785827433
