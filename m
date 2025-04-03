Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FF71A0731
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743669594; cv=none; b=pA+Hgb4W2Xuv6ksQSd3ReVPmAQCVY8rsRnlZUkB/G7k5MOvT9FGmU9F8D77WVPcMeyFLm7alB+Cc9WAhRjogSXxSSBxGisQTj4A7loa4aKORayusPHL6TWciMvhycO/UNIeFSTDQZESNCk5UgguDIYXgYPT6J/z36erqOzHP7XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743669594; c=relaxed/simple;
	bh=5b+8ffHKn9RHFgeqp1M5OHc5lwGlS2U/cyOA0emxgj4=;
	h=To:Subject:From:Message-Id:Date; b=dvI5zv8w5gqn5RsWL1ikDhdZAfsu2UUUYaHPvK8iaoxijU8E9Hedukl51jP/mXxTTF8ksTOBN1KE07ZuNOHyylTvpxQR0d/mMQrHGdDptzp9XOdm9r0oYQGxUUCHBROErXiOxKq4QDCF5JoNsJwyCOe97uEaGZHrXTr45F2VtGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmZsTKn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmZsTKn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87EFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743669593;
	bh=5b+8ffHKn9RHFgeqp1M5OHc5lwGlS2U/cyOA0emxgj4=;
	h=To:Subject:From:Date:From;
	b=bmZsTKn7eMtuo6MDzEXR2g56AVoYQ1xsIlkbT7RpfZuyGcogs8PYbbIEkJ8qI/Z8N
	 fc+KJb16wjYn0IKVksNQT/Xk1dcR/Qbn3GXdgwNmlXGxmUFkqe+jaOpQXtONrO1x+O
	 5hxVFYsfjAK2tnJtvIHFPYdxgA3xnhnuDQwp4/436dDB4JzQzuTo7PJj+DhO6pK5MN
	 3TTGccD7ZrvGWv855quR9xW97sRlN8aXHIWEDhlMrd5JciQ22eZZnfcGouVE50V/8R
	 T6CzTMhNCDPR2T4HyVoJMU9nhk2bVjAEQH+RtlMxgjKkBfet1tBp3xXfPBPwgC4IPQ
	 Z7KMIssekCbwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974E2C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366959360.18313.780153812027238236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2409f4518239730c0b622166a172670305fd63f430a8e931c2dea016899df37
Date: Thu, 03 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743669593
