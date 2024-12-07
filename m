Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D76822C6CD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733594154; cv=none; b=CzdM/F+hKPzSZ2kHPYBBWZqdTd/GAfxw1KMjznNNajE0S25F/xWlxKH9ohyha33Ua+Rx+Z5edbFagK5VuKRGF8FYmu4duPxXQuzK5Vhk6mNEI4hNPl4REZmlMkg/KrcwDZkOUil6HvVqtrpgKgRGlJ8OsnHcy8a+5QYIz4r7/aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733594154; c=relaxed/simple;
	bh=D7VRXz8taqZsDAFOvPAD8uG6+5VatTiQjfCJIgCyxkQ=;
	h=To:Subject:From:Message-Id:Date; b=PvvnJi7F5/TYPbpdAd50bFd3a5eWxGEyXf26+qFvh3Sxi/SnTADS2oSqCt8rbY1Re6ena6BlUUx446roiEVF3Dno6FhK0gZdV66+FDdZ/IyzKwC63flL3byPwrPc1Wv8LeIhB0QmWqHUqh3+Bh7YkxHcl8ygTiQ10xhONUijIDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUeYbgoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUeYbgoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A10C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733594153;
	bh=D7VRXz8taqZsDAFOvPAD8uG6+5VatTiQjfCJIgCyxkQ=;
	h=To:Subject:From:Date:From;
	b=bUeYbgoYRolz2wV5bbsOVGFCpONnn/h1KOprF7Zl1UlDWUVisb7OCBwTgJN/QVQOk
	 uX591VnF4FwTgBYPCVPqvwc8jts8y60zpV1lqd4sOkljz8+uG6iyDe1XcOzkzcuZhw
	 cBxY45h8hGb+38ujsvEBAQ3ijfjCMi339IOb+mTaxp5l9DVJma/kJl+9xoX1rReS+q
	 vXu+1/9O9DyXIt/OOvwFeVy7mjXB/R2mF82FcxZ4rpwpRN7REgoAmYkn1tdAEiohZA
	 N4EgeZymFCMUyPD8+YxkywsFWjQIM0+MhwSBRABjl6t7xK5JUxsYs5yFVwbm5FgEOC
	 kOKhMWZwdgGfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9857BE7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173359415358.14860.1143145307355386560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c32ee13bd197f976916cd3e01de7c38424bd3f3bd417734c1ceede43e655282
Date: Sat, 07 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733594153
