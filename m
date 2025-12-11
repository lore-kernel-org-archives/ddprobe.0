Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAF2231830
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765429974; cv=none; b=QbJCdPkIFY3B5H48lDFRPsHGU9T/wyzsKA3HYfm0sw1kj8URoYftJ6KjFamhuhPDSNn8d34grPeC3Ekzh7WMRIhcB44qRMKhveFwm8ONNTJzUvFjY1iPTmfhs5rIS88dih9kiKONI4iWR8vQF7i7C6YWup3accuA6QwZSZcWeuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765429974; c=relaxed/simple;
	bh=PvzpVJsuGAjHZt9g9HuEkyVXfSeiq0flNmdMnBlR/mk=;
	h=To:Subject:From:Message-Id:Date; b=iN6BM27IA4dDd3cEjsPQ6VREh5e57OM4GDLysdvI8muc7sfrRfSabTYdJYjC9xj+H/AA7GLBNhyfcMQ03ZCOAumREEopB0YBJ2q6ysVYkLMbFV3A5UcJekt3qrwrIunrDWkWYIWJ4tGWm6OJdw5ik1tqCqxubakfgKb8DEFnW6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsmfKqrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsmfKqrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AD1C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765429973;
	bh=PvzpVJsuGAjHZt9g9HuEkyVXfSeiq0flNmdMnBlR/mk=;
	h=To:Subject:From:Date:From;
	b=VsmfKqrVH75VWX7f4QBVyjusjoojOc+VaAlEnh9XU/nA2XZOEj6zaWgGTbxlnIhKN
	 yISchpmnAKIWYYflFkcspRdsvcbQ8dQlrpC8WP2snNqWBA+FddicJinOAd2rvAY1Tv
	 8ArYfnbbmOT37VZUXrdPhK3Uhlsa6GCrxbRMtTZcLSu7Dw/8g/68Vdo4HAovgQnVfN
	 fxl0rbdY4HJyDvCMNVKh6kNhg9qFug+v+MkjJAaDdA41UZMyGCD6rqO7oOvrxJ5iSI
	 KrmAdmEWZc4ztVZ7cExHz5xnvdDonH/zPzuQonEfAzYF3SLXQhKDUEWaLAfO/sNdor
	 1MjRdUAixZNCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7D0D3E78F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542997361.471.15327902160686203009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa848ce38475941dae87f66997eda2d294a75c7123bde0186ae7389ef6f03709
Date: Thu, 11 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765429973
