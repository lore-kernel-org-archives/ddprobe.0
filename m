Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0E7125B2
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758998394; cv=none; b=SrW6j6ohTGQBb0L3FqBpPHwQujfij7FR49P5c56D8JpoBlDX0KTQjNC9xb/pRzAHVT7zaGovU2PqOEFfCgfwK87R5WYLs5XTqufPzzSQSttF+sEq87x0D5zdRFREGahzwqF9BiF4v61micAmT2FiUbVGesVhbyq8LTI0Ydet3BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758998394; c=relaxed/simple;
	bh=h5/S9KRk7rORp1iIf2Ffk9q1yG4tdcYucwNHkvkJkzI=;
	h=To:Subject:From:Message-Id:Date; b=JrfH9F6f5jceBTUs3AaFIhezEs3VhMNm35jqdqzTn3+7eoFiTZ8miVENh9Q52lQVDMJqMKrgSwCv1Yk0Ak9e1+wxoGzUId0kdOCAPP1//Wv16ja3BcOUgjEngHxFUOPtQlfWs9nkZ7tlUWn2STBQW0rKIBxuO0wWDSfUFq1C5Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsRlvDqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsRlvDqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B2DC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758998393;
	bh=h5/S9KRk7rORp1iIf2Ffk9q1yG4tdcYucwNHkvkJkzI=;
	h=To:Subject:From:Date:From;
	b=GsRlvDqv/HY8MzMG8qVu07pKP8sWeXCGkm3Qq/hITsk7sdYmQuCMHvJSr8GYQCUD/
	 RMESVUwBHSHI3b0gXUrK7K6EGNUhRbjCNNIVM6K8e7UR7reidVfeXqrcVU2qapJcDF
	 heWug3GVSlepMQPirCKYGnksj8enp2vCUqGQNPMtaI0JYNFC0lnXG/d1UbVFzLG1Mk
	 PguI8KHnnWIfLD4ZphG+DgtCgo1zmU1PGZqnK5gFirNmKKujNLT5E15HIbwOhCXhMt
	 ZdNggpkqjAuAkV7t8onJJKvFJr5ETldz3zl5yVzI37fpg8aLZzI11bBd+4cD8flzjU
	 MDRIkVTbxDv/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A48CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899839358.18930.1790658068871310914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d8b75ad01fb0ef607f7ceae5df745052fa185cc5c1688e40ccf6d9ce407176
Date: Sat, 27 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758998393
