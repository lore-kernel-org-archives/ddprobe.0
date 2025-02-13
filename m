Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A4B1FFC59
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 22:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739486934; cv=none; b=As1xXvVl0ZjC0bsAC/Y9Hk9qupfdv9NGYg2ruHJyPCPoXNMPS58BDYCMvKTh8Ntz3vFuXIL1OrzfBQBLnmJsUPCGLr2XyxcE87E39E/lSN1l9EIEIql5VhQQMDS6SF4e6J90jJxMuW9x5ClV0v1IdQj8Yilg07A/hEMw0YnN0a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739486934; c=relaxed/simple;
	bh=LAm7CQrDawce6LW7Cb52GhjMUmqmHFOU3guEmw0svqc=;
	h=To:Subject:From:Message-Id:Date; b=SdWZT0ZHfSvc7EvkGnUCGqEvY47v4sDAuVtebXxmybDXS4u5I1qmYrUd4DrJhh11XrKXhMp8Wa02MSjn0oL3X+cTsCq0kB0DL3EDCHuDjPN6/OZGWC181QDIi19u7RMsziCO0gbk1RdtSnNwUns3LmFhH4hs3fpacQ4XLN1s4DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0rh/wbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0rh/wbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AB2C4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 22:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739486933;
	bh=LAm7CQrDawce6LW7Cb52GhjMUmqmHFOU3guEmw0svqc=;
	h=To:Subject:From:Date:From;
	b=F0rh/wbb2zOO4gb5Vck4MKsWCLRKV1drVBqc5reK5L/D8kxTsg9q2YY+g4BbAImsJ
	 O+5vhk7qEsZLPRQhlqJNq9zjpFbGhRcPzPqL9oXe7ZJGgnIn7XehyxMGsNI3DvkBWL
	 SJtselSBWofQpZHKR+85F+uMuOt38HM1QPoQCLluJyJ7iG7hOVzaZUjGvWqFz+/y8D
	 bnp4drdBe/2LtTvCXnlYUs2ClYAj90JSx9TnMstgO5oi67BCaBN3n765SUYD80RHdM
	 6+UyYYneS1nELdNPxX5CK4zn+ZaYN343/8kReHJEZbM1CHrV8krLwnBBcxI7z7ZveQ
	 bX+wY0zSiyYug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934ACC021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 22:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173948693359.12163.6722212130103041189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bedf78c1ebfc520be51df26ed0e2eee944e424e64b9099517d2602266e06dfe5
Date: Thu, 13 Feb 2025 22:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739486933
