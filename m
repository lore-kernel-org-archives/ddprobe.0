Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D760E3233E8
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777393653; cv=none; b=XvP4GzOUB6QpeLFfDeAiT5lFRVtFtJZV1VsBbp+8QVqhdJYFqT4PVsGwbvPftMSkCmUDXoUvrCSLUoNYQtv8MiT+3PrlHyQuBxTUvlKlgZUP/K48cKNhitrdHE+HHmVOlt3gjsI/4PdJirhnGmVWQhc2w2BpO8dUZcJsm4GphrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777393653; c=relaxed/simple;
	bh=vkLR9/FPsbN/jG0/Im3kO1sEBtU2zGPn/7wH27vxMSo=;
	h=To:Subject:From:Message-Id:Date; b=YNoPuvGbDgGkCiAgqQZP/Q+kS5M+poisNc+nQsGZS2MEqnCoMy80hoOIiJ9dYNuO56H6ofKMPejrJGQk2LsgOv1qHwXJhawQuVJJkCO0cxDpiToGqMxgryVCu+YaHD5wZu7NFyJvJyY3KxW5nVB4mIjnly33V2xhjhQ6rk9hks0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ar81YQqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ar81YQqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9563C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777393653;
	bh=vkLR9/FPsbN/jG0/Im3kO1sEBtU2zGPn/7wH27vxMSo=;
	h=To:Subject:From:Date:From;
	b=Ar81YQqTYPCMh2lIOE2uNYLmhkW8BCk2VouYqTzgokeEEoKBZ4np0t+oG95KY7kfn
	 2q8FgxugHcmYfiXCQ/C2dTHVnkmh8JiTxgN+jipjOdsb70XT45AYmxeDrq0JcBgalZ
	 CKBfHZz/SC0BeXThmtW4lX8RmpEtHleofrvAw+Px5Rx3mx38+WtmcBOSW9L+5RWd8z
	 hEbKG/C3tEl6+o9f5hbvkAah4Bzsdb6K9EtY3Y3ljqhDmYc2vLNb6Q4+e8EIKKbHDk
	 cpMAL0113pwqpZyswnjdi6eb073rlEhacWq0WJvqrpETh3jo2PHiBglV8dj671CrDW
	 RNge+oui+iEFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA80DFF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739365368.28523.16238626067928010098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5862533d0ee9752024ec4432b576051ec62d01045794ef5fdebaf0c343c0380
Date: Tue, 28 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777393653
