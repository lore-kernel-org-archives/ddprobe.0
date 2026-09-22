Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B3B542EE6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790079634; cv=none; b=p6rM/fYlg3mq+FmZe9bpdT+FoEnBgHlDadkyLS2NnjGBUpniHzEMSoMfIkWcSZxpktN6Fnbwq7fNyMlODMkAR06aWdnFCvrH8FgXzH/y1H3wIEl0kFydCeaAewETKW4crjCEztGSFPIZf+uEyLZ7T8VacypiVJ3HPqGaYfkoSWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790079634; c=relaxed/simple;
	bh=R01k16rCh89PMpiQs4WPCrtVZv6LAFinJE5GeD6bd3E=;
	h=To:Subject:From:Message-Id:Date; b=UWlVQrW8naBTHC8JGXPhcTM8yebKmdTrS+ofiftiDH7Xvx98bChgo1dqJnagJpkVrqwhaapeOVKKFem2EWvkD6VHeUuuXyE7GGSV8ui2gYb5cNrGGQDUa4qvZEm/WXYAXX/vFnaa9ONPUYWDToi60grE726zpiJUt1cBqgnDJew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccdWwLXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccdWwLXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C006CC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790079633;
	bh=R01k16rCh89PMpiQs4WPCrtVZv6LAFinJE5GeD6bd3E=;
	h=To:Subject:From:Date:From;
	b=ccdWwLXtmBLfAkJMW+u63rt0aNT3HXUyqpF1Sk03lVYHQQ1TawxWyjITHz+PcUz6x
	 g9mQCEXqYc0eaxbIrainQJcgBMTQAU6yvnNiGXIfssGlqEqjgaYCq9V0w00/PHxAY2
	 F/LKLu0VDy6aaiFten9QU7Olz1s9dpxWSjCF/79sNoefSmN4eg/zJx/9lUOjSMVtfo
	 +TDifq7zMef2av8EcRvu3nE4buM1Wz6uppvRbCGLy1cYTiZGUPd/OLVg/JjtnCaXhd
	 wZOS4grXKdM4AdnNB+F4LdTvy0nxQeK2ZkZvzF7HtWnPS/TxnOvR4drk2khLXJwfvz
	 6UbSQcZAUGY1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE4BC982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007963370.18895.12874952693244752325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0751d20279acefb16ce25f926a120d468be73284d218e10be72ed65ed3ba4a5a
Date: Tue, 22 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790079633
