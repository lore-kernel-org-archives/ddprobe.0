Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438CA1FA85A
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742043534; cv=none; b=golgZNOSFTfOKq5fgiq20gx3WbamViwLiCUxkAsK7CGTBV34Vya0SHR49RQ/MkT4Nkxx5UcpUmOP9vI1TZFnFH3BrDfgvxCyjpDSlZYliaohlPfpr+dG3MptIa9tonLjnnlkd2yXEzJcnaExuy8liA9h2bwzf1JMJX1rz3Wf67c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742043534; c=relaxed/simple;
	bh=XJNROg9XfkQKSvvYPsfAYeqIfPvVwrLToY0TAqgmQWs=;
	h=To:Subject:From:Message-Id:Date; b=lb8PFNOusr+0fmA9lMjTLj8wgCLUMz5FxWsQixmCqqLoBKAMmuuE64uoMJKT4qF6P2mM4lbp94nd32u1a6Sj6LNfxlY6PvYHpsNjAFweCFSfBvnDx9WGmWARTCwL0toxsCXeyl6juLD3WVNm4RjGWByHJAgMcT67R6EGegoTbyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/Jglp0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/Jglp0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B04C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742043533;
	bh=XJNROg9XfkQKSvvYPsfAYeqIfPvVwrLToY0TAqgmQWs=;
	h=To:Subject:From:Date:From;
	b=g/Jglp0JI+c18d41wv8ekugyMbO4GXWs+UG/9jQ1NxomdzHw3tTL44J6HQJlkJqCB
	 8Btgbii2JQ325yZs2ZMmeZMRN6yfg7dMjM/ygbGGMuTXm4gd+kNAFizwibN44f3r7f
	 QwEriyKDM8zTiNcVbXV5ZOHn5V0y3HghJoRFb+hFqBE4c3w2ri2GLreB+QX8mhJE3u
	 29foxjmSafFzhJ/+iO1QtUX+A0KdG/qgQa9iDr+54sg2Tfc2lLmMyFTIaY/2t52xJU
	 pWzhQ6RctqNKp6+hqR/iNqUuMmFqG4nzh0v3WXwCcBkRE9bwWOS38wds9ASR/Cs9Sa
	 dNyvoLVYqGSEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2E7C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174204353363.31984.17033022977253760653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad0df1acdde0c8037ee2addbcc616d42de492dc177170ac0dd5d920fd2261f0
Date: Sat, 15 Mar 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742043533
