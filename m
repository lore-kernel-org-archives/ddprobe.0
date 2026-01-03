Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA2235975
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767451434; cv=none; b=R44JRJVukeKBX2mlEquL8I5Syt2FlHGlE1I6EN2139AWI5C2gNdtVTfzXrdGQzrZTGpPZ1CrtzXv5AKLH+zbkRxlnSELL4gvtLJz18NJqkim2sc+/7f4aRX6DJu+BUev8pAYID0ltcNcdmyEqHkcpi436/icgc2Do8jyEDpEdic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767451434; c=relaxed/simple;
	bh=/VyYdHyNREsBX4cncMQM6lHrBMpEWWCJGumxRZGWJA0=;
	h=To:Subject:From:Message-Id:Date; b=GnLL+NG/nthw18Nh+3uIkSJGD0LiY7TI+/gA842SwIcoEX9+cW5SS7zE7DxCucGn2urv+Ia5a2GKYBYqEfE3BVMmmTu2HtqTl74y+jkSgrHs8Jf0uWmPwJbrYaE27vkVolkN8wCY64ANJXdXfpUVsgoFy2wCfdbNK5srsAz60Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbjWosGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbjWosGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10A8C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767451433;
	bh=/VyYdHyNREsBX4cncMQM6lHrBMpEWWCJGumxRZGWJA0=;
	h=To:Subject:From:Date:From;
	b=FbjWosGnMNfDmaGsmOD8/obFsr+t1WZQJWEmh7YjB7pQacSX65buRzgWAk+X1gwdS
	 ymwHpAR7qqwdvEQfWI2X8ifCVXNX0qc1lg4bF/317xK9jz1hO8lbRBwvJXi7dQgiQL
	 VTq7+oz1kEuNsbzwhMbzvGGwoPGG9GRUsECHVTC1/JCcsoXAozlc/SPTy+52B58r8Y
	 Pvw5RhKYsToa+geQxCAsWpKSV+NW9Epx6pICLuO1vpGs+dnkdNtNgX+Yq09vazwO7P
	 h2gSFLRiCzLCa2r3+jA2CTDF+MUCRZp5Q5g8+5dy6MdPLHKDfBFdeBiWHHXxHk1cQi
	 tLi13eaKr9RmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F744FC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745143357.29078.12927616469765868197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d680e77b1b1d5e949afa476587595fc06a07b19bcc37894ed82e6955cecd2d41
Date: Sat, 03 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767451433
