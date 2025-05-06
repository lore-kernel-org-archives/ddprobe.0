Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAD4234987
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746520794; cv=none; b=QaF+3vhYTuyfdFltTr4crQMcpTAh07CvDo8nQKZk1pYRkngQlAl0pP/tkUKpSAMiw2gVCfaea+xFvwa0NUD7ZLuqhV+wxHcUNufkMyb4stY7E+3cDOk6ztjTr3WG6oewW55e+m/VgTwAEzORXeNJOx5FOtZVN7r8ywe3GcgGHyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746520794; c=relaxed/simple;
	bh=b3GEICVVGl+sQ04uLqm2Yx8Xw1Wfx98lG651RtINnk4=;
	h=To:Subject:From:Message-Id:Date; b=REUSpuqXFp3fnZb+IMSihILV9fqIhKlw+a/WySHHBD7tGlEP+5LGV/+VmFIlXzL9wdKntJ1doZhRY3Qr2RIx6ejq/x6WgO21X539ojTubKahJ8O3VeWoSftXis81OlsZhTrUbhLQ3kKyYOHhXAH23mTaNFgDaAz8N9aD+7P6RUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4zzlwzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4zzlwzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFFBC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746520793;
	bh=b3GEICVVGl+sQ04uLqm2Yx8Xw1Wfx98lG651RtINnk4=;
	h=To:Subject:From:Date:From;
	b=I4zzlwzAtPmKNBUe5czJ2j2shb7/gu+/LzC0d+NR0iinAQKWZHLhZkaB1aiiiU3t4
	 7cUxEh5YgFXEiz140NqZI0nzR1PkOic6NWUyiKJxABuMFFwobv9uljeXZC4GfL23zR
	 aFnQ+yGtnst+JF3kbJ7TA8BLCtN2BbzJ6QENtaQ83FWYHlOw834z7SKd7gWA//nQAs
	 9uM1qqO+3bcpteBXe+2RHmB7ecBd0iMceFWcKyBSQ5Y5Tay/oTovxGb2fKpf5WSiTU
	 myQMfNiTMH61QlC7AV0lup6MPbI+KidxBGduzjXyc6mdbgYj3ojBPyvKoHkYybPhh7
	 9fgAAci83Zi4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE38C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652079357.17111.5092243598045387106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c9c37fe6286f986ca12bdf6bc05a79e6a1f5b67942c9fbbe018d68d62e0c10
Date: Tue, 06 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746520793
