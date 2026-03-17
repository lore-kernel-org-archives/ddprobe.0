Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABE93A6B79
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773744294; cv=none; b=oafgF8G+hK82iF+xvaMHTsUFVbd6eRfdS8CpAYucrvuVbDta+cZTrRSzC+MrOEWaLVjyvSjU0KWOhgynMcnmlkthN0tmw6BHeIM4EMjumAKO3KwbMqFWibGiszyX+Uhu3BN8Sc3wuA1kustwyGrfaFsJ0mr4T5pO9BivWXyIZX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773744294; c=relaxed/simple;
	bh=jD5h0YXHTgvKL/B/39Mpybk7iMlGElHp131d8BsvOdc=;
	h=To:Subject:From:Message-Id:Date; b=KbkjxeyreRNg+V8+iWfx1CbXCeype7l+ROSY1fB4EnSxWGvQpuo7QPPStefe5tTxzSAAGT2b9FQ6r6EUzPDxoPtbbfGoSzHQCkjwnvrJBAEc86U+3jnN5o2WH3XkywsH8rxShRge0W2Z5adk02ydm5uhu9R7pqGZ/Fd1yz0bkdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzfcJDth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzfcJDth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D39FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773744293;
	bh=jD5h0YXHTgvKL/B/39Mpybk7iMlGElHp131d8BsvOdc=;
	h=To:Subject:From:Date:From;
	b=HzfcJDthGpYPGd2ue/WfnYnWFrzmheNpNNAMexbieT82aZLZvcxx1EP/AZ0XAogih
	 IqU6Nid0aUUpVneh3M10rMdCipxL89UmGSqgcyzxVzX4Hk+oLgB80z+j6OxSgUY7AC
	 YzcbnlDg0ClKUvws0fXXKoIyCOSaT2xJynYlpUbeptX2FOroJZcvN/V+KL5x5pARbq
	 9BXYIM/nBkv+iBXSsJ4SEmGXMhCuh8MIWwi8rYv98hagMXlVEgtsvSAH1WXme4n8s4
	 HoVB0liZNzQ6l2qHDaaGrzg/qQ8RPpXHiFPG3g0gozNuASAR/0SrybN4QtgZjzAifC
	 TFnIl/tgwOb4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28AFD7077
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374429357.16699.14486956840147653388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c068e1fec765356df6b4b3dd1b9f7e68e5ada9babfa3d39d54ec0b2ba37604d6
Date: Tue, 17 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773744293
