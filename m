Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1C21D5150
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759088994; cv=none; b=hc0d9q5OqS9m9f3s73ik+VrUFVSoDXPplxxUIQyaIYzWTY045A6hhotmYAmroZHThTSxxWPEWfR/Xi3NTiZ27tV/r7I6QK3u7eT/armwW1YI6A7Cdg+/5bD9A74lQBrF2SS1K6BAgyUF9FTfM5+Ra+eS/iDgrU3JuO9nILgRLpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759088994; c=relaxed/simple;
	bh=WGDyyP+y8nYbTFPHS2rY7IcMA5uBMcRy1iERKKjGk3o=;
	h=To:Subject:From:Message-Id:Date; b=hKfjYapg6snf+4RjzT768EagD34egrtLKgvnpYuVxuFPVOWb4V6koaEk7pQufJPx6t8t0s/OrjHlMt0ZzwDJV1+txASFRgcF/WorKKjc4T+niQukbiWKYoZakg9v+Z5YOByNtY4NgkzcbscH7NxF9e/RQQnrQwkLmiqMtQddDCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXmsVjvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXmsVjvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A397DC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759088993;
	bh=WGDyyP+y8nYbTFPHS2rY7IcMA5uBMcRy1iERKKjGk3o=;
	h=To:Subject:From:Date:From;
	b=WXmsVjvNw9RBxhmoCp2WXC78zRCx+5itee6csqpcx8yMkP2fcSXt0cteyUE5pSuKF
	 j85oi3DtvZ0jdqti0bb1W8fpsLsMUUi3lgOw9CDh8o6ozBr5o3XPG3ydnAZ86J/Ex3
	 2hV4Li9S9sJcku0StAzYS1JJeLN7mo980OX31astjL3ct0zgTZOwji7jgGyUmoSUHn
	 0bsc9pyhw9kNG/ZmSLmhep1/jEEyST0jHyA+13UAKbF5HDf4vBUWiOy5aPc0qUdsCC
	 vZDjqSAaT7iN6reWisbWZs2TsdIDWd7SqQzUur6Daqs6Uk7cs15JazZI9AsjEFPcOu
	 mo8Tm2HNKlDfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E1CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908899358.13718.16788135237760963686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8383d9bdba482f7fffb0b7c37d7f8f51b987d8e78741051a7609741d229072ce
Date: Sun, 28 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759088993
