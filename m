Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0B11487E9
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764228774; cv=none; b=eg+DDe1mYx1s1g3wO/WLE5PtAGio22ukzb6t5ZvjcWpPCCsFwnNE3F57+w32z9iZwMlsttYeDgxzk0rQFfIdVXyjumcRE7zkjtV0KD+0RthwnCuM2FoTEN5SKzKGi/ofZ4er75fkwt9JWcrLz3taxt9MI56yWMnrAco31SKtIUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764228774; c=relaxed/simple;
	bh=L3fo9nzFl677R10vKusvtJpcvGwbvFAZKjlNUrJkCIo=;
	h=To:Subject:From:Message-Id:Date; b=duXoXMWPl8kezFWSObGvaDqZEBwTHOtHnO88cPeaBEoA4WyTOPLLfJgMwLXlpLvvV1Xx81d5t/e9o+XDHMeG2ToB/K45QXoRNdi9CcoeiT2TBrh/NVoKKoHoUSSCCNBRm0E9x9pL/WJPVOjdmOC6PTYWDGxdGZuQd8mCznchP70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8xY6YjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8xY6YjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9601C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764228773;
	bh=L3fo9nzFl677R10vKusvtJpcvGwbvFAZKjlNUrJkCIo=;
	h=To:Subject:From:Date:From;
	b=Z8xY6YjSu11LX8FjCcIikK47RhTVwVL2WNyy7DZ2MAOBoYAtBg7lzyeES/0LqAftv
	 KZ5ds2qZRM7zUjC9Sq+7UI/39FQEY+o1Sa+dT128fneghXk+u7L9iHqvMIsx0t5K5Z
	 vshzv+43/WDauvV22Pp8fhPblugbHF8wbFBPRWqVbHy8OxkNPMrOQ0QUh8ZOaxd/43
	 CVJBoXq7HpSmkPph3kivJT1KEFS+PjtkVMzc5EF8xUn+T6zOOKFZmHwlAb+9vRoaRD
	 q6X2vlEfZpEpS5lUZlVZV3/oHV/qdjIGBw283sO+JkkHv8beWX6oH5yKSsBObog9X/
	 7dlFSFEWhiFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BADDD11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422877362.27903.3089006951211342573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e6555ed86c1e5dede770699cd246bd04b0c89ab582a23cf0b983482972baf2
Date: Thu, 27 Nov 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764228773
