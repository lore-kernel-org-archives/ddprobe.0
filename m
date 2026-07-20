Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2A2352C34
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784577514; cv=none; b=lS7hY+lrLD6qozUD/6k7P/bhfgXA5AY7uId19Pch5wqgHYXqQHaSV+R9JON9tVMEh1sHpm/Zu7Bu9AfK/laNn3vp1ZwKQjkT9S22nTqryqyQzVY4V1fq9s2z1Q28ErLGFZICE4hoq3npFdBEVHjJ1I9TedHbKnNR+2MwFDi9OUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784577514; c=relaxed/simple;
	bh=gaakMJT0aGE+cN7fjmZuEv/LOmn6sB1imBIC3ZAo2Xk=;
	h=To:Subject:From:Message-Id:Date; b=ch4RCn81ehYw1LW9D2KPLwr2y8eoJ2iip5o2VMqU/HaE3ltzQnz9JPAc0I0tEbiIIKaTFoHukCyGilUgZTAqFSkBecw9XuQ/rhuUh3caZNdiVnmxvbd9Q0P+edzaA2b7jkvD0+dpg4SlxHQHtGvcqzRNO5QBGh+5wFwn6UaA3lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKfCJsvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKfCJsvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43ABC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784577513;
	bh=gaakMJT0aGE+cN7fjmZuEv/LOmn6sB1imBIC3ZAo2Xk=;
	h=To:Subject:From:Date:From;
	b=kKfCJsvGza/P2QemDJXe5+zhQRexCWV/wJLEzI4g3ZwuhQoIGVEqBWMsyTH2KpOuo
	 IuMgcq7g18B+Bp50NSGTE5EpVej9UGkdLLTEN6sBYA63f6bgo4pyMbe22TRuvYaw73
	 Hvdckc5r+NKYNyutNXqYXz/vGdQZYuHBtoaZtaud0MWz+6lBNTVkfS9J2DeEjYy8gx
	 SBboLkpRXb/idXMajeS75ba6NBMHrDJzFy3WZ5dVA/Yf81PlG6Ioz6kmM+SYwIJtno
	 LFN78nqOAP4xtpMeDoYz5oc4o4M210bJg67ZeKyP/zKdOw08DM13la39B+N5r+jdt3
	 N8UQ+yiXwk0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3D7C44529
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457751370.31925.18329248118343815210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26efca1ee56677d5e6dfb80204e23666696229f83b91b228bb93303ca5e6b78
Date: Mon, 20 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784577513
