Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4826305040
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759147794; cv=none; b=WKHIDg7BueBQK+HUtZ03wUH/Sk1T/xrOsxCqO2PqMJXvDe699RB3PJ+DPl6HkZHyfacOGJTJkJ2uqaFYJ/CrR6u1LQUWSB+SNF2GWzZ6F2MdnJnTZ6zHceyGuvtIR0YHzU8lxjK1SgqN+XlyOlRrdNvYS87tuG8BHzXeDAC+jhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759147794; c=relaxed/simple;
	bh=M+wfM1/JNrtFggppD3DQoKSZzd9rCBafFqQ9f7cT104=;
	h=To:Subject:From:Message-Id:Date; b=sm981B+cttrrac1V7zKx/IBIQfoqRcp/hFkhgAvX2aSMZOldl8zifELekcueDRAW2s0D+nygtYEV8X2szkTZW9mKUds6i2LiQm/7li8oV6NMlTOBEBFeHddnuRya1PWERr1PpoeDt+jHqfTgwPSy5J+VjiEk9p1jBubaT0Vg6W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l07v+1ZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l07v+1ZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD775C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759147793;
	bh=M+wfM1/JNrtFggppD3DQoKSZzd9rCBafFqQ9f7cT104=;
	h=To:Subject:From:Date:From;
	b=l07v+1ZJSAM4nnNeU3PRsoCVWzSJcNiWJVlVorTdjaE1mLZDPyxxKrhBt29GfQAn9
	 fL6C+cFA/4euaeVjhQoEwX2UqnReeFXeq+Uz3zfU8wvCXr8N33UXqJiKSZWSnMaCWs
	 AUz7VvPN0M7jfPt2L4mzNh4f2TpQm5ZylLPTQmX6vbyNql+H7sWSSZCKNzpXk5aRg1
	 gdzt7w6+0ekGfCdbBp9jjf9PVI4D5gNW6Rx02a/TrFjP5WYAR/OWvyrH5+Pwy6SCBr
	 SO2c7ZMYy8g1dn9tB3sJYZppNW5IF2UMjL0uGRyV+YnvCpaDv/dj0DyKSEbzfcFdGM
	 62DkhPKHWygng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9687ACAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914779359.12585.7113731551950373574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a4c098dd1d4b6ef00558254338ca1ff30045c8aba15d4b87b7692931031dec
Date: Mon, 29 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759147793
