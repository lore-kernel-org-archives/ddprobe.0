Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4AFA23ED60
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782416254; cv=none; b=iUt8YgZFam6JJhfbLHFA3kK4ZJf6QGJSK+hfBh/2mx1fEsU4kzyy9pnt/3ZuaqnHQ0VygpPVyGlbxgEnuNrU/Sc4ttG8uvdlTsBvEPI2uvoCG3IdosALn90wa4YA7QtZYIqQituaDBHDOXgWsqEZ77BFEpbW4FuXR0yJ3o8ShKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782416254; c=relaxed/simple;
	bh=IXl3BChCkQM7lwH6XYvjZ9d5cpDzx1vZYsX67axt7mU=;
	h=To:Subject:From:Message-Id:Date; b=gpyqj3CGrmBizEgih0watQVCZ+uY0g3sSrSm4GwhD1vOkXFJlWtG1jqnarpa7RErJHU0h2d918YJBDMKP2/IeIRn4aFQ48zsiDJXzpMJSGMPyKBqCg9ZXeINclOwKRASTXwY5tB001uRE+gOvfJTu4AwpJemCrs2ESBeJEgpnbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f20dbYuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f20dbYuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05082C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782416254;
	bh=IXl3BChCkQM7lwH6XYvjZ9d5cpDzx1vZYsX67axt7mU=;
	h=To:Subject:From:Date:From;
	b=f20dbYuTQi++WrYdjsRSPciVryGYezSk6HPaEgAauyR8ENiOo9sw77MmjYgSVHW0e
	 2qgWBLtUnUa/eL60c6vsJLYSnMVlRr6C7t/W0UnoGZ84+BJJflO+UYbNCwC3FeQgkI
	 G5MJ/AGylsznl38p2YCYSUBMulyh62Yx4nGvN5m4t7tcFSg2kInb6px+4gu40hiqWP
	 9zINRGk5qUbNUBV9L4xhhMdzpA6fYelTvmE74nizZSNu2KvBfYiAUfPtFaWu2JEjlU
	 TJahH8iKl1oMKmZCZ/2YfbKue4xgvhphM5lvx+voxa+ov7c0Wa4eMzynjvFFdWjgtA
	 /S4N/mmaPQTfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C141ECDE009
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241625371.29338.5647885240322255944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b031014d1bae1340af78f30d2d04a7d9f63db7e8bf3ed22731f2c6b716e83f3
Date: Thu, 25 Jun 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782416253
