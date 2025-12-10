Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7B91E5B95
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765345374; cv=none; b=pufqJcUSdak9G5AdtlMw8WDgtvtx62mK664hfqlItPVnROLdmc0eV7IQhkk/ZRMBBN7EPovKVKS+JPyAxSz719yxlcHJjxgfxlw4uBCBwY/wSQCmIVvrd0od73L4Jh5gPV9pi0GsaCUjinVI7ux54dlHtDSRCCow9h+TJOFCeH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765345374; c=relaxed/simple;
	bh=JQN2QbB44lFYDqlX/BSn3kLyzOdhEynnQeAXErrLHuA=;
	h=To:Subject:From:Message-Id:Date; b=rYw2qcQCWqNqrXW1Wa1XxMSSKmsWFkwjY7EgylePyyZ/47YNgYqmHxYwKCSnF7MmfUMnNXrFazTAxT+ENZkjWJxtKkhA6SkVInqr1U8y8VNV2tHOmEMSejnwQ/sSgBNUVAqjspNrR8DLLSL+nY7IaGsHf/x40xkCy+qKgBUZfvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cC8FxBJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cC8FxBJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B484FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765345373;
	bh=JQN2QbB44lFYDqlX/BSn3kLyzOdhEynnQeAXErrLHuA=;
	h=To:Subject:From:Date:From;
	b=cC8FxBJlEJkIlk7Dfuqdq27djwEMYsI8wD52RV0hjGi0Th4Vl33wHa+pYlXrm3UZ7
	 qt+LrUlv4GW4DopHC/CtVZnEXQgYHk/L9jvryA+eEM3LV+VhrWOOOaT53icuxj/BmH
	 PsNJ7u4rNwWPwl0hYyL9ZkMwK2f80Z2bY2Kid8MfqB+Q7g/UGEyZvaHGL8GDD6AG80
	 94K7s81OG7hvRH+2OhKNj50+N2/hB+poX3KjyMlhbY4zhlxhTBy5wtGwy7rl3UgfWv
	 Wjt/aP8cALVvw8dmQvBfV+b509k1u1v1092YEOL4tLPPgqdHPBlf1lpnTXFnmmsgNB
	 5t39T2dB5b8Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C2FD3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534537362.2553.8277497060265042061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73af6fab52021f46504018bc977e81e04cf5a430a39fed6db44d221b0d562bb8
Date: Wed, 10 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765345373
