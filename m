Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25308187FE2
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729873554; cv=none; b=XxcEH/STMVcG4aqCbbXYQNQs5WCV4C3VSldTWk2oFwovTv1pWdQnH1R7qsIFYFQWMXiXEuWu36J2oN1t3RLwbI4HPCE+oKtZnc/hiC/bYFbBogBQ105npWy6ltSEm5aZIuMaNWGDyyMZUlWq9jE4vG4ee8N5bbCq6AXvsmhghuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729873554; c=relaxed/simple;
	bh=n7gvNLwVvBE8ZNInlST/0nSEAdQpR8DcojH7k1i9tg8=;
	h=To:Subject:From:Message-Id:Date; b=LGZKsyFI4WlKN8nLXRHKcCJYdUtUvXgjKbfZT4WM4zXPmnPo6MzT2/TDknxm+semngWMVo4hm/FcZomgsUqVMtkS+S4Exm4iTq4a9IrdBts7c/FY0WIDzLkNX6zIrwb5+jh534FTtVmGjeE81js2iZhFa1b6EgzXgZhQCgP0tNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBofwN2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBofwN2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B102CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729873553;
	bh=n7gvNLwVvBE8ZNInlST/0nSEAdQpR8DcojH7k1i9tg8=;
	h=To:Subject:From:Date:From;
	b=SBofwN2Rgus7wWhl8v/nxzi6WVvi8f8kfs4oKhrOSP5JMynyOnFpYzYNtFPZ0jXdG
	 rtz4iHU5hnzcXxosjE2rxbIBgGBsP0mnk3iMtBpyqMFI4dIeLHRladziqpU87Li3d8
	 TJ7PHEySuMNMbENea2zKALgvRhdeRWqyJfzhuWz396wTZQ+aAvlJG8jAfDrDgTFwmJ
	 RPzR/SJ/epL7OHhSLWsrUBJBwIQ0+jfd6W8o1Y5b2Eqdzci9Pw9EEl80avRicmNWgb
	 N4LdmWVff3t/xAZok5TqXMizzWihPwSwo8GlGaRPOptfOFjiHZGYWlqx4z+a4L9VFQ
	 jrKzKOrW6EUeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AACFD149C4
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172987355362.8423.11644065015293727857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2803c6a54a11b28c9dc94db138e596246297e7bad899787760d13d7b3b4043
Date: Fri, 25 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729873553
