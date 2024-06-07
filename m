Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E74A1953AA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717772843; cv=none; b=IX/1uUBnLH0rti3noB9liCnwIFoTQFZu+kJWI4mVz7ah6o6Ll4JQ1HTEgnp+qnZQM5+d3VKe6A9dartHUnY0mtQ9srUqBPcavdMPpKuFWdAALkSMaFTZGxbOYFVmBcc9c4Y2DmCaKbsjmz4Q4F7NG8wzBjwQh1eJpKsHqGXQs70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717772843; c=relaxed/simple;
	bh=kD/YEmlfFaaoTsh3Kj2cCQCPLpSkMmjxoCXs1n372R0=;
	h=To:Subject:From:Message-Id:Date; b=Sa1aR6DghGzN8ZSL3Hu530NM2jqokEHLdHsp+MhSbLE1eu2bFaZ0SSe1M4AlOXnQkwe1SYhKuZr4542SnUa8IUbXf7Ek7ZHTu53ZmIFnEo2Uk1CcPBpbYve0v0c/Vdaq4Ex0gr4Em7pQX1cXP/enhgGTdXyrRsshmzNH58L2dbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5JvkJYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5JvkJYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0AAC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717772842;
	bh=kD/YEmlfFaaoTsh3Kj2cCQCPLpSkMmjxoCXs1n372R0=;
	h=To:Subject:From:Date:From;
	b=B5JvkJYuTTk6YTRC/6dfZHoBvxCc/hjVOjtKy3gHWpb2q0jglsemRGco6WP7WoUVe
	 UQtZeulhdOzcpz8zNIFdEVRdgz7SWIsr9di/9Q2G2js0MCPBQcxa+83tyF9MvMuu1C
	 Nct6Y3CmWHEviqbz02CS6T6mxg2PaZm69bx31AuZYrt7aTZhMeRBA7MHER7Ge1XLVQ
	 6fe8t+8gKTfgICLss9P+9/Hw24AnLeD8FN/aCeC6DOA+hZmanKnEk6ngPInytAElC+
	 KDTAG7FvgrJg5EiQjhuMkqVbHusM44HXCleXXutqWzVBl0tjKyFe12nIIeOuqyHQh4
	 +Ws96V1M5KKtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12AAC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777284278.1063.9127503421132758769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40fb6c8efe90f64f23bc2a170bb9149dc67d32dbb9a606f46b4a6502b31cc7b
Date: Fri, 07 Jun 2024 15:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717772842
