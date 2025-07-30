Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7602110
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753841394; cv=none; b=Imc7EEl/Zm8eQoOdaWbeF+NyQJaXXGbmRU/EFAGdR7DFY97SbT5gN1NKNmgMWDQeCnDAx/bQf/jsTTCsFp1hz0+ZCDuXy/OC/pwMtn4bhnGaB/d2BeuyjzpcdToykGMRJArA4mUxaPSc5SRgOBSFROzI3fh0KDvvtd+ObaaxslY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753841394; c=relaxed/simple;
	bh=fYkpD5DB8DSXo7y9oIXhqWLcfKQLGSjgoUcxGL31byE=;
	h=To:Subject:From:Message-Id:Date; b=Qtc0jK1b7R1x3ahfO9JxWZ9lt8rva2g56VYQ2zKf7cwtC4cb7WEht3c82NfsRu17uh5FECEs49zxXcmdHaYkTay/QbtnTIvt8jJ6yQO1jgbQ2h1zs5ez/LB9kOLuFdR7CzKpbCzymo40gYlBPUFPqEMRb7Q68Ncd2pqIw1f9zZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cguJ1eTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cguJ1eTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA365C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753841393;
	bh=fYkpD5DB8DSXo7y9oIXhqWLcfKQLGSjgoUcxGL31byE=;
	h=To:Subject:From:Date:From;
	b=cguJ1eTc7x7JJP6Ov7TRl2zqXyxpB3K0tUbEz1Ey/vdp/i7I/u8pMS9C7T8RoR+K7
	 xZRI+RiWMnl6Zl5yhpgmxCJ6o65xmwYe7k4juot01XKOSWRNPNMcwq8ZWpt2NGu1Jf
	 zz5YKpYkcs/tYlRQjqyeELCA9HBeA7BaBg1X/oBDUoiP1cuUbjjn95sRkcOQy/TUbD
	 qf88oik0qqfiKsbK6NqcBHeyilO/SSK9R/19vVEf7PSyDlAzNp5AeEx/187YdMYR08
	 hjEvBPmrd4DDgtLGdACnDyhR4RuQV8F0948I1F7W6yyWaw1Wyvg9ZiVuKnAqbNFMCM
	 1HRUtTSOYClDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E35C87FCA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384139357.23033.11745996134633750811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ccbb3efafde5f1c631110a86d67c1acba23845a87352233143246be7533a60b
Date: Wed, 30 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753841393
