Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535184756CA
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786626634; cv=none; b=mMsw0MhRtnkdOAt27fitSncDpndpmIlE8vuLYjKnB7c1OUXbbYBKS3gr2f8OpkABVYdlsliLQIfqXnP3C1u96WkSL/bfZ2oRlqwKpfLnrXoQvGphlchxHRZyhj6VaE7ASAY+Rn38jsxqiZHyoaa5uDiPFuptd6sTyeo44JVB8Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786626634; c=relaxed/simple;
	bh=HZ/mfCSuhi7JrnhtIWlhU5vUYZ5j+CNeDYShKUGmQj8=;
	h=To:Subject:From:Message-Id:Date; b=cZYABHkJWu3j+v9Th00Jv3jPP//Riv4zs5gJfo3oiD23iTFt1OKEjl3PfiNgd8UgxJVyGa16xc6osMve3yTHz6nUlREzmGzf9f/9QHZ7HaP7v7s7Yf/B7nXFrrQEja4tlQEgmlhgRFpL/frEy3KO4Bj9mPk7FEKsYf1wLh7I5jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKW43OvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKW43OvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8AEC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786626633;
	bh=HZ/mfCSuhi7JrnhtIWlhU5vUYZ5j+CNeDYShKUGmQj8=;
	h=To:Subject:From:Date:From;
	b=JKW43OvWUmoYXakwv3hDXtY0X7TPr/Ra5tWjmxJyxgEMS7jGQ14KTuuwfq8ZyZx0z
	 rz5pVG4MbxY1aRNIJm9UtUW6sOcuQBmURvfH/1OUpaZY4K1iPZwtIu3KyteS/lIa5s
	 MkHrSUK32hT3Oq1P9Yyrc9ZDh1UCYK56fKyw0ID+KxhIRNMDd2OZ27oe1DOelr3aWm
	 xTuBe5R1KCA2v7IbVLYFZH/NUkQMDVFY2WBske23ieifyuEkEiuWM7Kkgb1RUTXbES
	 5ruXz3YDH22XedR0DV8t9qZuuPrr3U4kCy7LIHulKlTEUx698h4BYfaaNnLsiuFcHv
	 xUhD0Tn3nydzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B881EC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662663374.21431.12666088157646015923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a34a51d87e40cf6970384474b83f5f49b6029cc07a8ed589b6e047cbd74eac5
Date: Thu, 13 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786626633
