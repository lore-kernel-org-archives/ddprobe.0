Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8A91EBA19
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738340754; cv=none; b=YgmDda2GdHz4E2jYtzxoYZpa9LwM/SwwDt98f6dQ0sicoztAJ88BdM8F0VOlvLNHmv2pKGOIB/LDk+JebSxMJQOTySrKpdjzKcSnEV51qfnDNqp6HR4Y+cjM55SQZLD73QJwuv6FhL0FQbimSXnYn4A8g8AcohLce7QxCjGz/CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738340754; c=relaxed/simple;
	bh=aOvvf9cRLMhSUhp2KcKDiiAzQDB9WKwkV4MOT7J7WaM=;
	h=To:Subject:From:Message-Id:Date; b=VK83RYi0+kDEYPChI62g8dWZLfvpocZFmKS2wD0dwvY0/8ohLsBhDCXM82Cb+e4mOkeN7lsDhue7FA1oqSFUhE0vlCRyYQ6jkhYP1XuVN1P+K9ChWYlxtUuRFM7Drw04J2SiLe7aoQfy//G8go6js6GvwKLuKvn2x9qNh/PLkTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjOtMsLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjOtMsLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5BBC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738340753;
	bh=aOvvf9cRLMhSUhp2KcKDiiAzQDB9WKwkV4MOT7J7WaM=;
	h=To:Subject:From:Date:From;
	b=kjOtMsLBpirVF2DLkgqZdJxKOaFDrMuLrUK559PS2lQq1ESeAiMekvktXJiB8f6+Q
	 omrxbTvbb4LsaMwPmQmHwvBiiB3fMVrOFB/F0NXnc7PK1TIh9DsXMpyKQzj00VGmmf
	 e8njfiLU6BLe6r83JoSiHabbE3DugsZEZqE+ADQyBmszt/1XgFftnxvpCW5SEeGJ4v
	 T/zXcD+Lf84niknLjdaLSacMTJyjzF2eRQqVnzL5OriSuTI73N9q51XChM+t2RGip2
	 btOyXpP+msaIaxSN1U72hG3/bfBiS15cc4KFP86SPuVBlzFzsddzrwltGAzjc4UjFI
	 F6CohZcuZXhNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11EBC0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173834075363.12449.16906618590585514877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8341f2c73f574aa060f890804103c3f8d4110c3095bb4c0862a5374da3377ac1
Date: Fri, 31 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738340753
