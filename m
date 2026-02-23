Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3856434F24D
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771838694; cv=none; b=f4VA2XUF5Pp/L5oMTSBjGfUj3JkwLt4tYKSZGkM0JpwxVCHQS6b6JDw0dnthZJS3aHgRIy6UR4MeehM0Teyoudpi6NyZO5TvP45Pv9i7v+OU0dbUl3BUHdDPWD4mFK9FFMSlBn6unGytsiAWFEBTd1qDDlrwlMHzx4hoxzeq75k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771838694; c=relaxed/simple;
	bh=vK4ba5Omv/MVH6oXU1D1hmRlmz/ILIfs58yOhS0jG7A=;
	h=To:Subject:From:Message-Id:Date; b=Yrox228ldDks08f0UlgFXQyy4fhL0GC5Tv/O74gDQBA3KL4fg9yDTr2z/iz2vy9rG5fX0aPGymtL+GJ7Zh/t1IRUeUwj8DxcKLKixX5G32nFlQOtt5Rfcok2FrC1XvcZ+Hfxpu5k+jnc+KsK/6HyvGiTugB9en1SH7HAGoZYZhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OG+Tg8Gh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OG+Tg8Gh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F7FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771838693;
	bh=vK4ba5Omv/MVH6oXU1D1hmRlmz/ILIfs58yOhS0jG7A=;
	h=To:Subject:From:Date:From;
	b=OG+Tg8Gh8R+dKj8uSz7sC3QA9PUd/6QelydLqlnkwqyuYo/jlzjeKknmS26wjV+Kk
	 jcsiycJqDKZhuPcd0s2Z49JgkqE2MLhT3zhZfp/PKji3Lmu5g6Tiu/dXjZbxlAi9eb
	 Iv/PEw7xFysqYTyZ0aq4zNOdEvuvAwUv2ngP/NnvtOrKNp3YAKzkJFN6Ytp50mWBVP
	 hYt9c2DCPXNUqBh05Si58l1lfyQRPJGzgEscRiSxr6HAm25u1bFTajibxwStxWHRnn
	 OW5BNKdbunNiCE/oWVXWBbzroG/agefROqeVENIjVSFzG576ckZKjrlZhBTISeAlv9
	 DT8yLM7NWauvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986E3E98DFF
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183869361.3548.13692762180831732513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bce16e370019e712915dbf10095de7b5f196784de6f833f6e61a0cc4770fbf7
Date: Mon, 23 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771838693
