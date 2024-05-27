Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556BDD518
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716834263; cv=none; b=oS1cd0kNyKK4uwF9OlD3pmniGbQUpFVj8JKDp//nTFMXgWC3eBL5Q1MflO27M5hi8j2gQ99gH1iJdWLMZY3Fpv2TEMa6aXfNwmCnZJTNytk5SUIlTcjJhro9/Dohr7B8KoaJyP++d8tqcN0LHnGCZPEr/UgbjdoeBISj3Pg1SEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716834263; c=relaxed/simple;
	bh=7crMuW22gwv8QxdwZZ8MWVFe/zNQHQB6rxTUNd5l5dg=;
	h=To:Subject:From:Message-Id:Date; b=k+B1MkCIQ/IqUh1g490tsZuv2LqBxPr5AzwnyQz7suJVv3XPaSciDtBh7FnTZ23iN7601Sgn2+I6CxBtNDjsuFQRSuZ+6U2RyIJku1ScE+kz8ZbZgHrVMtLd0W9PTPtS33b7uXq4lSMyWmGg961iEjIddIPaS4jdX62PuL62v60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZpcUzco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZpcUzco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7710C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716834262;
	bh=7crMuW22gwv8QxdwZZ8MWVFe/zNQHQB6rxTUNd5l5dg=;
	h=To:Subject:From:Date:From;
	b=nZpcUzcoUaVOO1fT80RI4G9VqoxDa7ImCC8/xR/9PrMdoHiwqt4T7oqR7Ki0u1T1G
	 0KFz57wOONqAF2LDhjDzoyIGIU1WX5qj/qiAWRF8+Cnvw0+QMvyZWMQzmB6KXo7iJh
	 lyxDdEBi8fVX3ve/GqyNVsI+bAL4IDWJ31AY+GI1jKjZVzQUSjhsfkCLrvHJiYvXA9
	 aZ42j1LjWb7g+GY7lDTYKgCfQ11AxfjRK4rwwVNonxZZyJGCqB32A5yl32U2gWucz+
	 jjF0Kv0lEZcWqPTnpynv68cdqLtTzNkYbG7f9MgCb/VQkuV3a7msjWcPgoRjQK17Y6
	 2Pq1G/3gSoEAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AA6C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683426278.5712.11006933358679604235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987853a672cca20ab52fe28226d42ba5e7f29eb1b94b70b4ea7574b3405505ed
Date: Mon, 27 May 2024 18:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716834262
