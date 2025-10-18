Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C69B2749DC
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760780994; cv=none; b=j6WrUPO6weT/FnujdUrGUQQQ4NIwIEXXcFOFWCdDkVHPn8gQqmaN8H4HD5kYs4WGPR3GMIRWGVisIbFo+Zz7/IWFWEVtW35hGrD8fdFJpLjfisHORUnEZRHHne9PYia/4AtCPQ2OFEBxooAbNaa2YSCVBFmgamQRNzHgr88jm08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760780994; c=relaxed/simple;
	bh=nxN/aI/xkxszT2xUHxzbwrp0szo8cNuvTnHg3vekdWQ=;
	h=To:Subject:From:Message-Id:Date; b=EZMaZScogry7RZgjljMjRxMI+f0fn10Dhhta1p/pUUs3V2/HN8PcMDCutI7gIiRqe/BdE7eDeDZKjVYVrHJJf23H2hJOICl0EY3QawV1A+NvXLKzYjl2DblhaJ0tl7b8VcWZDIH8RURmNMNjT+zNfLVuk10Csw09JMV1NbuLjVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZNQDu0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZNQDu0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09ADC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760780993;
	bh=nxN/aI/xkxszT2xUHxzbwrp0szo8cNuvTnHg3vekdWQ=;
	h=To:Subject:From:Date:From;
	b=OZNQDu0o56DS2uuzPPbxcdHRlCFGe9d0wYWoyHBUvlXlCJorIVd56KcHEnuDqf8ch
	 ru4MZlp+FyYpkL4obMvU4kfm2LEB+oTx0dWw44qWA8ZIAHWRoumMwA2x93OqGTjC/H
	 NcLV+UitcJrNWY5PEgVe4kO+iSePuX/ShCwbjlsi3wDtMBWNgxmqe/CgQN29kHhgLo
	 ahwWtOwOc8O5YTX10XZD5xIDWVI6BcTA1es9rOrx7ShxvUISC85LWYjryslQRQ4vla
	 WDylhSR7cY0l8Rhns3lJZOX+v/s7Xf5RxxUQZh4iHz2mC3A6NNr3Y2ZKPxi6douMI4
	 mMUjlMJStbnmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904BDCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078099358.15821.18333267908693390653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94f0cdc730b2080e23a7450fb12729eb435d386f2bd79ccb3b24d716d9929b9
Date: Sat, 18 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760780993
