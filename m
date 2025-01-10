Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237A316DEA9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736498754; cv=none; b=smjSlJxuUEowvZlsV1jCnuxFOdM51ccah60JVlKY5skqRnOsBl21dnGD3Z5UGWRpWB2IQjSaQGb3ji0uK+p+USDPhjK/Gtc1AqwAkkqGif2EOE13SBbueYbX6rsFyhF8kcRRqJW753IWx3C20qHpiPFyMBltwH5iRD88B0ph+KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736498754; c=relaxed/simple;
	bh=C5n0+9fspmsJqGizoQPKwpgVcsc+zIfAQrjDNQgElx0=;
	h=To:Subject:From:Message-Id:Date; b=CTbzw0/wgrRYizQCLoR22ErRsF1A/TWozi+y7L1Yc/G/bll9Mv3jwYWHzHJEpYSDsdk2Hb7B+AMGi5X42QkaXadGnsbTSav9EgJvUPlKgFLymIbhq+pGm6dGsviZVv/NjbmASyaenyP9xHIlE+4qkpfhalFlvmZz94yysJm3flw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mug7KB29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mug7KB29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F37C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736498753;
	bh=C5n0+9fspmsJqGizoQPKwpgVcsc+zIfAQrjDNQgElx0=;
	h=To:Subject:From:Date:From;
	b=Mug7KB29Wx1iTxpFXRXHyq3uYn4WLfjpchajNnEhgRRR+ov8SwWYK0alKMJs4yZOf
	 CAAt1QVXVYRUabwKAhtjdNomBgj0Xe5JqGw9XHoD3xQvDtWN5+JyM/JvyPnyM092Tg
	 xq3Ds5wWcrFJDQbHDA9T6jdvp5gpr0O8h6rxM+2KSz7ybM1Hn2+aEUSCmqwG5tR7/9
	 d1RxzYur8KiUzzZSB/ZvZ9wpxlP95c4ln2m0AMzM9pkUXImo2yp80W9gYPF+hMZv/p
	 T5jNIh6AMSEYUTpscqsAXwIlGcutgjEoBX9VD1ATuInTXOrtWRGiM5Tw+aLsZlXYS9
	 GokcRpdd2/mbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96470E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649875360.17278.4550792633252320459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2fdcb1553104676004db22f7cb68926662951beaa9d8de634fb00f7165c194
Date: Fri, 10 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736498753
