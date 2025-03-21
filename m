Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628C4B664
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742531394; cv=none; b=RcCAtoor8oTM8j1YNVCcuMj0iUK6pKd+X5yEK2tcOKwM+IEgTYmWmOV/O25VbejZ4RBHOlovMnxgPIj++0T5OQqYRvG197gQf1UePV/gH8OA9BZX2rn8l2GYMcDVJjHmdtbld9kd4gVr6ee8uSXIFjwLO5XaQONTsPfmnKq50Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742531394; c=relaxed/simple;
	bh=hFQwI7WGU+S7Gm5juYUXsQiDYBxnG2fsI3OD5Y8FJt8=;
	h=To:Subject:From:Message-Id:Date; b=hgTCw9pEilwDwq/ZMz/K337TLX/u3XSUMILpP9ie76fGHxvJ41BIeX/rC+dv5oVJXO/S0JSOaIsx40ua68fPnXdFMEnt/KfNUlvO2VM2UNrD6uvgks2VvyU+aZsqakQY/ZUnKRGp4nFJfQNAmAcXXqXBphNgwa6eO3UdxclvmIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwlSRs6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwlSRs6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDA2C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742531393;
	bh=hFQwI7WGU+S7Gm5juYUXsQiDYBxnG2fsI3OD5Y8FJt8=;
	h=To:Subject:From:Date:From;
	b=GwlSRs6WT3bqPDUKn2F54UEifnH/D4w8Gikdvlkd6SeMxh/y9mKmqaQWtDWxKwMux
	 9pCLLSmiI5OvQ7iTC25g4GvBQ4AcIH4K60/gwnsyxfoeMfeBb1bWrbN50lNtK16sYV
	 p6FMTOkWgFvTymiIMxL+D8dcX0zlyauGd3KoOkJO9+X2z17LX9ITo6xqMbNuCGpgN3
	 /1ehYBAcnnui5sJoiyYGPhAIKu/tj6yaAPBoZ/GXaHUjNsqG1NHqwytleEu49vRUVH
	 RhTq8Yz1/32rAs8W5HvA1oxO9fT/kyHXpmrPL+4Yy2D1PkXfObhv2uwBbnRSJxmjor
	 ffuj66Yb1bPrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0342C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253139376.8555.11509244913673440366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b082ecf3a43daf832ddfb7300df7d3cab42cf6d140f0a2e9eaf3b928d8b0d37
Date: Fri, 21 Mar 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742531393
