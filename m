Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CB739446B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782472654; cv=none; b=f7hZRRzA8RAGIEP8UfzYKls1xpOXvD0vbpuBt2wmybbZ0lDP1LX5ut6a/Se54x7UQMqhrWgZes5rjfc/Ahq+dhuZeCtcffcPaaccfUd2w8gGEzzxRDHNJ5OHy8CWaZ49hlhE+MYpNPCiSaYPZS/9CzLp795Vr+gQ+GhL/Swizio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782472654; c=relaxed/simple;
	bh=kXQ91Hf0d1KZQfsVGlWVgEpR5gwZhR0vX8YMwtdNq0E=;
	h=To:Subject:From:Message-Id:Date; b=KEj07NmeQzvBYfje4ogOoXWnVcsiyXgQczsf6TAcUbAjaFUKnQKYXjBBUIIWg/nAm0AaFRtW160nnUzHByW+7+5b9YbdQnbbzX+FuCrbsmxecEP45/NJ+l/SzPjgdngDjvKOYLSKqc7KBpA6qklOdIMt3/QkGnYTecDb5yO0RyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqTdstfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqTdstfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E7CC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782472653;
	bh=kXQ91Hf0d1KZQfsVGlWVgEpR5gwZhR0vX8YMwtdNq0E=;
	h=To:Subject:From:Date:From;
	b=KqTdstfL1mN8wUQQwqV+XFttduiGORBSa/piyuhHVHnCUCVON0/XH8b3962MwZbj0
	 dWaiMxBeadqkRF46vumTTy9XTT3XaVt2YpWx/gp79XJwt4A2NCpEAXsw3tlYU0xFhi
	 mV45UXZ/9OWOkhvVzlL2z2qJSdg8bO/yWGhu/LgWIccRjVUjYDEVEJqI1EPzDuRq0C
	 7caSD08By/tYOGpFYcfd7mRN5kETuQ8qCBjT3EBxW40ELDSAkeOPu2CAHxhLo3P9Z0
	 83CetJb9m0sac7WbRjXItxZWeKd17jcRwYamsUn610cQu+rfvbsUzcIUY2VDM3sWxh
	 uMaBmtZJGfvhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9FCCDE013
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247265370.2796.7921011934464015825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccedea34c7fbbe04d74beb570842920313a694b085e81cdb357342621984f29d
Date: Fri, 26 Jun 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782472653
