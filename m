Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0FD8462
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785111634; cv=none; b=ejI0AAEFyWkujEdOw+0qrPUdl1q8O97k/fHezUbrLwXFYQNpZV8TdB9Ju1jaZDlOVhLhB1YdthArPpx8Ds7Zm2h9dfgRNlv5XEHg4k3YfT2gdWSPybij9B2eBdnh8BM4EIcxp3Ywfg4HQAdtvORmLr2QrcrycDXzW1rxIrxznmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785111634; c=relaxed/simple;
	bh=+Xi0/aAdb3CFh0WBzEfIGlE5u+x6kZnnD8qBbt4slf8=;
	h=To:Subject:From:Message-Id:Date; b=nik070Gy8kPhBLXIKWxtTIiFw18T1kfzZ+CnnmCNEvy3mgMOh3s4OlRdJ+M0mEf94/dw7LkjGVhcMBUQN9JafsI9rcnauuaIHF/fx82D0r6PKsONDeG8kix/sWEQJ1GEI3wZ5s3pXdL4eGqKDvu6RPoijLBqTyR3SYO591kXLls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoQc5+Xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoQc5+Xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF553C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785111633;
	bh=+Xi0/aAdb3CFh0WBzEfIGlE5u+x6kZnnD8qBbt4slf8=;
	h=To:Subject:From:Date:From;
	b=RoQc5+XeAHRvakLVlmsEtZFG2eszDF0AQR1MpLyO4gg/FH7d6hZrbqNzCi3unKEVX
	 54xKeKy0B8a1jV49fNQuSdfDJknNAIbxqsyowGtp9S8G9kgWopqZS0Jdu/Z6ZnCOdE
	 o38SFrTdIYZxt6KCJTOLBYXT7jiwQOakAIKRAaA/a5gQR0+jg1F8YEWP6zJ+OoOQsP
	 +/IC5gzoD60HSZePb6u88T0KnDIy6xa8MBMo+G6FvuBJFywGT1CHnBvIDLIQhlvWPf
	 sQtw3i4s7mdBjSfPx8uBJmFmDJPVbQONnBj4b8QnIs2MJEeel/fm8snDW9VFLefS/4
	 CQkcsMMeScp+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2A5C53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511163368.12513.6854208014794319325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498d8e85eef00ef01cc66cbf9fe938c1e7c2fc02256d219b6b990d49404c02e0
Date: Mon, 27 Jul 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785111633
