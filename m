Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE2F2D595D
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758460793; cv=none; b=U4hjB8/j53TGpKPjNxqbR6foT3oz5HqKkm8rLWSYycVOkU3JUp/Z7WX+MBBHtX7XQAMSlt2hMxUixMnSHE31obmKAlnjW/hxo6ByOqc1+7UVMYolQe2U2ApQk0xEtKDNnSKp/79qNH9atomMQI1txWuxUi6lWTXcEQ7AvFsuQ18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758460793; c=relaxed/simple;
	bh=JZf7QVzsrR/yBp+gtvsUizkVyGUk+SSJYdbhOr6twAo=;
	h=To:Subject:From:Message-Id:Date; b=T+wgypw7riATRbCl4Z/KxNovCTB7FPAon1tAEWgQW/GtCQbZrCcZdryHPFa+8qu+fOiEIMUh3PY9fzHOptDEp/9Vj5EUxodVUQlXYaRcyznnOcS87+N7tzzjbuS7SvuCc892QMXlCiJ3tTLSqk1NcP9XW4ZQ0jjkXP0wkKYy7KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulyzsD1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulyzsD1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C43FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758460793;
	bh=JZf7QVzsrR/yBp+gtvsUizkVyGUk+SSJYdbhOr6twAo=;
	h=To:Subject:From:Date:From;
	b=ulyzsD1h/3xXos5NJml4uoqSjoz4odPtyVVF1N8MQOVr0Z9m8l2+oI6cQ61S5BdLG
	 kSjjdcVIovZW9m1EiWrvw4l5LV8EeoWAx0O/vZNHPRg0wL5s1OPJUSL4/s2qzuMKpm
	 KaKW9bEQDsnAUScnHqeDlp6LFsCnBWeTT9hXmMuBXIOcDDxUW+rk8Dq7EGCfaV0GdA
	 a8uOdj4jgoOTGwXOB4v5dmAXAe2FJEQ8r7cSSo2xBEay+HDGg2RPFvpeFT0963hYwk
	 BhGQAwGEC5OrgCM6Sl3mTw4WR2etggBknc2nhPPWnow3N6a/97zj8F3BuxvUC1qKdE
	 CKCFR9stqRNeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E87DCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846079357.6706.8860028827431448052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f6ef2673af0e98da04e2071fc03a7679d597f62fe4b24d54d94a2145bf4311
Date: Sun, 21 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758460793
