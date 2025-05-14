Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5EF1C27
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747181394; cv=none; b=o+VAVnBWRlPi/Fw/WwtfLyHdEB7cOvSwmt/WKBerd62vHzXnuZRZcp1nunJnI6HlpoJlUNO6CF9WtYyZokTgQG0t2hcnHocGGM66eFpzit+KTAgFbARpY1dv30DvJpu6bSGjJ5fgWeELhv+CiKwU6N/6Laa8JzY/s38I9EgVQeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747181394; c=relaxed/simple;
	bh=EL133izwC4qB3ju6ZeAo0tS3Yp6MRpuEKSl9Uuj8VzI=;
	h=To:Subject:From:Message-Id:Date; b=kZHufkMfUPs99fRBM5yWpFqZ/lArgvHyvYYhAYNDYenhkSqWaDOoRdQF4tpGUsIcc5WJtHnn6Me5WkewZjDos8F3Nto2tgkNK4u6ohJhxnXA2VugVNhCfMm2Dhs0bJynzwS8sxUP+xkN0VKuYethbPTHIcukbPqDMwSeTC+c9WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9Pg+RJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9Pg+RJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FEBC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747181393;
	bh=EL133izwC4qB3ju6ZeAo0tS3Yp6MRpuEKSl9Uuj8VzI=;
	h=To:Subject:From:Date:From;
	b=W9Pg+RJxdQJzHkEeRkBubB21jOTC4rr8qAQybCKU8X13HNUU59UhHg8OHfwtXfTIM
	 2B4i7UkMQ+u8IqoHITAlp0p/qQ9KPTT43YA4obspUPoeyu36aCb9SEUNdIS6lzRdgF
	 2NRxKIs/SMbW8a/Jbq3Yk2ev12kRCTBV8jQmuqLYVTyckNUV3iP8966KjKNVVc7XUI
	 HKLOGvORSscgS1FrKBIjzJtOjbNxu45tyHcvOkMjOBQhyB9pz/i14gh69f7ji1zteO
	 NbQjWxjwUASmWM9YOKWXa5IKFmCXWxbYrRQ3tkqEJsy1znVY5YEeMY5fGEkSsV00lS
	 JmZ9ho1iRBvTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DEEC3ABC3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718139357.20408.403180069320756321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c760938927b3d25448c6cb46c19b9e72f34dd317f76a0f5234f57da087e304
Date: Wed, 14 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747181393
