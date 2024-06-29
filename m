Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DB523774
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719639863; cv=none; b=PAPKRGJYBe9glwowfXCCIb5WBIqBBQCirAfvrx7tfyjTytW4Kix0CVBki6oeYv4ium/vyDhXQRN5GkuOhdW7Jd05CUBVOezSb2qxE8ZbA/4IgarNTzIk+EexGIM6FNtbtokrEoACwN/8oVpOYZqhBAGERhEDmyZJTfWcAh7eNfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719639863; c=relaxed/simple;
	bh=lJpSsOacrTNQOiz0sfc+WfcrWLX6QzpIOY7OY2saCxQ=;
	h=To:Subject:From:Message-Id:Date; b=swvinh0YOzTliEa/Sh5pOd1NHjDqXQwzMkvnE9/4/hNQjtj1hVb9Br+0VU+2cf190h2zaKguX/WlPTpqxHBien6xXM/VFhZrKMYUnO0aVfASmTPZX9O7vAYBfMjx78esUS4ed0qNXGW05q5hEHlA9JHj+8nbvoG4VQXIyCGDv+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKMtzcdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKMtzcdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A34C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719639862;
	bh=lJpSsOacrTNQOiz0sfc+WfcrWLX6QzpIOY7OY2saCxQ=;
	h=To:Subject:From:Date:From;
	b=DKMtzcdmwcSY/+hOhRH8qSsBj1/Ksk7Ozlh6BLWdxQkPddj1y6hqo0pOAiyitZVuk
	 5+CSxsmVibWpgCl3R7ZGH43ZProxz5EPn3YBnBpUhcRlH7sCj2qyMjmg0oX1xmhd1D
	 KOODuvGbj1kY25fwar5KTbUZLHQckJilqDAVMNtZWgP8oBGs/nXn+47JoOvarNUr2s
	 UIwombm/rTPIpMgIb779uF/magQG6+gh9PZ+rtDU+hUAIGmcpZ4DMLSppYIq+xOR6H
	 6O+Y7Fp4q5g5dG3rOzHkwpz0PITk7D39ddaQEuqA3z86X8RE8M0EeZpOcD35C2OnF1
	 3RduPSqlHD1qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD8B5C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963986279.9973.4054689269865629725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e655070d200d3073da1992a613e921c0676969f8635d60be8643e481e6c371
Date: Sat, 29 Jun 2024 05:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719639862
