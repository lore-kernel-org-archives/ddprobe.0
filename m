Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258663F8E4
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722581754; cv=none; b=g0pI06WQasrghqvx8/yCyDtK1d7SrLguZcOsC8dBTUARC1lOS5Z10X8/PvEGbaB5tp8hCkIe0bIy9u7xsD53PBvMi63vcVVjKRB6Vf96b8QNGcyfOP5fh5WkTZtmZxtzPpA3NOP+5aXZNxqa1R1SWlvqYk/dWCWOjugwfcD0LBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722581754; c=relaxed/simple;
	bh=6RqLEfQIUYCJmTl7HXtzCYX1PPi/Uuj+eZU+3XbD9+g=;
	h=To:Subject:From:Message-Id:Date; b=Jd6uhxqUw+QCgFhbpyndMh0D/9TwPRh7iXosPlzZHpjxRKPwLUO0ZwZm1Sp9rqR+EAi6DwyKmhd1+NlFqOx2rq3JDEVVtbdFeSZcW5zb3h51IKo+fq8lcRv+Y1w+VSsFGNObGPo1WkfTsu2NK69Dq4nQ0Oeo5OaI3EiiMEbve1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLiy5Wo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLiy5Wo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD90C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722581753;
	bh=6RqLEfQIUYCJmTl7HXtzCYX1PPi/Uuj+eZU+3XbD9+g=;
	h=To:Subject:From:Date:From;
	b=HLiy5Wo3yn5/R7oLvEGnqKX9QTXa/VQbIVX1BQledTAz5QFaGt4TL8k0sfDX5Zz+K
	 PMtSuLyWe5PfSZS8St4FOvBJD5Lp2ClsjiDZ0NgXiadV5EV7S3ufdxo37hTAXi62fl
	 Cm+p6lZqX+p4m2z96PlYNlipQcFlJ6cHuq5zxMlNGiI/JocDEsEweIy5frXOIgj05c
	 bSPv9x2FzWRCxOuf5VgLUnB6XMKceF6ev8bk3Vbu0xJsBzqpLBzv7UEKMCCXPqmM3v
	 77G72k0jyXjOmYp1Eip99KUQTy7bTh5eN8/gm0qdbshXKv/Q9vvCcshwfVWDInNvEJ
	 kpF3ox6/4RiRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924BBC52D70
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172258175358.13198.1866086500399770682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e56240ac370fd7e308502a2e889c74acca587603144b977a9c2db7a84f7b25d
Date: Fri, 02 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722581753
