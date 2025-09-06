Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E121C5F2C
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757170194; cv=none; b=J5dbDB/+ekJ6mrWooZutUzfOPmw1hd9iEbhxqaIjpuA5ifJuOD8xdeE4EDtsNjvBupxkynYCDxpDIh1Hwxkh1LMJOtToQ2AS7Pghedq4SbxTI+bcsO/BpJXN0JrMuLp0c7l2FP8nBex9koE7hmyNj3De3Ovu2dXMwQyAGpB/0EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757170194; c=relaxed/simple;
	bh=TzvKTNrZnRWgFB3LoDvWQJkHFo19Th1EIVUzNzOpyYU=;
	h=To:Subject:From:Message-Id:Date; b=Ve5sub+N/yEZ9cRzA7x8Sy74Hu56gSord+ko2Jli3muV34RUnug4ZyUuPpmm/YgKbM5eQcqhj5yQjkRM7s86hDbdEohY4N0zuV7o/wX9+6ZaWgNLGhOo5VNfh4qSp3uu83REymGDbHfakU/OC5HSgnpaqdgAO+YVQJWd5YeK5KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGHxE5K0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGHxE5K0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A660DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757170193;
	bh=TzvKTNrZnRWgFB3LoDvWQJkHFo19Th1EIVUzNzOpyYU=;
	h=To:Subject:From:Date:From;
	b=LGHxE5K024zjK+9XhWvo5vh6BfqvmlmCya3W0f/xbU4IWIok5g1R1ofklkOil8Idm
	 0Tzqs0n4wYERfi+sXbca0n1sbIRkdg6XjCEyhdOlSA7n7jyiALIvfW9sBErAQzSSIr
	 E7pcklk3ffyqcsyml5rLWAC3IbDr14nGHBuj1sWv5X335oPI2g0CHWsEim81SL/R7V
	 ghpO6X5YEFpfOyuMYYKIgpP48OVSEsqJhoN8DJRHONfLDg9R1p5g14uaQRag0dEO5j
	 ZAp3By/Sh84qOYmTWZXvTW0qU40LhfW1vM+fB+WZOc6p0szbsHdrUpYAra8ZFThWAE
	 A5s+GbT3NiHYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D45CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717019357.23723.6078097967558994849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc8120efca1f029166dad65795ac9459a4f0c336ec684f87628f77005952ed8
Date: Sat, 06 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757170193
