Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D50391855
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789021834; cv=none; b=kr9ukWCl2ZIpsbfoe8WxNoM4tDANpmi2IkE+N4Ui11Lm5ozrL0S7CrVKtNaEbbULkVg+cq2TZ4NJddPAbHk+HcVmMeWmaV15a2zNm8ae/YaTgwkphPQPlpr/eazlMgzdq05QLaHUMdRkvWNsKU6y0t5p9tcpypgz31RkiWJ3pBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789021834; c=relaxed/simple;
	bh=aCaJy8g2uvhK7I0bhr0KLDs1d0JuboZKa1YYmGASsSo=;
	h=To:Subject:From:Message-Id:Date; b=TSnh+fnWh8p4yZSRAcH7vhUrLD0+g91TEqrSueFqQKNKshnq/sYk22jaltQywxx+0QT9KCkxRwueH7EfILsHHXsxc1Z5yWvnci5vOrWYWCi68Kegd+YjIQVAJ8+cC/6uU5HQfeWxQPAle0DaGlpu74IUJjwpo90JrjwhwHYPCRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDY3LNwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDY3LNwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15BFC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789021833;
	bh=aCaJy8g2uvhK7I0bhr0KLDs1d0JuboZKa1YYmGASsSo=;
	h=To:Subject:From:Date:From;
	b=BDY3LNwbYGyZNiXdwtoozmKNPK4jjCABWDYb5a6vzP0dSQ4m+uC4eKFtXY4vGCVN9
	 A8MgUBuT9LuDAbkpwFtLKqcu/A0bkv/9ssJ6EbZs0GImLsmPniMFtKTF/bFTZ4r6rB
	 Qu3iLj5Fwh/AD2HgNz/6+rNpj86nyxoKvkPo55ptoE+tQk3kTMHM4S9V9herx8bdkS
	 DPoGZIPYmuAIkTgf3mAzuP/XoQFaslBG9eNskljjByLIOqD4U2u6JRQqrLgLpauzS8
	 UwzN2Ji5Kp/joYgufTWAsKNYdQtmnfpB8mx2HAx7GoWZHWsV42VaMU3l6IhhFKm+5G
	 0g0HVLqwlMdbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E9AC79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902183368.19261.13562817683696849938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6dcdb747adb63779e8a2782a553a04d6e068ce12db4a3d0bcc2bf437192a8f
Date: Thu, 10 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789021833
