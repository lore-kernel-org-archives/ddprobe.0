Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2813D2FF14C
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756990794; cv=none; b=m4YPwiEQig0IjjkFv6qGQ/lYFgqGiWfLNPOZgLxMtL9At5oySVoLoxQL4jyGyramy3xRfU5YSaiGbEyY3pz1zBJyA+Tb7grauvw18gddjQnpXBW5e9Uj8d+VllJzXtzzzLFBknvPM/A4sPUCP1oqcJCt4+hE9MAQ0zasI+wIM7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756990794; c=relaxed/simple;
	bh=mBiAfoweAb5IH7ay1e6Av/dF8v1suGaLQf2hvYMeZsw=;
	h=To:Subject:From:Message-Id:Date; b=GOuW2n7dQPxEbak+UHT4cQgf4ukDK0X961hGwPzesQbJ/syc4wU6gYs4qHr7rqFNcfuOFtP0TrpaQ/QFVEIyZNmLu4U5VwzD09wamk06hl/CN3QJGuTprDv8KliDsQpTH6HmuMx9KfUPg7Zjsk6BDtzGyC8dyWFpdSaRc85gGqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOYjGym1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOYjGym1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E85EC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756990793;
	bh=mBiAfoweAb5IH7ay1e6Av/dF8v1suGaLQf2hvYMeZsw=;
	h=To:Subject:From:Date:From;
	b=FOYjGym1gp/XQ5dLxCyOBrIq1olqQ5/4+lBPpJl6+hENgdKpuqH05b6kMFEMezW1H
	 s5mRSN3b/yDbnKDC7R4pVwP6nTP24GWCgXF+KWamdbitV/Uj+vZUs+6WPIHxsGLd6M
	 9tOGW2SAmhHoswyg7cyRgEqObyuPoE7M12qao8hXytiPHXrEIflkWRVwURAKQ6Zsez
	 oZ9eChf33w3g/1JCsIhRsRd74K+j4mdR1JvswYTl7t28dw/EC54MvvNLMowVDENqs8
	 h7PJTaJL/vb+m3v0ddO/wOoDyshAxIFAaVirBSbntUgxeak1qZjGstsFoqtVu4CIe6
	 CgaVpc5zCEnFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E484CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699079357.3462.13823591023450531072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46ad64f6603bf0f8b6bc68ad10ea98117ec3a4d6f55f247dcf16d58b6dd5dc53
Date: Thu, 04 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756990793
