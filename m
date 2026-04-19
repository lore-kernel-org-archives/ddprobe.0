Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129BF26F29C
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776622054; cv=none; b=Q8wcEkXhvm9JilGNf/Ph5umXQKzP+B1EO5bT0amZD6dxaveCjnbvmSBNVek/HMQp/j66uYtdsWI0mj4lQOmDsqiNfUA8IsKiIhLtcLogFJbRfR9hy1/JFkh2YVaZL9cR6KRWh3zeo/xsgC8PUsL4cavfvF4LsrxPdM3A5MqkxLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776622054; c=relaxed/simple;
	bh=3ea5PiWjrfxtsUl0WoRzd2GQ9aGsWR24KI1W+Zb+bL4=;
	h=To:Subject:From:Message-Id:Date; b=mp6x96KdoVQ1NnBkZqsIjqSrWIoGrvWAzysrG17hLtqyBKLLPGDC5FKwiFKRzuTVXZQmxU3dB6LPmethdAEBzTwU4TYOuxibgv+8fVp3g7Dv9yTTnZGPIEMC/6B9HBGkXuy6h1haMJGa2cYPNr7wszqZkZ5CGQsZX/v0S/CIr5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGXLPZi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGXLPZi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30DEC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776622053;
	bh=3ea5PiWjrfxtsUl0WoRzd2GQ9aGsWR24KI1W+Zb+bL4=;
	h=To:Subject:From:Date:From;
	b=PGXLPZi2mtFa5i+bWGNiaaG+qvVbq6DFHo4MdtTt2srInZ0gdrmSbSdloRh3bf1ik
	 E1jhZjEQfNRGu+Z6FFLWwXjmatimt8IUgUIAxsLYqXeFLejHeLT7A5dUvfN+9FP7Wb
	 +wLKuFpyqpgZH2xYgxnSu+hstdO7tVatK47l8AgBFeQSb5Eb55aL4N3/YGH29AtySc
	 BrAKq7Iz6XZ1nfffoWwov6vo762bfy74oIQv54AZfub7xLCi85sJtUhCGOXXWyKgHE
	 5Orzw9juVOkgjcEW6v+F2k34sW6ONPHS0AFq/T5mzQrjhVPjz3sptgYIPbhRoQRe6M
	 94aGOx7KqX91g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0768EA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662205370.29018.17276746986580261845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b313c6bccddb0823b4eb27afe0c67b0c04a72016c0e509511a3a30edea464d4
Date: Sun, 19 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776622053
