Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231C22D46A9
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754917794; cv=none; b=fIC5wJh1UmOdWL09Hze2nbZzIAuqBe6swM1nDfR3Ndo8ryHwD0kxhBrVQ7J1KqPwwnZ4S+GU+MXYmqGxydE2BXxyF9oLYHYwrfZKpJayPGRHrwqRCLg94tNB5HqHA1mH2eu7ET1XefcTshF9yT4JDuhudNkGl20QykrfeOCrza0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754917794; c=relaxed/simple;
	bh=rPzSLleNhgjweY9UwWRhY2o91CdkEupm5rk0Blr65/M=;
	h=To:Subject:From:Message-Id:Date; b=rJAN1hlDW9NU9rNleE+dU5DdBZ7TpL3nnKocXt8iqwZZATu5i2/6+Q0p1qJqFZfLnTCS2yaNGAu7di9sDN8VK3D8+GSLuXvoRiwo6bF3+weckbrWNKtRaLyMVsdGC8IODaCv7RdmjYC1XP89ZnI7kYhzUnSrASWJ8dH1KmsHqjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHFhwod1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHFhwod1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9A2C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754917793;
	bh=rPzSLleNhgjweY9UwWRhY2o91CdkEupm5rk0Blr65/M=;
	h=To:Subject:From:Date:From;
	b=FHFhwod1isOpYK4cfy5Uw4nHOugBTcvhCL2oshG+i1c+RHcoYdGnJOZ9pHm5C4pPw
	 JYx814NHFWPeRB4TTbR4juJ3uiSaqwmhJR7FwluLVpHz4X26EPyrmaj0MXBVCFCBxZ
	 72t9i6Grv0wVr2/Nd2UcShY567G5gK1FdQLM88QtYfcNt7uHSsAprjhLQyi5wW+2K5
	 OKJVPKGqapBDVLFcVcvln/iiWwGr2ShbhfwDAcDetPc++n1hnfhNthWJ6oTnGHN2+j
	 2GV1x8EGTROtOAGDqd/McHHRXwCNd9xg/bS4jYq45uABUTZt5ywuvI4ZPEn9a0qVYk
	 cszcnRXCE728g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB42C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491779357.22458.11185440777272467823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802b6afb99bc00033957e8b2c34f1ccf4726ccb67f45e6e4d9f68d5c2b57a842
Date: Mon, 11 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754917793
