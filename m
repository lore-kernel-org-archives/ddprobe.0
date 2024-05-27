Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473B15C82
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716770663; cv=none; b=f7yL3qSBWeWrDNgQmfrd2kMEsCvogiAn2ak6nH6+8+hbrIPPimmBRPSp5/Z4qyd0l2LYu9DHflpaoJxRa6fAgVc4u8emIUGE6l8gtl5j5sJ7y61gORQ9BU3zJKxD5JVrXHhIpQev6ZiOCYISBnUPtuRoYKG6GacxEmkC5hNmuBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716770663; c=relaxed/simple;
	bh=iJuUP79x897vukkN91qzSAY3/pOLZXeIhUqGUUj+Zuo=;
	h=To:Subject:From:Message-Id:Date; b=o2NFEGmTy0m5jNBea/zekRYyNlB8ZQ56oy8ryXszxJeL1BWMTzpmR98sozU7TDzErgSHrYJ2hpViz84GG7iwLlwfisaAyyIitY1OVO0F4QFWuH1gDxm8+Z9YmyRIs/gXVi/qDIKNdsXq7YhnjKvQP4FrlTuTZqgZwG7ua/24h2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqkbkDm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqkbkDm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9000C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716770662;
	bh=iJuUP79x897vukkN91qzSAY3/pOLZXeIhUqGUUj+Zuo=;
	h=To:Subject:From:Date:From;
	b=YqkbkDm6IjPj95F4VOQJe1zUQHtIYrV66fwKbkQA72eUrUTKEXDMpBr+zxHFObA13
	 rv8y+ue8EpjpPp26zzgElURFAUqocH4S0Zt7CIgAwzF0Z4GcX7vCZrT1jyjZjzHVfv
	 RAjtSAPyXphJd8EJMxXIKqbFkRXNk1zQqtB8yrcSPlBOEbGmuqCRlRZ1tAfefEUgZE
	 4DgHxLdTxJstOGsfzQ/mIkm0zgUHFO5IG950QIsHlqjSuwgRHwLQ1JlgTaYOyCUeYh
	 CP2CWG9iWvHBGxznKIk4DH1amsyzc7FY6y7bFBmm8vbpqiGCe8PGRmFJXY1UeALGbc
	 KQs/rBWNjEw2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D41C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677066277.2702.3456321640955554875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd60ff1f6b07866e8570e55a28b773646756f1f3a2ff672e810fbc16863a96e3
Date: Mon, 27 May 2024 00:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716770662
