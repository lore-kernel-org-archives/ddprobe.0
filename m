Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487F3368D42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781697394; cv=none; b=uDf5T3K18YW/AKa2A9A37yXGTKFBmwzGA0/K1E6g/E0LoKuz3JKQp+1dvGjd0VOy0e0EVo5VIrx5NcwmwwCSZ2bVgjdaowxHY9ONVcO0QjUi3XmtSyRfm2PsedIm8WK2orlGY9F5/yi32uHGBOFt0xv/wJFUzVndZMf92NLU+6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781697394; c=relaxed/simple;
	bh=zsI3eyu7fWwsrgkb1sZQ6aXSVhP+tfcE85jk/wIZtd0=;
	h=To:Subject:From:Message-Id:Date; b=kJZ3gSPtdtqvvl+LdFUTDNE3v0wEmcd1ahxRvmDCrC0UlXabkAw6IMVTPrlHNxvqTOwfnDkcH/6jRfdQkG0G/JJHladJNr2pND/BBUh9PWrWhPyy2Paen1gJiNGZCqXoqdb+QibE4+w4TQI97UOC8DcVQW6oP6yH4H33BopOIjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLvLWSGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLvLWSGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85AAC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781697393;
	bh=zsI3eyu7fWwsrgkb1sZQ6aXSVhP+tfcE85jk/wIZtd0=;
	h=To:Subject:From:Date:From;
	b=pLvLWSGT9QpIpYCib/wE+vFuf8xuNt/TsKutc8o5+P+/FVgHX/x/UkKLS1D3dlDds
	 oeSTbevQ4vGW93Ta0zwkIZoUrRqz4HmOe80hzBEY/abJqCBAxo3pZZbcjaIxFiuFBK
	 v2zty3gPWAHNwRCAkF5VYWk0ekUWiE+/uPe0v2vQeNAlxa43KVBH1Zvvonw906vg72
	 lefFYaRJwBNp6z6fXlk7+umvPkQD7LGUmVEmEPmNUpnK9w/h9BaaAS6qERrxtB1wLA
	 cY9fgbMWQZXBKIE4tvVJqwTbrkbhfqolQKDrFBTMm/EL/mc/ZOyH+gQiVrJtwmdlqR
	 d3rSE318/m6bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDD9CD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169739369.6987.6364847202132214372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a396cad41309bfd0d42ef378c414be8ef3a27f0c6e12ed80409c988d1617324
Date: Wed, 17 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781697393
