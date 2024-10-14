Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4171514CB
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728912954; cv=none; b=lsj0kPlJnIasLP6yi16/SHhuh7C1fCIVNQ5uVwzRSeZMi+UkXprqbZ+JgFTuMK+6+DMvYuotsx5Z6Lxiyz1O5+zbNLV4IJDFaGporbgqLWvzy+pHyoxdv2acLagJP/wW5liPzY1bHJRSkvrWIc8jtzPoG2nS4WhFr3XykIHdue8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728912954; c=relaxed/simple;
	bh=jSxRCloLhaiXqPrzMHWd4BmSS9lqFYPxKKXid6dX1n4=;
	h=To:Subject:From:Message-Id:Date; b=bpx13blGEEXgyDoBPp+bLZ0Zo9jAsBgzRmfM5UQsrHWeQXn33JiNFa6H5rHp1dRKTaVQSsLUXhBYaI4CusWyus37xr/S/WkC9nT4jE8Rl7OU+fx4lqdhu2HBTbH1jTXsXYOSw1ZID9iD3sdGRpbZR4iX1QK2nSuziqg8AkFAuZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwRE3fA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwRE3fA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93C9C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728912953;
	bh=jSxRCloLhaiXqPrzMHWd4BmSS9lqFYPxKKXid6dX1n4=;
	h=To:Subject:From:Date:From;
	b=SwRE3fA780WHiVpKO3nf8atQ4KL3Y1uhvvDxCQZ/z5A932U2TA4E1qxZZQskmFFO/
	 PNCmeAYDm26rEXh885tQJ3qkdYnyE01RDg++Sg34OPbeCZ9PP6RabH/rNgrW8x78j6
	 Z5NyFZejyuOW59WfG0qfKAQeaj2oE78C+qsIFFXpkDARTIxKTL0/+q54cTg0f/S6jl
	 776x0DH1AAWtFOo/CgMkKvq6pEF4H+WR0YnqwH8eR9oZOiteHU00IMoyPD7fVaaxmB
	 B+1GHnC6iZ55Sc6nWZwWNR4CdeMgMrUsyhfEMoJyZjGC5275qfEveU5hKVTcVdL5yI
	 f8NTFqo1oLOPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96129D16261
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172891295360.17905.11569876770088556286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9143873237c0aac37279d8231810f4ddd0d16640b28025df58b3747a00b22055
Date: Mon, 14 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728912953
