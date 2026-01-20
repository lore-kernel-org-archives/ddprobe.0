Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215423BB9FC
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768899234; cv=none; b=mYUGSyO0gnu07Cl2r+dZkDyhtfqyxZJtsmXGM3UgN76XuASgCpyAqncw9do24G/QSyy7thxO1lxR1WwB3vyEDthWp7zg9p1D4SqK2OkoioZW9QuMBC/ttgmJblGTvOPg52k64dQQpiaZyk/RN7T7rHZenImBcvcQ0eM/aqz16JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768899234; c=relaxed/simple;
	bh=1gXxdDIxHTo2XxsP4tLOsBkWWYBfFFflbZSMLlzKRXE=;
	h=To:Subject:From:Message-Id:Date; b=CkNAm5slikGxH+3Jhy9KpHcd1zhQ/mbWCizkxpIs2sy3ttDswz1WAeNfbrJ+o1NaOC8XiXh6pVczVC2zbfKxYcSwx/cWBPWzblWsxCAehMIHkChjpJUl4uon11oTY8NpZViUzjiPrMU1V1Iyt/RhDzX6bqRj2J5/SJFxZxWr6uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDN+/PY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDN+/PY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B98C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768899233;
	bh=1gXxdDIxHTo2XxsP4tLOsBkWWYBfFFflbZSMLlzKRXE=;
	h=To:Subject:From:Date:From;
	b=EDN+/PY7L+UJf9y2xVhPwAIEQvRnGuKpNtsc2Vn9Hwowy7IsloK1C0sz022KrBjSD
	 4l0Qs0Va7Sf1APEjl+RY00uOXyY3mYHMg5zbEf0Osehs6V+ndWez09zn4V9axb9bqr
	 P7XUvWWf1EPSKPmGPzxYAi6xZzJHPb2173EY4ajtrEVOUjcN7HTKV6Fy5fuUFq5Qbm
	 nsxUHpEC51iA9MRSzT8X6Up8JT9Dc8u+wBctYOJwUACbXwFEGdeg6lBZ25IMndLFJ1
	 imKntRaT4ig0ENmWjKH1u0nyAPoO7P2xt1rQiMGKwZzUjwdmeuIFLTHJNiMJc+2GKG
	 vakVHnCclasYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B96D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889923358.32197.16356032059845911759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35bbb8cb2d652f5191d4fc2c066f4978503abcafbc70eee67ea37653c2066408
Date: Tue, 20 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768899233
