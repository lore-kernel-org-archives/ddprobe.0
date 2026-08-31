Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F853672AA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788142834; cv=none; b=nPRL2hCiDBuXQJYi57HWPfbhGsxYtjaTARFIDHzn2Nr3gyLU0UEieX41QgPLFM4Qthcw2q86l/CQhi3s5Tnfugt9SH2WSwmC+jveDtvR6pzq0u1/ekoF6RSB7F84BJVNYHvLLlnDdqljyYKYzHjAtA9ve7dwy1+RXjrHbrJWb0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788142834; c=relaxed/simple;
	bh=1I7W+6yyOe1cnY2MpFxks6sTe/wcpk8Q3g63mXMGXvw=;
	h=To:Subject:From:Message-Id:Date; b=L419+KENf5fj1MBAhJKe8eQfWTDHT+OBZKkVvrURA6eP3PN4GU7xEH6qm3rQVmbKenG5QXmo1GXmv12NoIeDE0ItQQ+9jyZNQtoS2Fw1SgW+a/gt1Zi0kvQo2nhM6jpPd0XPgf7XCWTqUxTwy5N8xyUTQwy1EY/2aArjqBaSzoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRWU4Ktw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRWU4Ktw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C6AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788142833;
	bh=1I7W+6yyOe1cnY2MpFxks6sTe/wcpk8Q3g63mXMGXvw=;
	h=To:Subject:From:Date:From;
	b=bRWU4Ktwh9gVEnMdnOF0aDMM+DDMZW2kr2MeEQWLo8MPFvUmJSbM2E4SAN3TRKvmZ
	 oxx5kNtuMbJXGeVXxAlwhhzEJ53ONufx6I9aqZP9R5l2bzLXGXd4eGyWI/drlWMPQP
	 AElS0QaX1josAibu96I+W0bhdaNSzdbxjzSfsf3Z3w11QCp92A08k2VQ6KAmaXK3WQ
	 QgsdyNP9TwKzPP50Vdd0rJ5ZiPK93r/J7xksOUqcl8dAvL3aRionr09qtpPdZB7B36
	 5ZynfxvAp9DynZBGhvsxuT6HatCdVvZlPKRowzgEtgYHr5mherM87Z9chBm5vmFB+X
	 H/QsVkwF/6WNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C3DC61DE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814283368.7462.14245468974434026411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039c394215c514c7ca06d28ecf4a2f4be9660e06165c9b9baae8e7f63fe3165e
Date: Mon, 31 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788142833
