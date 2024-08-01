Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E77D61FF2
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722521154; cv=none; b=hacs+QnZJPYMRwhM87x4YQZX2V8Q1+Oa5h9lE2XeL0x/uJham7PUekLHT1ia3gDnOPEV7p+Cb7r3Rlakgv6QKZAFGnaTGpn30ZLbuHOaJT7+4+Y5DcotZva4TSq7mO5FE3XP0txtrmHpVMh/wXfOpSPdCVKdl/1NaohO8E6bIpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722521154; c=relaxed/simple;
	bh=m2biYtQjdxqrlVFgXGPh7hlguluOV+8du7+iPGSHdOE=;
	h=To:Subject:From:Message-Id:Date; b=cPXeuN1omA6GK3kRmWfkkWxns03wYENaPuyI7vL0pustt+JSY9olo//WRQRf5jlFJiSjj9DYPykirJAVMrjZ/SOy7OENmOrU60a2Eqq3NocXil+b0BJjOQSnrn5hy+Xq9QNH9rwCXJFTQT5/KwCUlt2B0dzKvU8FdBIS7G/6bnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfNydsbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfNydsbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E7EC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722521153;
	bh=m2biYtQjdxqrlVFgXGPh7hlguluOV+8du7+iPGSHdOE=;
	h=To:Subject:From:Date:From;
	b=UfNydsbcfGp3l1vzHv8BcZnl7xmeRcX0faqeC0f6EduFxCzj6LPNn4j2xEtlyyb+X
	 wghxCo/1JbHWt1tqVm5us/q21wsDiaKxw/+HtbSNTvf1WBfG2C7e3ksuTphRdHktQQ
	 ul4s0vI7RweprY3a35jhURshmhz06q+zx1u/mi0iJemOff9cOzdOIJWK11/MrpsoqE
	 G/FWb6GstqmsSq3g9dpRnFVHqI+GLZlLVJBQxNBWuLxES8v5GCforkN2nmApR6mEhz
	 CmY9uiuMArlNVCY/qcPdAWRGf1oezSi/GazlNbSzn1qDQnundl+fiF+qOZzZU6Bnon
	 ul+EVtCCFtrKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EACC3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172252115358.30091.9969923369952393240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298406e45bd6e209f1fe65e4e9ad7fe4aa745f86a706a1c125f4ed5ea0e31926
Date: Thu, 01 Aug 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722521153
