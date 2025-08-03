Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22692273FD
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754236194; cv=none; b=edL90The6t5BCS3UeRGavYLsZp2ljlP6uxefKzn0EE7U/QLs1QTPFtos552CY8OXSLt4SRGhJ5DRmuFWpXklticM89pY2+Vmf79U/85Z3mNpIm3E7oZKj3wqMt0rHLftcZTEAXRcbNGpaaXzuhvdQG+tmee2E4ATJKAQ1W1FExM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754236194; c=relaxed/simple;
	bh=/bRuZdBovGHXzQtIn093/YfOmfGTtcd1wvkO55vawL0=;
	h=To:Subject:From:Message-Id:Date; b=nw4+D+4Pbffa9BvsjsWd4yBvAbMH6TbgYXiaBJmrq/ptFW2yTdiURs7wFXdARbBCNHvPJqODAByZz0AEP+JGcSQiBzjN8Y/j1HrF9/tD5NqZ4jNBLV9SEcd9WFmMWQpxS1mGZt0SXo1H62Pdyv1vi4F369cScA78fF1F4jJvntw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihS+CXqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihS+CXqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4010C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754236193;
	bh=/bRuZdBovGHXzQtIn093/YfOmfGTtcd1wvkO55vawL0=;
	h=To:Subject:From:Date:From;
	b=ihS+CXqWxWQKKCG4h1xn3goSJU5q2Pv8J8Sa0SbZXgUJrlIxTQQX/PqgB7RSbLeuQ
	 ChmTQqkeK3VkAkb81K1T/twaLCh6zzVS+qVUUeQU2h+C080HV1mJEHvpn7eONPQCC7
	 qXOzokemLweUegRoteLQdfogB5mQMKa4X9w/dgxGn/U2YoPQv/zIiqtbU1ekpYUBTk
	 cy//YkzjX74K0zkm9oHbLPp/Zjku3vYMSxnD/pWWDxD1iImavy1W0+woE4eaLSx+6W
	 0IWC16yqzCDpVgXKjvNCljFyedTD/K5hn6v5Nao4jTzgGep5mqN33nIw610ckUdQZJ
	 T95Q0NN18kGjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC5C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423619358.26298.7125019030745292300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa04dfc45ad67095bda5afab7778ec20e890a99be768af31b38a69bca440e8c
Date: Sun, 03 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754236193
