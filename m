Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4718426AC3
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754755194; cv=none; b=bcgRJzXWmhSREBgFeuSOxPWetnJxVYICaoy7WUNKWsXl10oKfBp1JJCAtkHyTbWxzM1Kxuq3uVOD5enyNXLwMk5iPvPBbUYRPPOoKK2/rwE21AvrDVcWkni1UM0I2N0qmBS/4PGAP/l2hDsg8ILJuWtbhLkoauWpmiWvgwixoew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754755194; c=relaxed/simple;
	bh=4U71TNPdnqAENKe6taf+rtf8ilUlBECjnwnLBSNeMaU=;
	h=To:Subject:From:Message-Id:Date; b=t2kLbPDUHIrNUwNl9peRBvYgYIEsJfbp/iHaqUaEivbHvDxR8So+JcPAcTIs9KBh3JRp3ze2nFIvoyxfZfaHydbrjaEXKFZ4WSpmy+zhjfWgxU47i16yfGqpIYyIm5jfPvoHH7yIEW6SXyhJ8+yaW+9eRWykjllQ//d9ooGWgWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+D1Byt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+D1Byt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB25C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754755193;
	bh=4U71TNPdnqAENKe6taf+rtf8ilUlBECjnwnLBSNeMaU=;
	h=To:Subject:From:Date:From;
	b=A+D1Byt+fbWc4nGtYcHMfKl9A4nnh10vWu+oOP3e7OMimjsB6dsCW3+/UdazgVMhc
	 J6Eu/67ORAMGwy0jLwycRqQgCoPIiPBBQgIiP8vaHr9zHOhzr6L6avmI6u36IdswV/
	 zNVO8RcwX2d3P9wKjUnVE0eD5nrVdYTQEUFhOvQ4tOwAgtlvLmnU/sLh9nkTZVAWmE
	 2CFQPsF8UVll74aPCc1ilBDSpZ43rdAFSbX3gNqHIIfE9wzJZOPgb6pZpgd/fB5y5t
	 ziCy02COQECssPFUZYiRM0q8WQ6+qaCKcF0rdqNKhzu6zi6C9zVY7tP1aiSuvBaJ6m
	 rS0Qym1RY0Dhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F152C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475519357.28670.18341805318402842100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc75e7e4780a8dee68940663c468e0d0add07d5f750e2dc76feff5a01d9808c
Date: Sat, 09 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754755193
