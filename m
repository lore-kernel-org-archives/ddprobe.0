Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAF4BE6F
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727791554; cv=none; b=V7ggw3W9ve47Q+YGXQ92dleKT4oDGNbL0ZOQ2dOWiJFFOEEw9nvXnkqgByzPmvg2zSV9cTdqaPLVQw09K+uofDs7dCSSdicTQISAECcnVBA5zZBnVkVbFn3UpfKQ9DrKJqtRKL3fdDi5JH4vuGRH7RLbojIlZRbTrv+mbYDzTZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727791554; c=relaxed/simple;
	bh=nw8OBNmoJov8p7UBWdPf3kYFYBr5YIYbYBWCUJ+eGds=;
	h=To:Subject:From:Message-Id:Date; b=HoFteo/NYHHjj20kyeS+UOebLWyf6nEhkcsClgwMtc0kjtnIRWERp3Fbd7kQVhJwlFWcxUYyyKqjrKhwvQ4WchnmkicqWvY3VwzKlYQ+3HRSrvVwxEgE/bRqmFKn7B463/sp2stjoKZPGFIUIbTIRkhHTTwuuQKEVnGf7PY+G2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zn0uXZbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zn0uXZbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3A9C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727791553;
	bh=nw8OBNmoJov8p7UBWdPf3kYFYBr5YIYbYBWCUJ+eGds=;
	h=To:Subject:From:Date:From;
	b=Zn0uXZbhMt76wOCG3QX4zGoO9x3iesM28bNoHMI+0W6MoEhXkjr+2AD6f7/rDt7ls
	 htY6xyu/n985kwlMLqp8XjdnianE9QRVf+eHLCxhJC+m5aRq9JhR/sHT2eYfbXbgzK
	 L+hhBG/MzFRCr1v3yewGABU1DJRdR2Uqys+PD0mW5iRm3apuwTeMTd+Y1J5pAW6ONG
	 xs9l+ojWGajrzq+F/vmG1uDrprlfKwVz7ARI5bOthTLiOcqJGt3X/TgzM1C8QVf6Yz
	 2EgzvYNZm7sXoY0epzm0+SsC+nFWAzjsfay2U66Qis1HOgW7JfBdmvz3m2MdLYyY03
	 ejmRxWkY0yICQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B71CEACC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779155368.25360.17779627327825732959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2930efb1075317c7a3adc5e61af31ccc866a7c1e31f0702881686bb936345c88
Date: Tue, 01 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727791553
