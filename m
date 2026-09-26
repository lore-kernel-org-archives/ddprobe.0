Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691AC27456
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790382634; cv=none; b=X0GxkzmRQy9lqV1zAY5Rvlcwa2UoQrhb2HLbquU0d7m/2nT4WF8CStT3MMNkptU63WLue3G3cVINaJ7YHhyp74/CchjxKPlSK+Bm/W1pdqtn67lyQVVpEXhUYVgxh8geDTLqdSHQMBeypZpFF805bLKrYUUfUfhoVUnyzBu3lp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790382634; c=relaxed/simple;
	bh=iE478S0V9fXeNCi+tq1DIvuXtW9kdT9nh0zmZkdV/3M=;
	h=To:Subject:From:Message-Id:Date; b=ZDkHoTSTqcRDMY44UV0VRmfiMJSiVUGGo8SsQ/VP8WUZJYe+mXtFECbn3H/tNY3gkA9igpsZ4zAIQLGG+xbZJyyE9FJ7qPMsmJn9TQrYa2H3ta3GM3Ak8Xj9Pz841+On/jZhTIzz2q7FOk3Zi0dRbfsh6ozFmU9wV5i48Yj0x08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCQu2eHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCQu2eHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE76C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790382633;
	bh=iE478S0V9fXeNCi+tq1DIvuXtW9kdT9nh0zmZkdV/3M=;
	h=To:Subject:From:Date:From;
	b=TCQu2eHvQNwdI/MGAxLYfG48+bR0ppv4ZXWCHU5dcDng4PXgZOJdnPUmoA+00RoFe
	 18sWKRFMSl5CxjuOXcSfM360J1s63+e5dSsUbM8i8B7h2oKExwM87iBQbhXgADJTaI
	 O2q6BYxSkQDw10ZnkT/D526hivFiy4bfHXCYNRXZ1AkOs2ZdkDnJ3rGIOpgiVO+9+r
	 /HKGZCOkePlSTly4+SKCRppdiNxLYqcZtBGjzMV9urTZRa83NOH4Z1snNyZxIbShSj
	 XWFCkEHLv+Ib7bNpy0bjiVVXr6zBSIt5vG8UJLEQNImpiiVrt/+AELDE7H+UEJNz/r
	 eYq/RnjEUFb6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F47C98326
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038263370.29897.4722464330018026555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ef4466882d44ec8fe8a9451ed96848b7cde2ec14a41c3dd84447da1c76eb0a
Date: Sat, 26 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790382633
