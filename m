Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC7C1853
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734695754; cv=none; b=mHTnwDKoVoo2DFtdp3sV782J9RmJtZBbQsAbCOFVcelOYIEu/QlgPVEf9on8i0XHPyftQvPzcNkJLX5cMxK7wr/5LLTQWQ41sPMeuhzwacuMQ+nFiNSgXwO4kOG732Mfhv42qmLqhh5PlZH62BiD4BiG4Wr7Kf4amtbcM4IMdZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734695754; c=relaxed/simple;
	bh=06P0NoduKGRbJqM2meOfkoqTxnhidJNKvifgVmOWGfQ=;
	h=To:Subject:From:Message-Id:Date; b=QmZ96M+zfAa+HZVTMKxDPTs4IwFMROUAjUdaTFb7A/v5wChlbAkN9Kj6IgYSj+6jAeEmBbIJPYWU5OhnPJQPdCcayzQGYEshGf1VlPwFWXzmK+5JEqoPk9sLg4J3efe6hCR3Wspg4N4t0oFC22oZtLMMbSVt8GyF5tEuK/1zAwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxm5eXcJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxm5eXcJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC617C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734695753;
	bh=06P0NoduKGRbJqM2meOfkoqTxnhidJNKvifgVmOWGfQ=;
	h=To:Subject:From:Date:From;
	b=uxm5eXcJsKHn+5gYAi0MVku9Kfq0STMnBjyBZ/SNf6E4P9dqokNVJZz5QEDhzxGeV
	 BqWt7j7NGJDK8SszfPL03TS1dAGTPEjn4YvWor2CXKmI+1qQQSRMraumo459fpYYsh
	 sW63qcBpxRphyVvhbDo0shbYGi4b1a2zl2cb0wFcfkDIQFSswJq6GnIOJKVcogDmIz
	 1DTuHYTsflLTHO6xAXGJQ2Qg3oIhvdJZPo8vrEoCbdjp2KoNfZUR9S0VuVLTeVQvAq
	 zJkU2uuBTLy9JDPbbNxc8wIg5vUcRRlS7DYGz9x7o+0hTtzrKip/xAqn4bWJj22IK1
	 lHCE197fSJpLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0DEE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173469575359.24442.6809567697095892400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502520b0f1b4c9287419ff0859f6b9168e187244d4fd7bcd6125abe92d3562db
Date: Fri, 20 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734695753
