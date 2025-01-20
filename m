Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE34188734
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737356754; cv=none; b=t71z5JDK57hFFumXPr0Be6/jWWjMsnbwwaTVLKOJr6onh8FtbKqQ56M7Rmz5ttx51c/60A/5AYA+yo5822b0cpjMSYT/k0hBNWi5Ca8MToJEu2MgAAElH8lonD09eY/Jl5YWAv273JkQutHFdImEBRf1oUxiqzxcOkhNqPhfWJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737356754; c=relaxed/simple;
	bh=kX7qO5R/mabvYpXsYSWSbARyiMGyKcHy0plvxv6C0RI=;
	h=To:Subject:From:Message-Id:Date; b=cbR7GatMylr+nkene4GDvGa5LknseGmkx26msUoMU09FWm+8eYyYGbUsBXv5U608VnwmNldIKk0+fI5dKC+SJ51gUT0MDt70EaVq9miO+RFWwHkLQzKkej7qD0OzmOvsXyJlnNux7fUVWVopr4Fa/6AQr98cI6bNUASEmbgb/RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kY4XSJ3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kY4XSJ3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D14C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737356753;
	bh=kX7qO5R/mabvYpXsYSWSbARyiMGyKcHy0plvxv6C0RI=;
	h=To:Subject:From:Date:From;
	b=kY4XSJ3Ym977kB2NZEVb2ClevBsCCWcDVxsav4QUQJE/gdKJVx8JeZ/Zo5wSfsWT+
	 9/GvqBECY0iRUr2MctxJRJqhTnGFezoK3S4a2DUEux55/QHPBWkV0jr0jJWgLfmHFg
	 LrSQi3VRM6eIXq6X5aCu4m8lb6roSv/e3Pf+Yc3bFixmJa/O4BKbfUlfwqHhamGfmo
	 pMt9o5tSRpcF2wGoItI8asJrn430vilIIvQM9NyrZOUefSgvja2m1iCa8LDKRQoz/l
	 cGnJuN2b40lAu/BFplSOALIw/kpHrfuguycQTEkCJHneYYWl4x6vV7oyZh+ma/Pz1p
	 Jb5QAO0e6DCQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B23C02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173735675361.5692.15564959233001212578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f502a00177e1ff451034844cef7525d756d9b3da6c82e03104c348a557c1db4c
Date: Mon, 20 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737356753
