Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83F6346AC0
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778006854; cv=none; b=T06kex1mwWyKIQ3T1Y5FKNNUPwHl8ybbVBFC6qyG3lWQ+LXEOwqigmaQ45YVkTxGqqkO4WmQ6OI3R/DN9suPN5YixHtn/aJcryOTsy/oqflrCzI8izWhnf7xrEVjiAlJ0CKP4k+kWgTf1LtEjMFMJUwA5y/3C5jDsgd/e9EElkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778006854; c=relaxed/simple;
	bh=qnXaDZbE5t70xqC4SQkeecZVcMsHEBIY4zjHNfBai/0=;
	h=To:Subject:From:Message-Id:Date; b=VGimqmY6KL7RgU15XYkIx/zJAxCuJqlK/8/AjZ2Egh10Qq4/7/DBOtMOYUXqV6UZGPRkM68VBBIcE37f3yszRS53/JyY0MxCwCWtD8LJZXwJaFjAAYmCnLlaHlAxVRmcobrHm0FUX4xHMaG4cQN9d7juF+bOfD2Dt2T8xpLOt9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y64M80sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y64M80sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE209C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778006853;
	bh=qnXaDZbE5t70xqC4SQkeecZVcMsHEBIY4zjHNfBai/0=;
	h=To:Subject:From:Date:From;
	b=Y64M80srk/oVU+/TRf/r/4qbypGsorJk9LOMYxTAKCSlSgcYwIVK+Cbkul7ykx+0Y
	 0/IVlSUp8hUnHKo+eWx/9RnI0qpgP4qutsh8umqbnfZrKrilh6fynmRaVXhweH29KG
	 NnEoFEGlqQjkhverrJUGm0lGrkUWHwYP97BD1RPHr/J1Py9rYJL4jMCpildWL0Xz2W
	 st3h4WkDi82Bzqhrm93qaLSYcSuzf9eawXOxHn8kVeBffU+BVXsfzDnEebcp2eemx0
	 9IZT+KUAJTsRDB/9ZtKYDxx265M+Cb2s9vLXsHQQf0w4WuWcaykhFBo4ag+JG/UQdl
	 WQ/pMJm9r0dgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2D5FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800685369.24648.9075234742985293082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302cccff8970b8939644a37b1b92cd340421e0365230d5da33d7851cc887bb83
Date: Tue, 05 May 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778006853
