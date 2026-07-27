Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5476328B40E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785160834; cv=none; b=qPxysAJAW8cnMKZIoIMlE6vHWUew49S/HnOfqJUen/DlACj158qTwdztdL4Tk53r3m8Ez04zHwqRVEswvl4aIcdTFKsSkwEyi1FQa3tyOvV60kwlACm4UBOM/IOtgEtPpr6dYYpRlXuLBEtUdX72bQk6ddl+vwudMYEhAEQlw2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785160834; c=relaxed/simple;
	bh=3I9VsAT07TcY1iKXrUazZpLpd3u6/dDYAIhpjJYp7yk=;
	h=To:Subject:From:Message-Id:Date; b=aAVQgGlFw8GtbsLzzxjiATB7UrVjxCcD+IM+JzWhKOCRdcmddw9CM36gqVHX7Sb2g+fHUqKzU55/XTYyg+ONCPxRW9BIqcWgTguvq8mG36sHuKoo7ecdVzlXqXDmadaarIxhCx5YCD9++hknK3wLUX3RSMMo9KgHcKFvUc4Y+QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6hsggCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6hsggCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE686C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785160833;
	bh=3I9VsAT07TcY1iKXrUazZpLpd3u6/dDYAIhpjJYp7yk=;
	h=To:Subject:From:Date:From;
	b=u6hsggCn5CRZg70q4HXHrmvLdzEeADO0kn3Jpnpa1BIk4UYzX3vANDF1uqsUWcdY5
	 oYTsM1JzIGMQ5b7pyenJVOMO4l65jGryDZovZhpaYDDIIrJwDvA1kSWu4px23tSxD7
	 Dof4Uo7P4PaM4nD8MGgaoJT++7NmK6graFFAoYaxyteHHN8jlIpv+bw83bdBh0skWv
	 GBvNYArkWPqbtzm7y2/5pfeTMQ21c4wYEbIuY+Psj4uhSiNsxgbJGGk0rHuL31ptWT
	 8D3XJlB5803Mua2zL9gTgp1N/2qE6KZgcSWbaxEuJhvDLrLWpP0pCRRX0IuBi1O0Ss
	 nXB0cKG1YdedA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CB1C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516083374.26022.4992365311274431230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4262c6025a36b0cf4307745e6d9b2ae388c8781244ecd0f8e4274c5ed3399f1
Date: Mon, 27 Jul 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785160833
