Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F80283C90
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748648994; cv=none; b=LBUd4nqa8C6AtqDKS+C0uLgb/SiOwK0tI/MGUzvY0GV+OO0ImM7GTOfFERvE5u++g8fMdGdINTUF0qRbu2KINGMRDAHLTqW8fs7slG7BofEazojBxGeh27JTEcOth5Yr8G8zkAndR0jqz3pcNMcy5dJgfwiwS/I7wAO1N/IWWTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748648994; c=relaxed/simple;
	bh=l1MA9+bIfcnfTs2wKa+C7F4Y52hl05LMSTXVnBdzqWA=;
	h=To:Subject:From:Message-Id:Date; b=QxD1pOrsfLqpFOGkbXwDi347vmZabO6Qtof3pudCig0ZLT0csG8XEK730q0sveB7eKoR2KFCi7i74w7jwc0PlfbylLenp/hCRLE9+jEPY3ILa4AcrHm8Qk+D5SrmC2QwF2JHavbvsbs+6O/yNaCV/afKNaVKjHQwDNBXl9MZQxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPhNZcU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPhNZcU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3096C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748648993;
	bh=l1MA9+bIfcnfTs2wKa+C7F4Y52hl05LMSTXVnBdzqWA=;
	h=To:Subject:From:Date:From;
	b=dPhNZcU9AhxsPRymSlw/HHujyu32dKNqYDGu0DLDKZ1RlW0E4mnBgX+62hLbhY4A2
	 vyU+FJzjhYezRPlCpR+bnWetPuJ8llNNsDyR5BHmvgDqM1J7vd9UcH6ykF41Kr83RQ
	 RWfpnLqieJAWVR050Zr5tvxp83tpIC9L43PP2qsha4EJXHNiXxuAFeQ+Xug4ByRe8D
	 kkauNZ2LwDrR4k+kVoB8R1+tI+jfmPpfP08q2f6uc8RZyv1H8nX3I9XuCDgJUKxobQ
	 syMmsQgF7TI+1ajZHZ2yR0bhj9UjLcNeAWlSjnIvP9VxU1qnY4zn1W9fc5zCfzwhAe
	 RMzHJ7Q+pzbQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC14C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864899364.3566.4592398958511844804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d980d43e6d439adcd95db1205c224e3f3fb32db59506fe603230d16382b206
Date: Fri, 30 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748648993
