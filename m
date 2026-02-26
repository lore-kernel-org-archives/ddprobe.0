Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68953451CF
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772094293; cv=none; b=dmrn+cmj5B0jp2W2q/YVkfmDntf+ekGB9t/EWod+gUG/T+zFeGiLitjptNe+oyWbD85eUdVjQxsLXs4WRQj6cAiJdKi++yoqo+DJn78MQrV86QxPtqATAJcbgIAqVmonnWQ8WbKeDovE5sRJb6g0Bd1BcFYcWidl8TZ64br9PDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772094293; c=relaxed/simple;
	bh=RcJcR+PYqnxTuyvtLyEGpgLk8rONlA0Eo5Tyy5f9CDc=;
	h=To:Subject:From:Message-Id:Date; b=dMpc/cmoKN+fP60gYduYfDGUohfUI6v3B26BKqaHL61sJjc5+STr5we83rL6I7+OJyvbHxL6PQZqVo0+ZnJ7qLn+WvJX5YfU0IGJ5qb8+9QhByyvIe+6soKEaoXFpnbQeqK+HF2PSvkGouq4uZwTLgxULUcRSD+yCmHO01YBOtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMOKXaen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMOKXaen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B2CC19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772094293;
	bh=RcJcR+PYqnxTuyvtLyEGpgLk8rONlA0Eo5Tyy5f9CDc=;
	h=To:Subject:From:Date:From;
	b=pMOKXaenuw/7OREZU5EMiMudNc8wXnhTaHPHqzZBemSTiUNBxywtmOetNhYG9JqpW
	 V9iO9R3pc2SoaYz+SS2AERc7n2PKPv9xjs22wf2rtXrOMRme6W8sr6y+uIr1q7s6qj
	 2xA9i7wZkUYfup2/OJ72dGAX4qkzm31Au0oMkZZWfCfEGv/X5+qL//FftFm010XJFB
	 tBiPo2J5ivOqeX+iq+rukowCxJP2BwWv5ZZgf0TIKJJOjnAZCIjgpDhDG7I/B2eSwE
	 v3QWqbfnGQzuLihvLaMwUhOLsVhvYZuzh0rxjeQeJCQtyVJxihplbsrlzaU4SO115e
	 RudiYqWJOsAoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F3FC590D
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209429358.13079.901976091281830620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ae9280af3701f19ddc7e4b7d37231e2d0ab6007213e7a8e5f7ef4c6d89af3e
Date: Thu, 26 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772094293
