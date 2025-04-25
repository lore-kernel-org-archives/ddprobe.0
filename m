Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4041B87F0
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745623194; cv=none; b=HF8NyLVkykxMIvA8+r3myAzLPFJ1lV3nb9z+XZVLHBAeqfewCdsIsd74/NEtM4Ce+j6jQC6kXn3+AQ+OrsyvDxyOaKWyF2idja3B5AR6iYbN6IJubSutnVgJxs+04l3TZcPEl1666OSqdgZQIx2OonEpRgkM6ao2YoCsOGpO9Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745623194; c=relaxed/simple;
	bh=YADeO2Omdpx3L7t/A8cwXjyiNw6gXU/5pXOWldCfKgQ=;
	h=To:Subject:From:Message-Id:Date; b=IPf5gBW/DlK9VgohCtCr+ilcLLQjbOWGDtCqgm4xbeJODGXihuZDoJ1So9UPNOHVdWSLmJjYI55GOYo2txL1d1n8vu6pRch2zsXOierCII6gx9xcLtM9fiQ4gi789kFmzirwzkAfWqAlymSbJxtoBeKXunBJymzKrM+XGXuBucI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LH6tuIEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LH6tuIEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53A2C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745623193;
	bh=YADeO2Omdpx3L7t/A8cwXjyiNw6gXU/5pXOWldCfKgQ=;
	h=To:Subject:From:Date:From;
	b=LH6tuIEQOqm3npExpf0lihwM2fsKTdqBWjcfVyZ21d86XHo6Ui1IziClat6DKoOTa
	 SCIpT8F6XYbVpRG/qrtKtuqyCVPeOFc73T8NRTMADzNRW6bJttEaPYx2+VQrZKchUD
	 oDDPFvgZVP2Ek9vkJdvUjX6R9mHLDgkvJpw3QPF8OyYvnQLsp+Sa+CrtnjqvpUspqe
	 Hw5jFzkT1NuxpbL0xN+enWLXwgig9xF+hujZ0O/1Cb5lgdvVlbN7sm9SNbcm7NcgW4
	 vn/JQhc77EGHpyW3T677sNKQ3th+6olt4jTQeaHrqxQqjbubOPGyi1pil8PPgA/ZWW
	 JHshDalBRrWDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91493C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562319357.7300.13317605773989098603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e128df9b304a43dfc66d3b6728a2eb5971e8cc67c2e92a599e03098a4cf46fb9
Date: Fri, 25 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745623193
