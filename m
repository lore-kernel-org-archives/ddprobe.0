Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79203191C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768434234; cv=none; b=adTc8jaHlJvAWCdcbd8DrRod/wSj2mURtkk5V4SCautORbJXTYjP93bHe3M8qjwZmqAWOr0XZt3vxhiggjgUDSXw4Gt/iPessXY1WWGgcl4GNA+FVokVScAxD64+XJ7Hxhi0d3IT6nDqRCGXV72zRzDKS4ykrnM+k5O4ZsCUT3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768434234; c=relaxed/simple;
	bh=WkYMhjkic26T/JT8gjx8Vq8Go29VnVwBezZysPzf1iA=;
	h=To:Subject:From:Message-Id:Date; b=j/ZAiEqe7/JWJou7IvX07TM/+loeRc9ZKmtucl3Va4rFZ3nBc7md3LOrOTb0ETfIpxeZtbOFpSYIRzfaUJdu6tvo/d+67/xjqWqBtkKuXlwiyu6vs5m38c68cgHVzpsnmKsM5GLoEN4qpppxFMUhQCK25QC2hli8WaPJ9h+WQ/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPT1bqFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPT1bqFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B121DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768434233;
	bh=WkYMhjkic26T/JT8gjx8Vq8Go29VnVwBezZysPzf1iA=;
	h=To:Subject:From:Date:From;
	b=bPT1bqFvy8pUU8oHV1tBxSXQb/SCuAg8s5eNhKzuNF9BcMRSRsPC7wam0EJbTd+vn
	 MWmXwvvRQJsg0plO5qhuyA3CnPRJOGqLrgmY2RVTCSdyBo8LLT01hsJ6Jf+qrQ88Kj
	 jlV101VeKEP0cxc7N4CVhGVdqkoaN1gkktAehmWpeub7Rp0Q1jh3nKx00VGBxijzcP
	 rL0/l/Ps966MvA0yj2LrUbDok1rJAtlWnAb4j6ndbElFpCXhlXiWwaECjCmZa5uEom
	 jgDtZfYVXBpU1U8ZEYrnV/SB/W2yinXH9ULgU3DSrcC9vsL5pr7xrUZQMi9qsJrJuh
	 8bAc6eW7kkKGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD53D3CC88
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843423362.8238.2793512395383802220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4261e0451d3ed1dc8a199c2d7a357fa46ff0e731a72003cb5038520e29cc6c55
Date: Wed, 14 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768434233
