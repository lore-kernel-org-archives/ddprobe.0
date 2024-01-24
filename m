Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3EA32919
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706068097; cv=none; b=usmE3a49tN+4mMzOZNDJk1TpNbF8p5v+Bx2aNn+mNbllaeVwgMRQObCznFgrJlBV+ga5gkU2L8CegD0CbIRBIMK2biAguH+crPUyb7MEz1MLrQVeJaSAfDXFcaBjV+4Ju+xcKYW4EIlI0MToPfRFy4qSNaUTBbGXu5cvtvtuofQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706068097; c=relaxed/simple;
	bh=c49fOPSo4oOT0Mk8wBK/cUS2XQn9f3KJw//OlzwDVgk=;
	h=To:Subject:From:Message-Id:Date; b=VObHaCUKk/cHtdasiDBwdhwBvArj4QfEJx45fJu1cjB7xRwQzNMeaFVoLjJnXU6CpboYduItSIC3NfahaSAH+duPYY7siR8qq3RQ8I70SCe4NzKUfv4MdOJwwwlhKOomc1PFlS1kR5BZ0Gcv49VxpjspBeArnOsNUgr6ZT6ObLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVNic5W8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVNic5W8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA5FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706068096;
	bh=c49fOPSo4oOT0Mk8wBK/cUS2XQn9f3KJw//OlzwDVgk=;
	h=To:Subject:From:Date:From;
	b=aVNic5W8lvwNdD3WHn3UBTN5Th7nzr6MnQ2e8hFhRpKvYUTQISUfq1cVm9jOK6Yl4
	 Ew57fnP24Yc1GQUStkG4AF/BVrjKChywtB8JSVs6TIksm4bT/W+IP+j7iCtnzUKYGY
	 IlsLF668TVHwINLa8CcKcPTDnzpb5XLEo7ygJLWQjd1hOK9iaRlEjVICE1vbPvaCB9
	 aoadcOsQPFFwOvLhrKCX0CoKnKZpM57NSE65gEPjnKyyIqp+jAudOpcpdkJ/tQa5WB
	 Qji3WLOuiQ/grMDJOSwTULoKhDWQSlXXGBNR2slFK0Y5EBCORi/4LrSOWOVbIf/MAz
	 RpQKsTdL1kBxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6132AC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170606809636.9419.17532186468460362610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f890b267a5111339d02c943fc2321431e2d9b080e1694885f27deb3e50f8dbf2
Date: Wed, 24 Jan 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706068096
