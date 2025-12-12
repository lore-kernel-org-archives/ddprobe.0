Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3516F219EB
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765562574; cv=none; b=BqnRod7UT2iVWIj0Hwiah/OoykaON+zRnw7iJFlul2rfIDK6EqkrZKaXf+eo1CPw4KrXwfApJ9jjMnHYD0/kIC0RViLgXqsTLpt8k8okaK4ZXfvsjsdqfGRofuOsxWVsPLhZk2LUYcehxGYU0BOoJaj4TQbK8R7nXcD5e1sxt/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765562574; c=relaxed/simple;
	bh=ZW14YbRmbRnJxMotgn8Ory7i2hRq5ilfCxnADyACljM=;
	h=To:Subject:From:Message-Id:Date; b=UHV2yp3DIZu9MJ8nLFfQd+Gz4E9X3PcYMUf69p9TWdr5fIdKZniYBt/OewBrC0RzlpF3bUsbO1z+Ujj+VG1tK2wd1O9s/7Xl1VkeoG96vfbHqs1YQEPPHJTEV3SvCcfGv1+aL+W7ydwxerJ4RUKOd4ZVixjvFZytqz1Cd0gaiwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+To3Nos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+To3Nos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A4DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765562573;
	bh=ZW14YbRmbRnJxMotgn8Ory7i2hRq5ilfCxnADyACljM=;
	h=To:Subject:From:Date:From;
	b=f+To3Nos+UIFF67rob68Wp4pDHhOEqAtMKQ079sAaGpDjgpulS8o5VjfwiG13o6qA
	 Y7aYpLo+ss8HgD/+ZdYFO3L+t+Hl2o9/cYY2WW3zjTz+R/sKVDDiQKH0SJ8R3cHT+F
	 5a+aGGS+2ttChjpU3PlxGZkkjjD9iN8RGwTUVDPG9lQlDUZqyDfEs14UNLUvdmmK/x
	 367dbbQcGs9uHqzfUb3q17O5LAf4LU0Jt7ZhzoQcf2a4Log7oeX2CZU9XW+Qedne1i
	 6zQ0IGhv8MQu2cGUxkeAwwzm04+dT8DFxgX7YC1St5YFOtwTgjXtJpv4Gj7w6KFMF6
	 zuiNL5oOEROTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92243D59D7C
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556257358.1476.1952114342651377340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc247aa98d22a7cb2c8959fb9701a3eb67c3ec983d87310c477f123eba2a45ff
Date: Fri, 12 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765562573
