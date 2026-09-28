Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E033B388C
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790622634; cv=none; b=BQSRCoSlBVVgI9ainYWptsGHUaw3rpQzAxuUmwnzULRO0Rs3IEDm4AVQA/Ij8CFH0Bgovy9GASkdCTHwQAnKbxdQX9HcANXkDYQkd/9/A7MbaLdMPj8cvRyNB3QkhgRWSt/nnyR18fPeQ4VNMa9BObLueCx679Mx4/V67jEfCNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790622634; c=relaxed/simple;
	bh=AAKL/MSxpxkQjAaJLe0HvB0PA/t7TRkDmUiUPYfXY/Q=;
	h=To:Subject:From:Message-Id:Date; b=o8ek6zpQhTTLn65nk3oYmzX2GvAOia13OeRsxfZeptaXbwiNppzpwCtQR/JuXmZ+uhxJgPWvhKeLBsv8/0J3PT8keL8HC96TO7MW8uuDUsDXoPi9kQvKOdJPAMwaeVflw2WizGCNXIG3uD61AteS7U7pFSIkL46fgE34oIskwiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNjLjaOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNjLjaOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5341C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790622633;
	bh=AAKL/MSxpxkQjAaJLe0HvB0PA/t7TRkDmUiUPYfXY/Q=;
	h=To:Subject:From:Date:From;
	b=fNjLjaOA5V/lsWQlao7OHwXso39OrE78OfUCe/XiLzNGmULqeddA91YRJ22pbBVEm
	 aCaFOC7jQvJ8xOdaBpUYL5iML/qr18Q32xi5l33FDdiz0RBQMu549BxdPbH4ukI4ZX
	 7SKySbrLvxZiAzcsc+oyzXDrfxkIx/dmzjSGeyZmiTwAGMeL7FRpzlswQJkjNYcGCh
	 K1iNj1fQzFQn0EpLygwcxJ2NlaoGI+w1L4mufoBvyIFqWXVIE4MicCYz5/+8Lb2d+n
	 rAxrunctzxA14o4ixIxry5jbR/7Cpjc0b6U2HJuFQriUCN0uNlA0d287hAOst36hBu
	 bio3bm4h9oXVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAC6CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062263370.9021.17742180307065395889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383a6779d90524dbef28f3432d795a810831a131373b520ca491b4aca3615d96
Date: Mon, 28 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790622633
