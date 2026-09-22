Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DB02F260C
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790083234; cv=none; b=KMNJXMGdDENei6LYzN7JaLS4xkDGevampNaLNbylwYhBh2yyxPI4cDtJ1jrpc+WCNyvAMN6UfjwFOtMR3deqU0M5OjXr7diuZWC5iCjkKrECj7o0u5QQgWMqi9ZDoPSTrJma1/LyBqa/EqevxL065vkFGB1tK7a3HJ8EEErpFbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790083234; c=relaxed/simple;
	bh=NYALpAFWa5hWVTPMOS5x61m+Z/0zfydKWz0bvtWtdPs=;
	h=To:Subject:From:Message-Id:Date; b=Up12Pqn3SZpS2vSAdp1Y32/sNVv1q2GQH2hG+85BU7fOpU7SS8CfwNT7k1m+qRrQJQxGnYEWkNN18ZYu0FI7r7NImOWQHPyqhh/NF6dM49jt+6EzI1bD747jJLHmrVo+tB9MKCuClISg0k2A0REKO7ZOaPqWg1ndvYFOYJSbTuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOpx7k7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOpx7k7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4180C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790083233;
	bh=NYALpAFWa5hWVTPMOS5x61m+Z/0zfydKWz0bvtWtdPs=;
	h=To:Subject:From:Date:From;
	b=iOpx7k7moziPYGpU0uuy9q7FZOv7qr7VKIiyFb6qy8gW49Dun0ywqvUz4vkKFdK8D
	 It2eQg5+T5lFQQinGLofiJa8qwMBclmC4KcWUDCevqMKnjNRnN1EJSyeyymb1rQlAx
	 C5xdR6wXN417/OyZsI9cXi4q1KMnhrpSRp4zOh0DHBBz2MdApBPI4r1tiIVWpmq+lM
	 rCrbJ/dSNBSwIzf8xFP3Ku3KowFyEtQL9w6woNZUK4epH3NezHbm16TU6dUkSspvUi
	 ILNgd+UdP5edKvt0GtM46orAkwGw7LKH8EFSOZMo43lI6IQFriwLLYW8T8jLSrRJu2
	 oHat8FsfDUT5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54BBC982FF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008323372.8071.11300639968817231108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1bea8dd6fe3d78261e75ffe0723df99698fb4ee1a3d08fdaecddbda8df6b8f
Date: Tue, 22 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790083233
