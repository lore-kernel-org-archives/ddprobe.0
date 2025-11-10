Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064933195EB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762787394; cv=none; b=MjG7bZ6sJXX064tN6AZlK1E4AZUFHl3rY+s3aWKaNRJKMl1moonUkytokr5EvhbmqNWcGG0WgsxAG1qdyYGOysAJbOxItCMFOgvw/VjduM+X2CVAi8bXvJNrNRTFUYUyiTfgRMGPS6vAuMb0Av4fAFoQNgtzrXdkLUiZYA/vtLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762787394; c=relaxed/simple;
	bh=NputPXLJ1daUd4scOlunzoUyRCfdZof8J4lzV9hWEoc=;
	h=To:Subject:From:Message-Id:Date; b=pNHyz2yJvCmcA9s9RnRGy2qdjh4+lDIT7XQOAaDq+IV3pxsih7XlQvMUBdilNgVnRdskV4NORWcJ+kojIucVkOlNbmMKX+yXdRSs9CnYMoG3yXEfrd/TVimtR3lI17PVPjoRwG8LZ1UVzDaqsTY6iNwpjPvimP+TpsuC7MVZtLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egTIh68m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egTIh68m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B6A4C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762787393;
	bh=NputPXLJ1daUd4scOlunzoUyRCfdZof8J4lzV9hWEoc=;
	h=To:Subject:From:Date:From;
	b=egTIh68mcalTVpfPxxR8FsLNvItVGIDHJi0PrIkLa8yDTdi3pMwYq+VzIMmK/MMcv
	 mQ9puhRI6fbcI+ZkhWrPmwvHPWQsoYyEmFUeTmExQPj8sv97QePmqeScS1CKVC0mMK
	 IXcfEr7sbB0Hdbc1fgG7XrXeqqiSoGZHdZRUVnFNSfkBQAMUfCc6nJDD1IV3R/Gv/5
	 pRvtFoENx9NzozT1nAxINHNPQf5oRbFU3GIKjeNFbCYVsPbQvqEsXytMgIJr1NIF7n
	 lZBoI63VUjoWFY/ajJN1RUR6lVrPgX/CdpQZEarIaFs3csYrEVCD/9eJXl/sVrxFvk
	 k4FRYcV91N0NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07FCCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278739357.16979.13311499697449727266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d21cce638cb5ac45938c865b5f7794f85a930fbd09762cc18d42294cf39c2c0
Date: Mon, 10 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762787393
