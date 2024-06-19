Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A5B4D8B5
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718809163; cv=none; b=JH5aRUVs/ZBLq6M2blEGp89iCw47KyL8YUHR2CfA2Ll2+p7MWkTJO2O5bHzhkCtzPSiU4tCJhaYTOtrv/K5ekQuI8dh11rdjgq0cmsD6gSR6XXy5+AXFKw+mI5G0//bp60oqZ02shMKn5S8piyPGqPIMre5LF/Q96A0ieGzLO64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718809163; c=relaxed/simple;
	bh=gsGpb1eFCuaPVi/RdG6hDR1SpsaIpBu+lqIHGZkc0/I=;
	h=To:Subject:From:Message-Id:Date; b=q+i8U1n8bL8ejBPAT49fktP98MODvQ/7UQyCg/WuX4FfmrEPpPL0QR0WVOifE2S7hMq2EhZbluJaR1n939fIWtrcJJEknEDlD/d8fovmdm8hBqKhPmXzAG/xFOh81VAnGjmvUatA13BkJPNqOAHm/21a0ys1PIABpo+oM2tN9Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2XqbBTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2XqbBTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CEBC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718809162;
	bh=gsGpb1eFCuaPVi/RdG6hDR1SpsaIpBu+lqIHGZkc0/I=;
	h=To:Subject:From:Date:From;
	b=Z2XqbBTbuVeSnEDYmjHSWecnRZ6k7dSCnAZiATcuCzZBYZQjGmNzrDGKJp0s+nl4N
	 ILOWO9uiJYvOrL0Oyv6XjL/5naYmjCDowcBa2Xr+Ie+WBZePXW1k9EojJ+PtqByYKV
	 VBSpV2IaHBbGrbQ66UFR2h3R/LTX9XD2nWETSJNehaQTfNZksDcVsKPhHG9nJ9oj7D
	 AjsCLD3mde2THCwizlitzvOcaJgLFahRoikGHUOalVQbJnj61ylkDO1jeyIt4LWJKn
	 Iv/YpYz2BZmzva6QttSEI1G0R0UXMk9PfcizDDFOtN5CClfXw520LvUqpZwQfCY7rU
	 LMiJqMNI0+Lvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0366C27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880916276.2545.12068978507439131162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681e57c95db1ae6ea69fe5247895625bbd06a760724ba5948e7a1f5d2a77a5ce
Date: Wed, 19 Jun 2024 14:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718809162
