Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586071CA81
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720945223; cv=none; b=jOqKJAbzzyvBpKT4FGq5GtR0KefqnJfcINhbY2s4wo35XIBfZNLgxsEv6FyGc6RY4csPhIXX4o5SS4zBOKkB7YXy8CUPwmj5WJYPEltH4DePn80okRrGpILqwG8x8SXu4TEmM6qELAub+wBkyy9cZ623x82y6NF0+daF3lkbJXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720945223; c=relaxed/simple;
	bh=g8TdYtC3QGjfUYXzwpnAKR1wtFF/fbSfbwCFaak36Jc=;
	h=To:Subject:From:Message-Id:Date; b=BLeTSM+7kbkSIVnpyrVKobzJ+gk+BtqVXs5qeGW+cENGvDmJ6J7vIKLv8NZtyEbo4dtDHQjLWMbTOpTrzj3mrb2RUn6E+jbdEDMaqJGBQj/84+Za76I3HWi+3IT3pnXzpAN2zQWs5SrBUOWqlzqidHiD6/EpzM42D/gzHIsC1Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsCXw6WU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsCXw6WU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8993C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720945222;
	bh=g8TdYtC3QGjfUYXzwpnAKR1wtFF/fbSfbwCFaak36Jc=;
	h=To:Subject:From:Date:From;
	b=IsCXw6WU7iZPtKpecrLqEvnMsqttBKqPONSdkBwjstkHkkjRD9CDd5hRYvVzzcuf4
	 tGR6ddsAA5VD1EIGN5w8dYmWA3/xkFxHmn1BAEyysF/LkKWJ0XAyeTCr0Xqx+fRSql
	 2Ohq6JSXgUTy+TBHx2Kfc9vG3uOQkQTZ+YmQzAvHnyqiWaFMgphYf4wqKi8ziTX2zb
	 DEc6yAe036eDGHMBr+ZNkcQESvm6MsyAupNA40a+WAwK7/zkXPPNZodQEk4w+P5KiE
	 KhtH9UoDKgh6d/RFbCM7RL+OctRkbB1G1Ng3HKTr0q2uriliMhOFN7NKRLwhDTGMMG
	 pqkHJEp3d3Diw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAF1C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094522276.32143.3646411997542975237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35a7b87b881122da6c3946d6490b14647cf9497a6f60366bfcfe3412c828ea0
Date: Sun, 14 Jul 2024 08:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720945222
