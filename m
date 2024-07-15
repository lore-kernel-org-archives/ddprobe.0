Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABD7B181D07
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 03:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721014343; cv=none; b=ck8w/3iHCpKbQcUmI3h1WkXB5T5rS0l6hOGLLpiFr23ZTBzOOF1A5DN/7msdEW8A+fr2b9PHKQ4f6MR8kEuwLa+KbsjUv3yckvCSdHqw+Xs9wNaLXhngSJYOaBfqj7xfnXOzdzQNfrbnm/r4MX34bjeK3RP6HROzluJ2mietDhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721014343; c=relaxed/simple;
	bh=mieGEbjRMqMEoDoc2Z5C32p4tUhYZbhIFHFuq3qYo1o=;
	h=To:Subject:From:Message-Id:Date; b=W7F9QDiWGLkgVg/q8SbRDAlvWihxfJWuV2RlHeHeqBhOIe0N7lEZVaETPc9dET+D9D/4Haubocp2OBG1qoxtsfyGQORuZ/iv5LIpVI7jiVAmgU1uek+3IkX2L7sOtydlkr45kgh2LA2ViW75Lo/Q994O+07mjuSdvdwIhi1bti0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QykAO7ke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QykAO7ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3A201C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 03:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721014343;
	bh=mieGEbjRMqMEoDoc2Z5C32p4tUhYZbhIFHFuq3qYo1o=;
	h=To:Subject:From:Date:From;
	b=QykAO7keaeELMo7AJpEEgBVSKCSypai18uC/7FAtFc4vDB91bdJ7SOFu+NMEAffkD
	 3bw7Bk/GtrKHIBAV5jNL9n+WwoB3+DQI3tp6XQH24RW7al27+ck8FfbNstpriMOGm5
	 gDmAXeQbizER1gr1BqhdbF0v6GaUv/vvqKyl/4B48RkJsh/jJdiNRx4cMzhvkTX+xr
	 eURCrCGdYlh/09edwK5VyyMSZbopQlsCLQUp7d1MDfWuzX5wuuUQ5bkv+AzWwUYBeH
	 gpZQxbF0nXs+lFQJVwztBgYzmcKCbEAHSJZjWtfea/d9+CiJMJ3MoOR4dUSf0r5aFu
	 WWs45XZVvED8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2EFFC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172101434287.3923.8476184026231341493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935f36dd25133a8a3458ea8a57312d3961e130b5743546d83721af5348a8270d
Date: Mon, 15 Jul 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721014342
