Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EA13BE174
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787685034; cv=none; b=fATwjPMhjW92Lcrwd8cm1jfvF73eOkmJgwzEkyPmlzIYE/atLrvmf2VPiOCWnpNW1UstrpA4lD+fcHA9FuAKuiIvpiIKWKmyhpBwJYX1ZIts3IVnTDn3Ew9BmptKWx7HyXcPyhjbUQv0HoBX0JOXlYB9Ph9QLDzlPkvYRnVCPJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787685034; c=relaxed/simple;
	bh=ZaIIpYcBIDMg9eFKj1FF6IJHft++q+UPllfMy36Y2co=;
	h=To:Subject:From:Message-Id:Date; b=o7CZghVSk87Ic5jvBeyqG3akgElElKeKmhugfRPaODVH3LRI4tS1UGdnnZa9XOIYm6gygLCP+sEhhWFgUNzGCZ6y7+wwwotfygA+bAstGN/LGbOc0OCknTY+L8shMocpCJovz6e3Usyqke+MaEnbU4vvCnaipUTm7ZYfIl6f838=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nl1/oy84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nl1/oy84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A7AC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787685033;
	bh=ZaIIpYcBIDMg9eFKj1FF6IJHft++q+UPllfMy36Y2co=;
	h=To:Subject:From:Date:From;
	b=nl1/oy84XaUbOFxZRzC1sH+gaV8WUcxCtrTlCvHbpxlb6Ta4iuXHN93AMdJ4A3Cwz
	 mKr9mZ7JAmeOfmiqq18zBXIbAMP1UEWljIDWN81SLgXq0wt7jgHHwHcnUJRRyqjJHI
	 WIb4jd+OqGW5xojxnrKo26c8UN74GnJMvx+u4cGAlfrK0m7z3fB67iZ6QCGK2wszem
	 xks7OYupicKWr/yYBxf0jiajYaMYX0xhW0H02COgI5WZR4IcV9TGsJ9J3Pgm6KHuND
	 /QJNUK5fZpO1GZb/Bj//il3trU3O1G+MjOM0Vm3bZcQxRbOllREPLHaTnJPAmYvk7A
	 IFgUWVysz7CeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1317C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768503368.13374.10567469682642979769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659a6635980657990fa14de88759988af34de494e9a7ca6a49895c4575d9bae3
Date: Tue, 25 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787685033
