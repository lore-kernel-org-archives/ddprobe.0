Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCC9D527
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716174143; cv=none; b=d/s+VXZkh9L7IGUoYeOmHsZAhEhqDyNhO1eUdMwkprwH7+kDqrj622jXPqGD4vmfCmPDJN1YYDm6pFusj6uSMNsUCBWHnO0cxGWYCUqY63LX7oz9e2W07XMM+czhquapR7c9dm2AwmGt6m2YCed/DJN3dHORLiTEf/D2lCkLaBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716174143; c=relaxed/simple;
	bh=tEY57mKzio0/A4MvD+/8U6FOk4t94f/JMWuqqflc5wk=;
	h=To:Subject:From:Message-Id:Date; b=ASIPdo/8UyiBKJDCy3Ot7c1upGe5vPWDNAd2VonXCP/4PrZtaGVyezFrTq0TDAkAIWr4o4DGOCAIJsr6zAJ8RKV/DkMegWt3kHzvr4Yc8WlHS4dQqcjXqdgIUVal4+KhK0DDhrcWhQsjKdJTFVtKEFqsTrE99t9AQvZfyAjFbuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFU4sZ2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFU4sZ2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 115FBC32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 03:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716174143;
	bh=tEY57mKzio0/A4MvD+/8U6FOk4t94f/JMWuqqflc5wk=;
	h=To:Subject:From:Date:From;
	b=PFU4sZ2OtNOEZlQXncbcGHXuvSQEDHRlZW7n+Re/0b+RA4fintkCi/56YoOD/a2EQ
	 6Okp20T8K4dDWgfMZLyqSetASfMUSnOIUfBegpeyfWY7NmOsDHsQgi1gJqVQWYM4jA
	 o2xuY9Pdv912XpSKeqLGDejWgjb9G82FHInU0G8eQPseGBP8LtBWRwQoeMMAQf8u3M
	 /6ppc22rwNIq3q7xEtQ7nAfqcCO0WDyPQyBPtfWA8XHcMDdSdAQB0nKyD2OrTefu6u
	 vcyg17mIqwBGdtTIrFDZKhc0xqGKlLGUOIYJeHGe+LfD8pNXu+TICPtdIjAFjKkWg7
	 4UQVrCNDLmqmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3EFBC25B75
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171617414284.29713.4939428997421048943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed9e650a1ab8898048f209d439dfcc79a2125d8447728855e58ccf541cc7b6b
Date: Mon, 20 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716174142
