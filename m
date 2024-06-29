Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B09E273FD
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719701063; cv=none; b=jkzzbOMb3slGMZz1aGs7WLUEoOcGHGMvcEyIRwH0bM+yWJFYCbjc86tHCI8++MXZ//Jb7BPyvhDVMgNiEzoDLdaA4E23r2X8K+xW5q//mWIxjvWlc+RuN8e8xYUQwhtY4uaJj/P9GahzixTANzh0MWZ/NPeT8QleTo0yabhfr5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719701063; c=relaxed/simple;
	bh=fv+3xDbGId3Zh7wVfn4w1dDgZB8fmdL4VQjjjKgspBc=;
	h=To:Subject:From:Message-Id:Date; b=t/ae/i98XkAelo1/JwHmyeM3eLqdGlvD7lO174yzN6nU/byBN5ygizyW2efz4uqsIiPHyhWkHRVmlE6T/sLxMKeHq4vnW+ba6dAmgSp11RZD/6m+uYBw/AJmvvEZEOVoj00osxkUFuFnDIG3iRIy7yDqwTHNGgkT3KDpDdU2p4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSoqkzpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSoqkzpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FF9C32786
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719701062;
	bh=fv+3xDbGId3Zh7wVfn4w1dDgZB8fmdL4VQjjjKgspBc=;
	h=To:Subject:From:Date:From;
	b=MSoqkzpldHAu7RVmodQIxfQzhdZURqKo2EriKO1IW6u8xYaeQXk+IA95QWXlbL1HP
	 ackbq0qt/ChpMKYU5J9eAZUH6JeSChRAbWo93IGgu7pdjEAVVJ71h4OkSJ2phWlRZ8
	 VUu3JzWNlXkugEIqFdl9aApp7djIsIHRGpmUQ+aJTzZ0LkEx07iG153ozyEjZZWrJD
	 YqAAfPePg2GeNqRgtAto1UFPF39ivxGFydawYffiU6s8Z2o0Qedmtym+AgSvNoTDV9
	 vq+OFE10wnfZXLL5NpIbzrYOSJO7qvhz8q/DBOD66IXKQ8zXgVMqj28KaF0OMHxwo2
	 kxwjkHMTtkMfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD457C30653
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970106276.3815.7856035521312323803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 579f3759baeba2ea6021bb3715e145a5fd28cfc2a017625a5b260ebae1193558
Date: Sat, 29 Jun 2024 22:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719701062
