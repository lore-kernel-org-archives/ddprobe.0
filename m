Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255401E7C03
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758956394; cv=none; b=l2nwGHiJ8YoCXcRa8YnF6X/yUqIYtl1qWjVcdKHjzcahR4QTD42NPNEiuHoFukgqSqpBKqH/pgaSamsBIzBHmik4ja9A3wvX/WvqfjF7W/iKx3gDfdzC7+SdmWkz/bqXoublSfvYbq+Ur2ntu/UTNinIWDwbDHixT/X6CzM+O3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758956394; c=relaxed/simple;
	bh=aL72vzuqRRmfFkdOkh0ZjyDRl4wu7wIW8mKpp/rSUWQ=;
	h=To:Subject:From:Message-Id:Date; b=SAvkY70IfTAfEmDQM38IeTF9xW58swwuFHkcA8VifWnQ/2ZdZ4AEXs3idnnTqmTU/bCShNkKQVWXcN6yy5ROFLVAodnPAhAk56Xz7912iTNsV6+N3YiKfm8Wk7dAMYdaQueka9N46YSf1hXCmtzfbDWC/AW9NUfU6JS7D67M6gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ov0I482a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ov0I482a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAD2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758956393;
	bh=aL72vzuqRRmfFkdOkh0ZjyDRl4wu7wIW8mKpp/rSUWQ=;
	h=To:Subject:From:Date:From;
	b=ov0I482aHgvOijc5HpAdt9eAS/dH05D0/O0eL5UuCkLZP8xQD9KC/g3NmQqpWfyi3
	 hGYhLV4LvGSTObbB8YKpmpY0tnLixQ+gb1OsZOkaV2waFhn5QD34ut5lsCgW1fI1L3
	 bRe5VNifBZZdiu3HcQJNXptLaD0Cst3KKqJn3SZRPLR+eqe+nFVh7wwKpYexy6C/+7
	 uTKsW4B/JMwZSHbR2CP2/rH5oqjoxzQs9kzQCyQT+bxAYsuHJsvY5bfqPRhVOc6Uor
	 MFSqhGYlN33I4kTM1zX+GAhEY9+YS5nBCq3+bHr6WqCOuM+JSdPQMILBPsNsUYMvko
	 3kQtDgPPxALFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA52CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895639358.16437.10047919994113074423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe1e6be24c922d412ca7d97f01ebacc0c7e79dc80b39af7142efb3cc1ec732b8
Date: Sat, 27 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758956393
