Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B701429D
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779738154; cv=none; b=rRUQ16vdKJOAhJy+8xP0ANCTxXRXGRrvgnbKOYt0Qa/mjVODmEMhtYRUSIvtO9NPf0X8V89TwQZzm2RXpF8AEnnvAbrc2/7Idhd6DlyJHHnJ/QAarIMPME5YNSdXdkPUOp+WmMm7/kpE+/ng/6TzrJmcO8kOV2KsU+6c/WBpLd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779738154; c=relaxed/simple;
	bh=yJEZ4B7Jl1yrscYVUKXZ6GJX4Ybrjeo+oKdi/zAv8ss=;
	h=To:Subject:From:Message-Id:Date; b=KWk2IhdiF8AEMm/M69QZ7tGc0zerRDCmhlAO5uOIwC+JBIJk02HrohNi+h9N3Qomocgk8x/Anj74m17M+WYGd5Ca7n2jXNbPYY755GTqRvbZ71J26Te5L3aWGFH8Yx9XBJSVip+r9pm2EQwRKWmmFvrCwtfF7JWhcLTBhLa1Na0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nULh1CaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nULh1CaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D704CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779738153;
	bh=yJEZ4B7Jl1yrscYVUKXZ6GJX4Ybrjeo+oKdi/zAv8ss=;
	h=To:Subject:From:Date:From;
	b=nULh1CaV8thjqmJVhS6m27fnKDGTYy9lV+77ohxEqzNbRePER/x3WYcRQ0TyhFjEV
	 nGl+JR5p6R68pDWimUTDIMcjh2r6iislms0yjt5AtrZdzqimXCLaCBgrKAClN6TZtw
	 5aMM0rxlAiP8F7E5N7RfAPOrD50P7zSmQuK+srGtpBJnbBHSTTvZb1wlEHhHuX9iU8
	 yocfpW7DXmYGEEt9/OMkIJiX7jzO/IyE4Yw90FP03vmEVQrd+9LEBOnBvcWBFRgR4D
	 8HSkyjJ9+L5B51tduFb6GZ4n+XX35+3XjQNYZ7QWEzGKlUSxj4EniEc4nhOpto9ec2
	 tI925j6ysRf+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B470ECD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973815372.32503.17739375691293991218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74cbd80ffbcb5bebc6955f814470fc89369adfbd699c36db7c5982b7b0ff1d90
Date: Mon, 25 May 2026 19:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779738153
