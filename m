Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22103E5ED1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774947293; cv=none; b=GtAsQ7BDeb6/7GNN8vzoaIMzjgLDJTnFdf9697OfkyzzMK7/R0IVsx2Ri3Q9OGCnc/Y4qRl7NX21Z5rzHhsFep1wVpKgA+6G9C7g/btks3eA+Gsa2UWAyFPDuwxBM8U3lhnl4177JqoEBvSE3X95p+qhp58XmEyQBZlF7037niw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774947293; c=relaxed/simple;
	bh=x59oS1MRjIMsPWfyOhWjmxdA2cJNcLBAluX2X+4vk4c=;
	h=To:Subject:From:Message-Id:Date; b=b1TwTs0+LmX7EysHcjwt4iKZPvWQwlIaZTT5FCiIPkVWl17lOxgZWb2lRpFc/+CY6/5K46Wzi42CiehzhugEpdVvhm3/rDSwxox5TOxfYDc4BtE6cMr6/x2Xl5fVlwLCVSBWSN3nwDXkYlNEt4szAqyPFstOZw+/CHekAXFejII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsD5hWTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsD5hWTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44B3C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774947293;
	bh=x59oS1MRjIMsPWfyOhWjmxdA2cJNcLBAluX2X+4vk4c=;
	h=To:Subject:From:Date:From;
	b=SsD5hWTjpv0e1Booi4yh8prLDFGXqPsuDlpp4Znao0/+HiQRvO4sJEjp1vWWfRhFo
	 jAvxGLGkIRyu5pd9KiQQ1eApcZUaLclwj1zMP18/ryMzylv3tW4IROz4uEztOiuuKV
	 Hmq38a7VgjtyF1ZTWTdgQ3bRTiKrmz7pq0NgX0Mh8egEpH7WKzdN5r9PflBhCMyGyf
	 5QetXV0k3lSh/f3XchTHQHKxsrEbhbvXvezlDoUA0cVfLJuWECSr1a6QxErk5v391y
	 1QMi2GSYCdMMM9xoL8zyxvwCEshyQSpA2e9NC+Ci3OT8jvzr4rfiQnue8ve2cAvUMV
	 kVbZil4Ajid8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94041FF60D0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494729359.17108.3353389526271703025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9259d32663ca1b3f02a9200b61c1942b7654dad716c4621401dbb5ee88df4f06
Date: Tue, 31 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774947293
