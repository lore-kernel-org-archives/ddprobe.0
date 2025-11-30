Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A4417B50A
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764482574; cv=none; b=cWm9yxaOdjyqGgchHJP6+SHejZNHkwJNXRA8Cjgb/lOvknol77N+waETWXsQvc8eGb33eGPWoFAQ9Afx4WNCnQZeG5Zaw/EYpoGMgZf79QNAG5J9HpRCFEMdNDsouAL35vkPNHjyHOKdKXHPJ58dffwoQrc+lgsV2IaCd6LfIEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764482574; c=relaxed/simple;
	bh=bcq4QWFgeRiBjIFVB5aOP330YotCaW8wubePb48+iTQ=;
	h=To:Subject:From:Message-Id:Date; b=MhjHNLFnFqQUANOdCPXrnuy1J6INO+FIQPiyz5TTnznAL4RZWUI2CC0kiXcbiQDwuhfh5nB54FcuDNregV+oZIAo8XRxf2zB19hAZEA1ojCrgphQKYh1OvIOSwBCmC1ZkgYVd+74Un5YzxuxP+IMV4T/Oy9+Hl8H0NhByV7sORY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W29uw03X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W29uw03X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8788C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764482573;
	bh=bcq4QWFgeRiBjIFVB5aOP330YotCaW8wubePb48+iTQ=;
	h=To:Subject:From:Date:From;
	b=W29uw03XbdP6a+0Tt6S/AH2e/i+iPegi0NleW+pLVwQjzVMwQC9UpgEmKrIaGD7JU
	 yPaJRLtfZjvn63BE+yw7rt/vQGvGHUd3iMHro0I4j9AKZjR4xRJiwAWKCNqOr0oex5
	 XnFS8kSGVPZq8VKNzzyG+UoSMxh7y4OQzNuRvRe2wS1LbLpK8PaNDSv4/spWmD8CRg
	 QSV75sgtxUPIGwJ1I9/ZvbkObaj9RmUiKVxMYQzAk6mIdj/A5BUthESGPlVVf5MxtP
	 vUy0JM9ynf/Khar9jUt/4Ys5sLtri+kv+hldVviRI4UGyMPOW/h4hooHZJt3bVCU8+
	 Oib7GjY3xq0kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93641D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448257358.17964.18239149450199165064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56763d866686be06c32652ef416aa04ac72e33e68932fe8de30bd04335539a2
Date: Sun, 30 Nov 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764482573
