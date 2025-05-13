Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF7F1E2823
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747113594; cv=none; b=dKPedpF9JiV9eVNXqSGcnmY0l3NLbIZ1QyJCuB7dDC6nZ8kk4AT57NAWH32ARj0X0GJHPUlMeN+VetPMQg2lZPF+XYVeuXVvOGrA4JAeCI9/7DOGzad9IVr36h4cuwzzJV7BAUG8g1mPAzv5SHrvMiAsyGhKB31RPRtFQNGaykU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747113594; c=relaxed/simple;
	bh=r9g/pIwAjh4g2AH4tYC5WgL+K8Ycm8Gg44q1Od1KgoM=;
	h=To:Subject:From:Message-Id:Date; b=RMTiTJlRzA6a5Nru8OtAYWrAn3chux2w66AQedJjHrlZyZ9wsvl6YYPClLAvGaOX6981lSpCCJmXIPDfet5RsDfJE8HHRa/PWXAZ0cX+yLUvKRuKYYRh+Kn1jB3hOtKAiq+qoYvJa0V3Re7sVy1++aVCcZoDh10vPFn8q6ur87M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/qCj+2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/qCj+2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31D7C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747113593;
	bh=r9g/pIwAjh4g2AH4tYC5WgL+K8Ycm8Gg44q1Od1KgoM=;
	h=To:Subject:From:Date:From;
	b=m/qCj+2mJnjdZ0CBfHRjwKJQVY+h7AD6TUfAtyOlwm+cqSCqkM60LLIY+qi/WQaHk
	 Zv8TxdKCOB+sUSstc/3JnVor5WWDnE45x+9iKHygULs+8WfyyD7hI/Qg9uGJumBMbb
	 ZQ7AlA18KNSxL+y8mgH5tj35NK6ywk9J3KkVAhRqi2x6U7kzBus0r85L5+3hegt7qD
	 xQICkLC5fb72I/46FZQkth/zsAMMNsrBQffkPq/U9baxGX/vholRXSfucxy8g8CQ4x
	 JOva4YlANzhM5yDu31pVHyYfNcVili5nHDjGsDyoVyvx74uvIx8nvGnE2xKX9ivLhu
	 +rntw//8Fc7Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F089C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711359357.9377.13818895206490681047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca951bb0a2e256c3e89eb553e5026df0d724faae391b999f8f5c2b7499c78c3
Date: Tue, 13 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747113593
