Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132FC253932
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753342194; cv=none; b=ANCkvPA2G/u6F1zE4m0JSH/xDbJLyD+JqJutuMnCxlxfREriZ79dAx5FUTIMiI4jy+dRqFHWyul3Bb3G+RmMwLNa84X6JF2s/pEokvVFAI7/6zsz/bbFR2+watIe7DytP3dXGwIks2g9gKHaBQ5Z1As1BAfyjmmSb7oPBCXP3Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753342194; c=relaxed/simple;
	bh=IX0/uQXPYWTPllf4G0k4wN+xcdpKBoUCrffSiW9LlJ8=;
	h=To:Subject:From:Message-Id:Date; b=lLiWwV5GYETF8Qp2wwWsJeYV5lk1NlOl5yqv0Ac4Z/QuJtqkGVgj4zvszSQUpdWHr5Fkxrli8Qru2oWtWMbJtidZfVxYjThj+rSS3idd1qPPulp/xlHmy7oXnP7xvUQQ2R1AGSRqeB/YmD0PdrWv0QpAoDk94js3rqLWrOYhJ60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONCmEIOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONCmEIOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFF5C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753342193;
	bh=IX0/uQXPYWTPllf4G0k4wN+xcdpKBoUCrffSiW9LlJ8=;
	h=To:Subject:From:Date:From;
	b=ONCmEIOvFbideGvetZiofBVz7ms7Ez/ten5UbQJdpEVtvaldBisdjz/LjidBc4ubm
	 SQmivJ2TSb05vjRtAFHLsfYeLFOqpg0EpAeOGRzG+iBGkDsyW4JGaTOYKv8rEf74J1
	 aWU3lakOEwaMqlYTfKsXftGD7sueYtptwFZhrcAQ9UN40vb93BCQjuLzlqUwSvh/hr
	 NE17KWzWECvTb7X73FtwV9gVDJ+KYCgOt0eNZv0KKeZCm+Dghql1F7mYVInboXsIaQ
	 Tkl487wHaiIWCywXo9mg3s9j7J0h2xzBLzFmcT+SFc4XiSCrfrgDeFOfQW3hwv8WpS
	 t9tJ57Gb49tMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3FC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334219358.735.15292248338349452940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2040c2efae4ed122a4cfe793a515cc4d1e8e9c6044f4df6fda59a258aa9d49
Date: Thu, 24 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753342193
