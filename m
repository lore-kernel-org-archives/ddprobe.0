Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7CB33DED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787190634; cv=none; b=RJmhKrPJ6oU4xJaIk0wDAWMXpyKUTOM70GhjTWSnpQzhuxbaeU5CkfjJdxg55bunT/MzcpOIwCjpJfp12tkkEzld8xrlkyf8WS2sgK3dZY6o3LzBIPw15e7XrT30zG0do1gUEeZ/UeLKquEQTBkU43VTmt0punIYCvMv4peYXYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787190634; c=relaxed/simple;
	bh=3n0FAlcHp5CtNZ72rR7F95W7RMcaM4qiwGNYi0y22NQ=;
	h=To:Subject:From:Message-Id:Date; b=Jen0cPG23oAX5nHbbgZ+v2K6OY3XlxNeP8L/gl4EvwfV00QxeiFi7gE/dr151gXoXudndZW5S4PxH/BI+/7PX52wS7knpgP6w8AkHRgYPUsaNsRl95EhROGs3HBrMyyI3ZWB/Ggkao6h+Rforr0V8Q5wcTW581H8SeGu/6xGI0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M68VOGTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M68VOGTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 065E9C19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787190634;
	bh=3n0FAlcHp5CtNZ72rR7F95W7RMcaM4qiwGNYi0y22NQ=;
	h=To:Subject:From:Date:From;
	b=M68VOGTWH2jvZ1qriUS8voMlUekGL53i1VKv/tkg16X6vB7PYH7TCqVPPRUC+urS/
	 U5o0XoN883yZiiOlXQnalARQJfvN4YQCtkuJTcG/I9dhNbQMY1EnIZ7PyjqGR2OBdG
	 zMt/mbQMGswl1B6SoaEQSaVAFYt/3KFY1L9ISK0d6bI5KFlOfBl3OILHtQuGUM4mFb
	 q8qo4QyLVQ6LixD2sXQMgq1B+FqeZcx94yF6XHSu1NTAnMj7AZChhKjAJQ0/3F1JDm
	 sdRmg1hrsLBwuOND9GYv0cnNziyQAKMXyzRsNJVg/LKLa7asWo9z8X+/FIpO187arh
	 PDAOvZqlffZUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE626C5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719063376.30903.15027401900336521746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2064b0e0d521482cac8e478afb818a5fb47ca99b1dcc93b68acec89e0737cacd
Date: Thu, 20 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787190633
