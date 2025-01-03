Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9FEA93D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735869354; cv=none; b=HQnYZwkh4VuD7+fJLvwRkbUP6HHuvqBO81hmLE8Fv4/CRRtJOBHK1b95aF+ehorz+vGFokzh45XjWBsaHR8Z/brhJyitoex0E3+j4r9YRSisT6jfEGxY6+11e/0+kZQ4W0VOyoA47eTBVN7/9l2QkSu5RvFMbmFOFWMsWAdTP7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735869354; c=relaxed/simple;
	bh=b2Q4DLjEpmrNx+O4XUfGBao6myt3M2lBygtzhDlZw+w=;
	h=To:Subject:From:Message-Id:Date; b=FLh945jPSPn3A4N/xCYYggvvFzevKqT1WVoHp1dPz4EnbyFZenRHe0sJu+0byLpqI/Glw4OYWAm3/QPN1edDckpXixXvQffD9WQ4yTqoqI8PMmMRa+dGlsKH8p100Tgotsj4mTow+xDcNrkUYQ9dfG4nhckVwPpdjcoG6HNzrhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRgLcWQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRgLcWQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4827C4CED0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735869353;
	bh=b2Q4DLjEpmrNx+O4XUfGBao6myt3M2lBygtzhDlZw+w=;
	h=To:Subject:From:Date:From;
	b=eRgLcWQ3rsqrR+ze8I1HU0S1KGmbK/O+0DAuBQiINP8hBs5uFrnFp+PkDywl1U4uD
	 mmN5CVgmRQ7W6GfP8bizYI0TWuxFmwUjQdggnMfxcUBjK8vwLm0JA11xV4Flj9YBt1
	 3VbIhxcP0tbUsS9hiCL0qbg+sVMu2z5LqCwBIGwzdy1wk8MPl05EgF9XynIV2Kljqc
	 oyNERRfX+1bcM85rwnOLXny/kbtrORmv0WJTO7r9FzWDV+n9428o88Z3ZqoNEKLq1N
	 b8o6EzMnRfaVrQ3NjaVsbuhRxueSqpTSmjW9qLo6M9d0kD7Hf1Eq7viOTvx0Xd04J8
	 DPuFJ0nlH/ttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912D6E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173586935358.6877.17248353761906512906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90e66db3dd2fdbc66bb81076eaf198b4e3c00fd49a9b40029d6e287dd301095
Date: Fri, 03 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735869353
