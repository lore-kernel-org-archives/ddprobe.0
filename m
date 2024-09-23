Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD3ADF60
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727109954; cv=none; b=u7KZuMfjWLt3zKBtSJboif3GMUsvPb24OcVpVluOQE5pzbrBjy4sn8g4y+pgVqFG6Yk+8v0mMHM7wsyIEBXyRFFgBr7S8s+zxeEOzo0MWR+ooFKpWDvLU50hB20AqBxNtIp744DWc0mGakVY5+NFju6ujzPClQqjc6zGMYPxSko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727109954; c=relaxed/simple;
	bh=JmuzEC11iwi8lay7WI6EcRCzcOfGW0Um9rRF/EMVxls=;
	h=To:Subject:From:Message-Id:Date; b=nDBdNHjnau0zsckkC4IrI3KeHUqioKhqT9BpaQb5CSgF51UgZinXTXIAUvuW/TUoME2nfRYjw1O39llhKNNgQ1DN4DaIHAl6+bTKzuYW3C8gRO19MtgAOWYlmKaK/Tp8jntBRxeiiYsILh0plVv1Ak2YyCq1TWAffOQOIj7yD4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkzPSUZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkzPSUZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A160CC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727109953;
	bh=JmuzEC11iwi8lay7WI6EcRCzcOfGW0Um9rRF/EMVxls=;
	h=To:Subject:From:Date:From;
	b=NkzPSUZ4PV8oWSQUoJJzQrsDDDHEDZoNzy1egQr33VL2tLRVwqKdSMLptZOC9gl0S
	 R5kfIslZw03RjCFCvyORW2HKsXI5l0MUNJoRgFUS9EAxtXzW7PpB7+BQLTOoDjUK5C
	 naMAcnl6JkVt350ta1z6i6rCgu0H9G9zQ3m1DizrH2o/4rp7IGhUvwIoywyowcGRqt
	 2vkI4a7OflclIcrKY8+kG5Sbf6/dtPJ3PQ9nxA6/wKkYS9N7t1u5I7xT0twUhtvNb3
	 PZiIXKmiCarmtMcaDBKC9iWo2qH/B/b6ADb5fCkhvLKFbQDm+ZN8e05bo7bbPzAoma
	 f/1xh3bdPh+oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92318CF9C72
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172710995359.15247.17657135750130106940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd343229c2d371400297061f1e357b180faa80e6b4a9545eb75046047a8b7d92
Date: Mon, 23 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727109953
