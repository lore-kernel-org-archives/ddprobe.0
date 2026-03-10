Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0563D36D51D
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773137094; cv=none; b=k/z1Ypq6uotnjjiUR1JGebsWAUTQbH0vsnsmIuWNVePYG53gfgJeVaK8XgkyTB9cjmzMUhTFpeXBC3xpBR7FizPDb5CqalTb0dyRSZWBZpF3wQ9TV8mWjQGUD5TSJ0SHXdZ1Mztrfp2rMXdHnMgqzLQ3Pe6noUAjVKUIx8K5p5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773137094; c=relaxed/simple;
	bh=Iarfy6AJ04KmWWFJkISM5DpBklpJgar85OANeVkGMg0=;
	h=To:Subject:From:Message-Id:Date; b=cMSZboO0Vbi53nF3NJVc2t4VABRdfJGMT0H/kOdjisabQYNKtsB5svbWtXnr8I90tdCRIh/ljCjkyWbVwLYmYX51Tpe2M9utGX/VENFT86KyLY+MWC3euf4agPVv3xDgoQTrxMsdqrXWwbAqHMpHWlOfDAD7SH4H80k5zuualL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnlYJ9N6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnlYJ9N6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0881C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773137093;
	bh=Iarfy6AJ04KmWWFJkISM5DpBklpJgar85OANeVkGMg0=;
	h=To:Subject:From:Date:From;
	b=VnlYJ9N6kYe5Q0qXmV+LzJcgcjMpM6gl0+PV7JPZpYy5+1Y4MK+AgN0DceyqZU/4W
	 kPB68bMXNe/lRmbGRSuB4TdAanz8+airfdd+08eCPqYTWbmVZTg0Wf6JKBQdakd5WC
	 TcR1oseu4lxa40JQIEE64yUYjBn7PuZb4ujPW5ev8iG0iwVVqVRY1Zag+rjMoGvM/b
	 VVm3a+PobXsy6Zd7u0Svap0F4Z3YJFF2Dsk5fl0tertrSGvKxVtBkx5ZqvZ0EWWc/0
	 ssUm0nZliM1wff+FonTxWFXGIcmiNjArGOi5UAyRzQ28xOxDy4hNt7StSMJicxkiGX
	 IC1MOrrkTLQbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90640F3C27D
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313709358.4575.14525380268324592439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192d28ea7d476f0c4d8bd0504318abe8612d0600e29548799e096a601dfa7cd2
Date: Tue, 10 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773137093
