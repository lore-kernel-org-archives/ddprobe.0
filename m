Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634E8357739
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780081354; cv=none; b=e/o4KXsUq3SmnI86peR9bVwrUXbKdqTAhxOfEZMWacv5dxqgvSEYTRpTN00nJk0AehmmiHD5pYoXc/TUSM5+GMFw/ebqkfqQw2m0Am5TL597mA6uis3QW4kgqx1F5lUFApT6bBSm3RBaJhPtX1KayG/JfJTFcefLByWLaBmgchw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780081354; c=relaxed/simple;
	bh=GerDhhKjk4VIe714dvqZXS828BsbSKIGNySC+eWmN1o=;
	h=To:Subject:From:Message-Id:Date; b=k0Di+tL1OSJLm0bsaz2XxWIxvYAi2qwxjO5f9YtkLenNP6Ttsj/OFaRt0q0tsdwh1dLA/1BWRYOhXohDrLBlm9jz+yLJGbhEveSJhmAYvZduvVOWSxh0eTybG45Qbh8ncoO3+j34+jjPP1GqiSOCI2TPxyL4J4Tlt3O1P7ENaSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJA6ytk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJA6ytk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 137E4C2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780081354;
	bh=GerDhhKjk4VIe714dvqZXS828BsbSKIGNySC+eWmN1o=;
	h=To:Subject:From:Date:From;
	b=AJA6ytk6lX7IhEGYMK87tkV6I8X3nMUmE08Ivj6V7qiyHrY3gEfWULpJRdzJzV6vO
	 +NPbfaAgu9S0He4Q85t7xnZUxYSMjSTih4sReoX9f/ZhPc8/ZnGyv5GE2l7bG/65dY
	 A9/klBEUX3yvniEMko0EzEeQ4w4YnbZbFfvpeVXGS8cm3vdzk1F5SWHB2v2LRHc1lb
	 GF195GPSYQ3l1kcwiq/aMtZTB4b7gfgmqPyK/tu04aisXoUFzlBpFeN9NQHaP75yI2
	 lxLRAhymKmuGKWoRqeXrUNwenJ0APK6reSP5908ULO0vfDKd+C9RRqYillmYn42nna
	 DcPTxmg1x+u1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0BEDCD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008135389.15069.15012518565064769560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34638d03fee4b19ecc793673f24b8b5e4fec46f53060129891a1dda18b707114
Date: Fri, 29 May 2026 19:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780081353
