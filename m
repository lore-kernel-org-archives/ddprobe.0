Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3771519ABC6
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760546994; cv=none; b=dBCDK7UnDo3K57BA8JOpWJ5hX+Qm095p2HgrmMneI4hhLEmwCSSq8rFn6aOGuPwmDCD1FJZCICGAHtrMjxnYbAkGgYnuAf/a7T/TTlyl4R2utaWldIo/MqjV/j+JMuCOtg/NvH+jI578YPjoQdBbLfAhC0l6ZHtRDom4EfLkfmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760546994; c=relaxed/simple;
	bh=xpPkIcXADxTy7DsKiCyfSK+v8IEIDm7ZmAGU1hZl/Sk=;
	h=To:Subject:From:Message-Id:Date; b=Llf90a3h+0l7r7oX91cKpIHHRRtRBKPYq/fSbwe8EiCOfh4Tg7MovVNu39vFhjeq05DhEIa6Peq4HbCeUB+VjQh/cnYzetUjdT5+/2GWcmCre1s4+ElziscAAezgLy2uIATGMNKCA2OSQYrWps81guBNhRX2+6mAobdS1cekaVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKftNq+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKftNq+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0EDC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760546993;
	bh=xpPkIcXADxTy7DsKiCyfSK+v8IEIDm7ZmAGU1hZl/Sk=;
	h=To:Subject:From:Date:From;
	b=qKftNq+MhE2rzChgARvGIc/PslNio0WlBYrQfs258j4lTjGEzCVwFqWmFaTNehUs3
	 gjgWPhkqiIWFxtWqIiK+rIKTRzyZlWlG9lBThwsj8SjpgGPwQW5YwZW9JNL2o5WP+k
	 Vv434Mr5dtnXfAlwVLqqlJAnhfgZPd0IoGdRHciVkxC8FGP7NJzj0+7To0o2q2Z5tk
	 1uNfe/Q0okjCFbMj+YQb3eAZwAw7g41+znfzSVqjDxDCDYbIYp6Ao9oxFcj48Syinn
	 fm+StXA4rSPuZQrksSjpy0WU+TuhQj8CvNWJGmdLFt9edPwJz/F4Y3TZ9yuNcIlCQc
	 8DywEezHcGroQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977F1CCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054699358.21717.3234743918851418189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5898caa5dc01bf5228c23073538211712d3f6c9542188f599b44486e0e92856
Date: Wed, 15 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760546993
