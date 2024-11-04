Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4459927456
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730684754; cv=none; b=HXgDm8FwyyW8YvXLR+gKxm0n/b40GLBmcJIQdT77xGCUFOWRhVMiILoPcL9wRDoRJWjBJKN5dVkjI2wohHymLMTJDgAcWLHNMOyP1QVp8uGU/n75IzqgigyIbSWI2/OddSWR08pmXeTMIvGhdzKUkudpXFWDJhggi2gK/qHJjs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730684754; c=relaxed/simple;
	bh=XGuWJdHjm04LKxy5VmQwN5ixELMqOUC7PQ4or+uBrRY=;
	h=To:Subject:From:Message-Id:Date; b=uFS5jKNQ1LeVjrpKzYE9gBZPII8dWFggecuVgP8WhCvVLMjAJLYkZT8Ubm9koNXpyQdFWpkBSVhyCAoc2PqFUj5gwrNWxCr1PUGs72XgL7EXZ7hy5V14KJC9Z3/ZeI9r00SJKTqRKZ++nI8ao+S5EF3flJKvgmqDWAjroXqjR2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVx0Q0df; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVx0Q0df"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1CBC4CECD
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730684753;
	bh=XGuWJdHjm04LKxy5VmQwN5ixELMqOUC7PQ4or+uBrRY=;
	h=To:Subject:From:Date:From;
	b=NVx0Q0dffNMP0PtZbZTO8tNimzdJkKL5/8kKIkMqTyjoIViftGIS2glI+CtJd1g0l
	 EQfLsaLQ2OZkyOOkkt391nbN1AMOriLi+o5Z1oOGmOJQw49rdgZKaQBeUWvLiuS0GV
	 L9u5pOQ8LKvv+UC40TOgwuvEmY6jQvngf9Bk1cdSns0JMmQtkYsLIb+ljvhjM3eDMT
	 g7lnMESZqgqj3fvGXegIaN4z/q+KTfVrAog82xxSuQ40b2jKgI28BKd2nULD3FoldS
	 A0IAmpOLS27/LldqrExjPwe3n2HUe/4Xamibik1W0NcA/RhWd5Mtp6z6/eoH72sI9k
	 Zef+0MBQAqhEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976CBD11194
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173068475358.25514.10627491621450135340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16728b9d5973d0cc6eb12631dcb852f40a600405f2d023efc3058053dd859cf
Date: Mon, 04 Nov 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730684753
