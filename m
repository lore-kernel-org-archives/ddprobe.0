Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA3F2D5940
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779621754; cv=none; b=GAxHl4f86e+DinsEKiRX7KwzX+npCV2oZ7e9cGh0/KrjOBxuX98Hfjl0lvsGA7kjEHBAl1fSxT/NbfRlqyezm2RkpepnQlUIziGbWHVWfVu5OQlaZ4lvC+NepTOqHRXLnnZhCTE0SXYYO+0pZu4976up7BtdMrJ/Q2CPzmV0BmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779621754; c=relaxed/simple;
	bh=TNJM4garlzzo3kGMeiPDuZw4HkKBcCBerHIeKP5mxNc=;
	h=To:Subject:From:Message-Id:Date; b=ouM/amzB84CZocO3ouAbDUmWe9gccqWu1CEMMHbha+NYnKThNVXEH4EINVsOw+M/C+PgINd2dqlhFp8E7NzZGvV6OEYrg55dtY9WMLowRCzMSzK7oWNFWjhghOL6CJP984KcuSXN5Nvpf8Tab3fSlxXBbzUYnXrCjMjKC91ysbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwl+IOeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwl+IOeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21B3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779621753;
	bh=TNJM4garlzzo3kGMeiPDuZw4HkKBcCBerHIeKP5mxNc=;
	h=To:Subject:From:Date:From;
	b=bwl+IOeWOnA9XOc3Z5l0ekfa8EbQzaNkoSDS2Bok2Rd/P7UKg7Fet6jidXRdwM4YG
	 1gqmRkZlnHGS2n7D6gnB++SwaWfLbPzQrMSevCxXau8h5eqoqfLPlm9hjtbO4NXFfT
	 HqaB96FROFgEri2Qmz7UGzC2ixH6FXcjnhySXpCMZKOoCE7OJFNLRrv9aIU9nc2+f9
	 CqzGdpC3HaDwfRJMHzEITqP7ItC1256YjiSby6gPQpzPEDftzq7psKcxuJa/q+/27M
	 2ULVSQ4rxhrFfV0q97rei63ntlIQBZgPjfBJ3si6W/UBhKRIIuuPvHqMpOCbhaWfue
	 181RiCOF7F//Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A905ECD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962175368.9887.7123964327823902841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422089d1ea763369b67f6c3ff735080b28df173d8230497bd215e64f9367b88c
Date: Sun, 24 May 2026 11:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779621753
