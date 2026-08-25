Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9371A9B24
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787628634; cv=none; b=ozVzGr+3nGQSmo01zrEFzfta0qOq1nSFMRVkKIXu68V8gZ0BdVY+rX2LoLIiPMOBBVxTVfCoNAc1ATWZmSyk/nEiUCr0tNL5yAWq/QiWpfNlWi/k+Xp+MIxpe57tC7Bhm0Ky/Xk3vx7caE7DA8WEKdHxOk78W9RdCvusbGuBeMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787628634; c=relaxed/simple;
	bh=Kkyvb+Yl5ENA+UPFJA/YAZY831qGQr4ZNfAfmq/o4+w=;
	h=To:Subject:From:Message-Id:Date; b=NaOTlgyq6bZNi5pI/Ey/cD/cXGFu6KwuqBW5QmM5XpGUSAzsJLG45tOBzD2ga8OXlurS1lKJzQ78+cW6joA9QMc0bRmb3RoM7k5BmnKD9cbQGB0M8bQaarYPXdsl1no4PwI1uCXgfzrI3UgXw62CWlxen3LHhAaisrUfWG8SJbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csbSxaVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csbSxaVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB41C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787628633;
	bh=Kkyvb+Yl5ENA+UPFJA/YAZY831qGQr4ZNfAfmq/o4+w=;
	h=To:Subject:From:Date:From;
	b=csbSxaVofqN8lZ/8i83z/AYnn1WajO1bYyCIwwH5DMcCOT48aU7+7/vGzM6af5JPI
	 9/gz9A2ZcH63NW0n/55Thlfue7MTVmOWAypQq/IafrApVdpkqWwDSwvp12WrcAyBmZ
	 2ye0YDUMgavb3Obcj9ZdfWLQ53SkgMhUBwMVymX8BUIPKiD4cwezjEofbPoO9vuAJx
	 6Ki200l0OLP46vxLnC8DRpaW/bTVtnC90uIgtyGX7k4M86imTG+xwG73XiBr81qRxU
	 AQ0djcb5j6MwTccXUOeT3W1WBg5hhjeNTmRbNp19Ruw+rqFHoNLhZCTebBrsa8JSMd
	 WqlsxpcnQHohw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB987C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762863369.945.11707753277407806993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17f4e675bbfc3297cc514191d5c0fe87bf30e0d10b43f1197c9daa218a07ec1
Date: Tue, 25 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787628633
