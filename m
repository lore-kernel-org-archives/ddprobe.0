Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287131E5B6D
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757229594; cv=none; b=jBMVfBtF3sNWDd4bGvCLvCOScQgG3Z4HX46pXEFgwGrla8ACqM5g9QOCRNkdJD/FsH9Wj0mpHmL0oMfDs+c4QVZepx/of3xYNl8ojN5c+v4gr1w1yb0zXpGRCLGwMAPP94PKJFQcZRzF4s9kcEapuprqsqm3odnAfDeDxXQYAsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757229594; c=relaxed/simple;
	bh=tZh3gv2xTW1u+D90hV1gGvbLX01+kSB38Q/1wOkojws=;
	h=To:Subject:From:Message-Id:Date; b=lAn8wUGj8ORcoZS9cEYaIwb7dJNeNo1y/wG9HIZ6+zz1zbqxEvuGrp6M/mYd+mDufx9MUBD8D2ZLxWv2pKYo+wxZC3FFmCtrc6nXPJ8+Hsm2kHZcZ863R6ukS/tLg1zJO2wg4MQESsQaQpcNTo9g0FYWTRg2JQ/4BleJEuPsMhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2GO5EHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2GO5EHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0318C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757229593;
	bh=tZh3gv2xTW1u+D90hV1gGvbLX01+kSB38Q/1wOkojws=;
	h=To:Subject:From:Date:From;
	b=g2GO5EHFSg93K/xBREkIzcGytHvBOb9u0jLkeDdRC0UbRJcEAYBjAuWm1DtZjasmV
	 JtDzr00MlAKtmF7Fc3l/3MZ9QiBpcoKHh922OZGqtF+7IoYPLBEySmWu7PwJe+4bir
	 CYdEJkiiFOrhbIX0knA4O9c6f1QTe0Tkms5FpzoFBspv0Vhcsnfua2Y4bA3l86HnKQ
	 lceNFRswQvLloqKkpwTpMJ8K+4M/xMFqaBEGIPZzOW8RGzjtgI7h/i56jts+V5Vkir
	 rNKqeSp/rUjQwMDOX5Ewy8HyC5443qsBtRf2FOTkksM7LGvjuA7zsOne5c6Acn1odx
	 KocOjse8PVXZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED2ACA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722959357.29924.2254353926272766732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09477870e406c270f25d2a1cb44a635b68803ad941458648c5b37383a2d0bcf
Date: Sun, 07 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757229593
