Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D221B87F3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737497154; cv=none; b=bxWYS94RWvV98x/9/tkLHSsLKJ+M6RtqQG/vuMyWbGv4vRt5etviQ2occFEZxbUvPDAkN6EV74EpngbCQIJKpD7Kd+bMqdKLoNM20Hcrx0uG1xTUfRJSHNOjDzN/9GemdK2fTzO8kNDafB2nJ/NpOzRsAfe2e1Eap8hYNrSlNSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737497154; c=relaxed/simple;
	bh=nc4WqdXNMWSgNUBkCotfi4zna0H7q6fGxBuouFX+DfU=;
	h=To:Subject:From:Message-Id:Date; b=M7F9NBiDF0WESUMeOF/9rE2k7Wp30ko5+VEc4AJQryiw0Kwx+bqzYK/nNWEr3pqa1U143Rr5gLq+bkA8mSIYKesdIRGP5Wf6lnq5lVd8Wli2tLebVCjLAmt8plISKEj//ICrxPbq66Q8fAzV/Tc04mwWLI+XuhodI5nvWWo6RwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0VD89D3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0VD89D3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1AFC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737497153;
	bh=nc4WqdXNMWSgNUBkCotfi4zna0H7q6fGxBuouFX+DfU=;
	h=To:Subject:From:Date:From;
	b=l0VD89D3L1u7aQLBxj5T9jH1BwyHYZnDL1yvAeTuoTx6amWBPEa0CPWrQIvyYvDXe
	 pFH1FCACrI3R6OZ1grMKrFpYDNs7QvX54CKpGDYkOpSqK55qS8/M5Wv6Qv1Hy1Avlz
	 xNsBd1PLLwjWxkp8xbYgnU5/mpjS+duRMQtfHFJbz/HP/SZGhyJyPHmNfsBss2wn/i
	 Zk6yCR4lFQGtVUADvMRlmzd0H9pvRLvuwOJIPzasD366Xqo+pCOVyHTACtne1O14f/
	 pPiDqvf6cccdYmMK4QPJmNgydPQZTHQN0CnC5ryRzYLmgBVv8qYxg1obH+VcedO/Ts
	 JVx4Mp7zkGCRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9663DC0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173749715358.3190.5721076603375287022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fba071eef6688e0df241270be463fc2cfee904399ac1db3ae42e2965f77fc5f
Date: Tue, 21 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737497153
