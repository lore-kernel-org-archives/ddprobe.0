Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BC1533BBCF
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789966234; cv=none; b=SUCEoJO+ZvuuVN+JMI+Pt/WFNgUsK6VE/56/SxrXKVyA/db7ENWX1NvxSwwGTr47BkgNs6GdpmRTwgBrIL4Vz6gT+jzjytBzJu9QeI3HBJl33xhJe0UzU2AUJ+55Nq3l7k8hsyH+1o83qPhl36MHAU7Ehd8qM8t7OkbeiBTyks0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789966234; c=relaxed/simple;
	bh=rmeUom8vDAXHzavyTmRx5sGdgkdooVHpuVtktFPc+aY=;
	h=To:Subject:From:Message-Id:Date; b=sTGkSZfVSsgQFgXj+Bp+fEFmca5pfND9uAQuIIMQvMoomsUrPxmW/dvJD1tCgH+DtYlwUCFzhckMHlYTQfE1PvJ8BSfZMycu0SEBsmE+Xh7+AFpoQDI593UcV0S+cwzujDu5nZ6/Yr5PAKt530jxFFlvErABe3A4F3rTYTkpU1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWTzruRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWTzruRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D7E5C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789966234;
	bh=rmeUom8vDAXHzavyTmRx5sGdgkdooVHpuVtktFPc+aY=;
	h=To:Subject:From:Date:From;
	b=kWTzruRI3U4xrcsh/ME5Ykb1GvbyhNLOSSjiJ7+eqBcfYv0nntnJtelJIYr1NnMKu
	 UduvPFHa6oJOeBJSPG19MqU/SYFRmyox8V7mBqvsIXvY5jMeWqDzbbJicSDGiVxPPl
	 W2pWuWH5HL2WtDajpzuELIBl0/yYeFj4FML82aIrhrqfy16bqZ0YSxrAzLhsKWAR/M
	 r7sEyKPsqlIeCOmdl7qyMXVlprO1yg4sBmcYypYm2M+4nVfdEfPRdRU7/0X2tKpIbE
	 Lftvs3HtHWvW7/hTTkTF4yXqESaNxjsfEMNKR+Q6z9slTkY95G3MgEV26qhj7YPILf
	 l9vUCOH31GkZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D364CC982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996623382.6710.18101521643215252299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a65265266ae33630b21991c41d010aaf9df6875d012c56745dc0bcc337891b6
Date: Mon, 21 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789966233
