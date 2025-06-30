Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B91279D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751312394; cv=none; b=QMdFTHKS3eF042HFWQUxqckcfGGtT+GwRaNykiKSTMQKQLnHvNWUzufYXeaiyP/5K63ZTxQHMza2FHO1BwEv6SqUi0yJgP32HDOFBnlllot/6GY112XhdnW9t89EQZzIV01973u5bpnMAOobKK54JK0YS+eN1Zjca+U3yMnnC/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751312394; c=relaxed/simple;
	bh=4GPb7SE6I20Wk9P8I9JBF6Yf/1xjT5YsZmXuTS4vvQE=;
	h=To:Subject:From:Message-Id:Date; b=m4jPtmvuzYR8cd7wtlbGvzbLFbnN8GuoxOAr+CdcLejfwWGZAIJ6zvK/quGgV3RwyMH8sHVVCXDrLQ7ljje0YfzO+dI99QwZagL7Tth6xyufUcBj2C/AW5fydgMf5wQ06kD3Ckti/hJ1Qj9hGImrCB6wT0rp2R/aatPAHv+lsJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjlsSyJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjlsSyJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B5C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751312393;
	bh=4GPb7SE6I20Wk9P8I9JBF6Yf/1xjT5YsZmXuTS4vvQE=;
	h=To:Subject:From:Date:From;
	b=RjlsSyJnReqLkgADkovYxjVAxs/M9Ew6DCvCRmxzH0E/vYv8WURF0lYlHIHwqXjqO
	 UC7PbcOFqMJZhb1ZOlQka1B9WWAgNn70LaczTPU/pOPdZJvw8cc7A4WfvuBWKwqvzM
	 HZaCvea1t0u/26vdIhF7YWXN1HgGhAl1dnsYoSdDEo1ksG5I2gM4A8wklHxTrf2YNX
	 9WTWqRTGxovEuZ44rA0k76+KGEUgkJTYTH8n+EXLfaRbFE+hirV4MIYKPYpSrgYW3W
	 z0Eqi8UvtULc3onM785T+LFLmetaXfxe9eBiOSD6w2u/Yt+oPeZoEtbZAzTyP4OJDn
	 Bm9mdFFY4WQow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91163C83038
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131239358.3116.3023565631961752182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58fea128dbaf3ffac500c6b84988f280b6fbb7f2e765f8d936613dcfe8094181
Date: Mon, 30 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751312393
