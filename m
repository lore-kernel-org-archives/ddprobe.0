Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE4B224D7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744721394; cv=none; b=uNad10rPnppJoGzj/VD/H1Ygyws4JdOpxnd2Keb2guVMwfd/u1tRl9KWJSO9PcHmdQdx+Yi1DhsUk7G9kTYHos0BzcE0HPN9BwtnQJZDWyzSWzdCFEIl2dXl4EEwLZMkj7l+aGPO/vRJ85HLiq9wYdHoOxtUV76gpbACnq+TVv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744721394; c=relaxed/simple;
	bh=6IkyLS8VOiBnNplAafk9Cb+oRASMXocbRDkVs5sWXyA=;
	h=To:Subject:From:Message-Id:Date; b=OqNxolAfYS2dWo3tJUMcKVSw3n0yKxW5HZmjzh4YlJOjH7nkKyc+dDyKnbaC9rQnb2jpxER4vlPETfcEtRz467JyvDlZD6l2PCEfrgBfEtEFaVyo+stOW9UHbt8pbnAileYUll+QEsnSXWFQOzpvNHhc6VbnTvlPYzKLiBHXhzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kj3jwFIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kj3jwFIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B688DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744721393;
	bh=6IkyLS8VOiBnNplAafk9Cb+oRASMXocbRDkVs5sWXyA=;
	h=To:Subject:From:Date:From;
	b=Kj3jwFIsURsxvqhPLH/2NJ9laND29fG+jLRhGvjVR5Eyr9GUiLXzkNtHpYLWtc14/
	 Z2pLOESvLEyLWkvvJcVxUJyPK+I9pylsPZQ9QMfoqv937M/uXgE+Y4sd8NteD1KU2t
	 adpsFtlDNWxyZkvBxl6sdDjPG+uCcXK/gdiYnXNhBQZp0gjWMwu0wnRAXBAxFKS83O
	 noMLpt7eGq5BW0ZGsKwPh6FLTWbBSmcdDdnXIswjUaBKMJbLM5K56osn4GLN9oKfQy
	 jSuUaonPVU9KjOPE1mrsFbZ2j+BbmWMzsIjcuVcDfeQ54sgOAfIHPJPmKBPhy4v5Cn
	 0KQv7NZb5dYvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F59C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472139360.2440.17047177720943020576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9928f7286598f05be10d724fb58e067c04bff7bdbfeb165de65e9475b3a9dba
Date: Tue, 15 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744721393
