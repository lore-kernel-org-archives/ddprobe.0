Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3722B367B82
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779526354; cv=none; b=UT5Q4GyGAm7c+zrEgMH9Gwb1lBrnupUYlBnfIb1gkNqIWpxqzC3x1Zaome2weflsYS06FlbpZWlWyFj65zQ9arjp+N6zwIk0bN57GwYZzzK/FN21ri35IePYjqOtKwAWL1xAH/PoqcVUa7rwKr3VuHS2R6jMFWa2gAHiVqjVH8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779526354; c=relaxed/simple;
	bh=bwP41V/WlpJJnaNM+upW08/g/5kGxTVN4H2DgAKEoVY=;
	h=To:Subject:From:Message-Id:Date; b=RVf33MvfFq3jQFZH15tuekeQsRsTmvofoJQHqv0l1uNqonKiXMpVhm87Hmlnkzne9Fd9FKWk5aYvYIzxFfqAPvkTzkNK2BR6rAZ2qmORZlcGZa3kQFpm6YufqPeOZRzqR8l+e0b7f7KnsNUq7S7aO2RZvvD+o+iNMtEeoyHP414=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gl9+yzSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl9+yzSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54CBC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779526353;
	bh=bwP41V/WlpJJnaNM+upW08/g/5kGxTVN4H2DgAKEoVY=;
	h=To:Subject:From:Date:From;
	b=Gl9+yzSka9Fb+q1mBakLEH5it1rL5Up6SfojZNH1Helayw6kqPknIvZdnL4MJZKVG
	 4pp4bSUo4Xn/gLfPCkZ2nh/8ErrHu2gD7FHaDrxKWZbz99Fy7oNZbgj7h/qD/c/wX2
	 EK2T2DYxMEcclM5OwIUV8/Hbz0t2v1jZ5yF8vTDIXwxoyow+FsgviIhkp73YPSGBrS
	 mf5BUBYF7tbSTi2XBycO8dRmrscbv4H/c+Peuv9f6H/AhwwPFshY7In4xuUyUBf3i/
	 xSNyAQAImjg9Bp1E0of/pLqZ4FZqG+Q9g7AU5I8te42n8Nyfy+k1wCVicryRQlNNin
	 AH0DyFDmNlvSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEB0CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952635368.14309.2182382943909041513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac9f105c092fb2e6fcf251f0bdb445ec577c87adcd5ad7f03fa7c12a8cae47a4
Date: Sat, 23 May 2026 08:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779526353
