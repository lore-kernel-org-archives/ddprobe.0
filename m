Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E650F5C82
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709780297; cv=none; b=oen07JYEqIGBjoQK3hVoHO7NfFUEB5GRLMkfvo8ELQ0q5UUI1DG2SC8oTxEbwsUSly6hzrDJEcNQv2mqWG9sFMrOLo0ni0zcI9sOK1V4xbiReXQzmjMrr5QYi+VhD+Q3Z+0ooq2JJuATWk8HHae2/sDQa2VTN6hwUwoU9GUhesc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709780297; c=relaxed/simple;
	bh=SZXHhc/8BCx650RPVhLo/h+i96nB0juN/AaPUug27OA=;
	h=To:Subject:From:Message-Id:Date; b=S3RLC6pX2ythDsI8VQ6qZ8Gxd3q4zq7EZ0ZAzHOTQBUNkTXCDuH7InuC6zZ16OMjbhNRnHufKt7zM9xcvQMSA3ETphjuA1WaeCaKb4pQOAQxfBtu2dWE4Y7HCG4jJzy8jJ9y3SqT49K+QRII0SjayWurZ5fTKAqD/5iVOJT5saQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aORbnDlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aORbnDlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796D8C433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709780296;
	bh=SZXHhc/8BCx650RPVhLo/h+i96nB0juN/AaPUug27OA=;
	h=To:Subject:From:Date:From;
	b=aORbnDlD1nnHn1vH/29m0XWYZyHAMBch6avlmUSqiBiJBzd2HSkvDMiQDnJulNRzQ
	 CXjitUoXj5fHxNL06fZIVmgmGuqCInfbqY//3dePyCsCb6buPTKv7VS9uUMJKcCa4V
	 Ht8OurUFO92sxcvNP3FWK1aNGMxDA4ZOudNTaK8W/2JDZBA2PV+ksVf+gdS6BuLMt9
	 Vl3smI+YNJ2VKU207QyShDpdBMqHbFxKtlfWBvPtYRU8uZdma+LW17PZ+OYOt7hxnz
	 Gre1/3xqXUxoTnhjPj6C5QAYeBpOTU7DJyuREfIb9TfzMUAmgDY6loxrgjPuRpjtmT
	 Bl2MCcsYJtfdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2CAC5475B
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170978029637.20801.4008236912578926959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b342545c68c8bf196261dc1f48a48faca04909fa7f214fa8a9c29cc83f1ff4d5
Date: Thu, 07 Mar 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709780296
