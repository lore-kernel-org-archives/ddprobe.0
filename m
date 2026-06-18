Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4751940D56F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781750796; cv=none; b=rFDP0v+MSxb55toy1xOpNOsvEub8bn74ylmck6prFT3Q6iqyoE/3NhAyZg6//v67B2FBf1mC/4iPcOGhCyJBMU95DIjzhDsUu34XuMwNFMAqjtR4vmIk94pWqXiu6Z/Q04WWtq+z7DBTXQTmj+IVEiCc+nkKVwwNkw8LOJ0JYvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781750796; c=relaxed/simple;
	bh=guBrx62MphW766ca4ZWbeVaK3DZJOyB1aCUvl5xvHUk=;
	h=To:Subject:From:Message-Id:Date; b=XB4RgLCiw/Mdw05WkG1pbBgPp5dBQT97zOH8O60aVJEJKiyi+LDQYOwhwKTpEcngXFQHkA9mFyifj4jvmOFj9KG6REt0RNfGpvzA8o9fL2o//ljGBlyVqK+NgQYy5liJV+6q6M5Zd+lSJB6KSrnR4HtoSy/kBhmu8DPFmQOv8h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWxAwVIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWxAwVIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8E1C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781750793;
	bh=guBrx62MphW766ca4ZWbeVaK3DZJOyB1aCUvl5xvHUk=;
	h=To:Subject:From:Date:From;
	b=cWxAwVIFAkC/JsucQSrHFITTte52x57tjZ4C/w8ZaKNi5F55ZeOf3qnNbE3eueG5B
	 eEe+8XuhLtpgIE5xLLebP/QtmzJ5QbUKds22KPzcfz5D4ZszAgM1YDsSX4EhTHdg8k
	 m/C5Oe+pIsEgaKsclZAGEXLs2VQwIGt6bGOcInFUTHVtzKkYnUdGm7+lTCgkn/AUz/
	 wHkbUpCuNCEwNymGZJoHgxQ0tml6/FRYE++gl3T1xdshy5yQm7LtkZmP1HbAZkCT1e
	 7Xw2gaOLQABBCBMm3BbBa4gozui8CoylFKRKkqb35KRDjEYYN1xck5BxC8RE2WG33g
	 yvwZ4HXJv7sxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC039CD98E4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175079373.8365.15106669540955190088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa846b4204ca8cf2fcb5edbaceb2383a70fac31cc5c8363c8a99058182a7b811
Date: Thu, 18 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781750793
