Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189CE36C9F5
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773271494; cv=none; b=V/l0/G6Lx7HphB5/WDd6DIxmaRpz8wbFCq3nA0dOWXjg5IrgXc3fbogTEdaCT87rgyNaYYDwqmMTU9kq6KaFI0ROR+CK3bGZ/aX8SR4qDEbiFgv2mu1ygtfslL32ykEKPm31YAOwjgdNGeUgqohomTmnJt9EN8NjlENmMd5Aymg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773271494; c=relaxed/simple;
	bh=vsg/sUmkI2NvLX2N7XRtbr9vwqMy47kYvEWXsKtWEDM=;
	h=To:Subject:From:Message-Id:Date; b=XVRL4xNIo2TlfaFhopqLkOESfZycIn6uRv7s86behEkeX2EO/fqOca0lAEpFLNE7N+emrdnnb4932zVVUofa1xiOVQ98PHR2EJX20/wBugaQL3TUeuob5M9u4jLBHU6rFKbElF+NIeuWj0UeUVpjCEgKYb8XxykPW+es53U6FlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GztjPwDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GztjPwDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773271493;
	bh=vsg/sUmkI2NvLX2N7XRtbr9vwqMy47kYvEWXsKtWEDM=;
	h=To:Subject:From:Date:From;
	b=GztjPwDGHVRWYtTBwGQBbbHVCyzcahCSsWrPWO39zPozYQ4K8HGLx7ZtqJuii/bfx
	 cMs4BS3Mx/mgcxKlF4aL3smrbuGgXde2B3BL15+h5g8ZvB1xGQLTSXS6iqDHe6s4G1
	 LLN4347TFov/ZCGLsuYaslN6vuEy83f732XTRFGNwIEePuOsECJ4SJrzxKiotWw4c7
	 XTfUZXYRphhXeleq39lnBWQ/QpnS2IRNu6nIqwx1MXvL1dhPCFkj/SkjmLjkIkzDio
	 wThPhWzcb4b3okWXc56IW85MdRmgfcamnlWrUcSKKn0NrsBt5CtnGCCIrWEdO+Zw9m
	 v+375TZTGVkGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94197103E2F2
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327149359.7775.17060574985219943717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb7690ab0e72a88008da1e00fe80bd5e1135d9184c56c25b72b7a8548214acd
Date: Wed, 11 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773271493
