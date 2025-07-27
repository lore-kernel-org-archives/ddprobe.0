Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6D7137E
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753648194; cv=none; b=toptSodb0MolAdxAuJOsm9d6KPh0NFJxOhRzJFgRconrsMEA4ckM8WJJosSOu37svNmWKNX3YwTuGUoXPWEWsiwHitarFmFhNhAibeS1tDaOGnz1JyZRmKsiZCiAdwQCMtiS14Hfuwk6JWw3NKyukcRWP+nmtxaHX1tSe5TT+vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753648194; c=relaxed/simple;
	bh=9CzfHRffRp3U8sByEf+QWJvCX/ruHqSGrVXI4jg39SY=;
	h=To:Subject:From:Message-Id:Date; b=sgkW/aUCmfWrljJCQKx8NxQNdZUJAcYoUIBslEoDMUBJXKsyb4x3TcFHCpA5qMzZH7q3j3ZQbCmpb1sF7vksv9kxSr5+lwsoNRThBE/5QOuwuhpYvCsnWyaMZxp+ZJC3LTXhPufaVRElaiauyjTPvrUg67omVpmqc6i7xC/fIZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCc6fv62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCc6fv62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E4AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753648193;
	bh=9CzfHRffRp3U8sByEf+QWJvCX/ruHqSGrVXI4jg39SY=;
	h=To:Subject:From:Date:From;
	b=VCc6fv62QFZCMhHsfK0O28AVD6+Px3T5YeDAbuP3RSxvz5RIT5zg/0vp3xXlfqYzO
	 eISoBT7P7Q9dul6v3qd/T9math72FYTZBaThBAS/mZfiZ7mfljaXd2Yz+zacauhFuL
	 dUwxtWae8ZGYD7jxdbDrS69aCPqXNZqqFTrrxVTyTeUxNMjxSw0wSPoND9B6EnuXDL
	 5HAt5ns93nbdAp5zZ1UsMW+azQhIb4U4KThSW7ON6mT5/6ALWQMOD8pdRT6fEr2JXv
	 WX8OUn3dgBBFUR/IDnUTpb+o+1ckJdvkicaMtodd7xScgfE8KvoaTMXtdDWOfnHYm0
	 +/DuzALSW3P4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD7C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364819358.19679.5460246004200404494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b64a4c4d7bfdc386a8984fbeb2a349f3759d0247400f03b1ebfa3941693780
Date: Sun, 27 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753648193
