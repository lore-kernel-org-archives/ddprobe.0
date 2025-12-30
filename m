Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1313A2D9EF3
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767057234; cv=none; b=XpHqyFnJ+OTRDcS6vqto4qxeDfTklUIYRjc/6HAgSEhDqcIg9E9yI1GIMA7k/nTeGzBGTIjN9vJVtB62EbwcxpVtIy0/ebPOe17qz7McqJ45fK4da4anHRbLx0aLiOx47x+e4OhVH2QWoCxgi6UqxUwF9iHvMOLEFtdsSvN4H24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767057234; c=relaxed/simple;
	bh=tC2HWyeXMhZguPeRLLi9slySVvgJQWo/d1WpPRwQyOY=;
	h=To:Subject:From:Message-Id:Date; b=SmIQJaCMhmOSHnBFDoeRn8qMl2o/zxZmYCOOi+ccKAqRpWYea7rkwPFkau9AVKhmzSaoo1hF7LLLxH9uvYWmyW8kVQMDYXjPwvDGX1lIPrbVQpVm28OX4S8UKSTkKLKfUXoecH6Lv21+ujYsfTo+KFEmSvhAVUQjQFkJ9w0KGyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEIXpyGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEIXpyGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6210C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767057233;
	bh=tC2HWyeXMhZguPeRLLi9slySVvgJQWo/d1WpPRwQyOY=;
	h=To:Subject:From:Date:From;
	b=nEIXpyGQrTxWxD6H+eAxEvVcYoOVVUhk2DJ4s0oCDvDYa35YdC8z76MgoE7oMoxuw
	 ncMWh2J2TS/VszQI/Kb7Cj7VS239cqh82ZwbxAYyhcR3MJM84KpRS/Hmp6QlNyzadM
	 3vb2F3qXy9wZu3VIicin6M26D4Dfi1nMfAX8B2BKXsJH9xOoy5I95dFrZHkxaZSSws
	 QzJ+U9ABu9ORVYs8GgLf57aGrL9XGVVbDqpoTnyL1MBnc6aJjmAh+Sd6HHRsRq+ZWk
	 F0p6XnYOLHLytyUn4mxaTshId/vRm4Jk7Nchp0kEQF7okZ1Wp2eERnpKkXUGO2ePIK
	 OHYcoXxVJeYQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95371E92FE3
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705723357.15474.3358381342753069999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf528d370a6eafb17669fdef9fd6cc7137233e2ec71a118da02cda4b1c8a0071
Date: Tue, 30 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767057233
