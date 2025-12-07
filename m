Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DB342050
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765074774; cv=none; b=nw4LsgJAP/lXvp7Vn8fTmNQjq95Z109tWGuy/0B3oswn2QKI4os1a1FEM8fZdiO8pthJJV+xZ7QmuF+vKV1YsZ0fWMoM86nYMQDykUSi+odCymmFFoFrpmdDECayZudURVEMFtQEAC5sptI7qIhczUykoK+9uRTR48V3UWDnlDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765074774; c=relaxed/simple;
	bh=wgkqRN1ypnUYhOWp3tL92M2bJl4SnxDeXNRvjF+VGZg=;
	h=To:Subject:From:Message-Id:Date; b=WVwR2J49W+lE1MQQzi56jkNQle3ihwP4wdsmsAmnpZuu58DF6sPWCriKnCjYtC+sXbuyZ1NBh1AYdms/m7JXjHkdT5qhpHKrYhS4PUa1RPCwCzV6c5hr7ZqEiqapLZ1hm0V+x3cqYku8jIB8eGvabsxKSb2oXUlFoxYBwNeGLPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MN57ZBSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MN57ZBSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6129C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765074773;
	bh=wgkqRN1ypnUYhOWp3tL92M2bJl4SnxDeXNRvjF+VGZg=;
	h=To:Subject:From:Date:From;
	b=MN57ZBSEInjtzXqELy0+dMjCfQfxld0Ogz3PQZpDsOz6ora70jFwN2eYCRqNMhkyF
	 E2JL8MG8AzRRa3q6es6meNvM5YUxIhOnGugRKQtAwJIC80pIuiLGIaalo+yk62JEHB
	 omUnbxJQUi20pgM29/24lXa1JpF63aFmx3gcVGFRs2W/cHR45kzdY1M6n8JHJ1dY8t
	 rproZ0CC1jwNhU5iktiAjGkRiHG/e9bzawOVrm7n+HH9wRTdrYXLMa9roCGjXIhFpQ
	 HWjXTxSXNf4EsE/MSnfMzmsRsOsMhmbF2v2gKF2d14HoCFJnWI8h2SjPOf/M728NH3
	 sKCJnaF7Ksd1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93280D3B7E5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507477358.7407.6395044342765756190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e530d6605393ff73aeaaad43c6a425d6e54458d87ebaabecd1076086d0370e
Date: Sun, 07 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765074773
