Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4FE4317D
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755970194; cv=none; b=qIsNKkVf5m5DtNlIECe7jCOgnYrNQDYcwxsJMBK2nJ2S+vlCJiLQfS8CphjvzmivWYE3Hx+SXMT9vIQGyu3exsVH8lhfJNTnsU/UEStd5xcyP+2HALSFeTF7sjwTDnHbYa4B18vQwaC1Xt6xzcK2GvfAVRa/I8OmJ5CgkP1DbaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755970194; c=relaxed/simple;
	bh=huG0V5u4At5ot0tHIyBTbwBqZ9xNRcn6FymE0yxvEYM=;
	h=To:Subject:From:Message-Id:Date; b=OkZwAoHUFT6ZgHJ/wcouCKAQcfE4TmSTmCi6S0ge2DFUcGKhUy+oOKgKu08USKufSzw82MBgKzU0tdeDzN/16ycFLA5RrWZp05RArFSTB6ZlWEkb1Dw8RW5Bclg3rqgwJbVZaoOcpgbNHClI8VPBm3pOlXvjTO3IRDFWuMZHZn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4m74kGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4m74kGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ECDC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755970193;
	bh=huG0V5u4At5ot0tHIyBTbwBqZ9xNRcn6FymE0yxvEYM=;
	h=To:Subject:From:Date:From;
	b=s4m74kGMIPRhSktJuefwKtdy8tGSYI+MeZ7dg/aYqoUHYprCNgG59uLA5OxMHV0eE
	 j+wdQRA+9zPOlvgIGwysUR2Fsq0PENRGy23AowjjLe/Y06E8ggCjHFgrfwfjxXbVGH
	 uWKeNKqVJavQIC67QnaDg0fSt0dU4g8od+ujYD0z/jIqO+Q6BkzHtwN2Delj4nZXmS
	 xd7evi4iR+OChuzlrSZtQRzxyVUKhVRTH79S1EzdRnrDGhfN89YUTLwyofdGC1nTM4
	 tKAcYhM+zQAafgw54gx0aDFKrvdlHkR9nAGkJinmF3ghybyzhC/am8nX7tmjsPsqrs
	 gobk4K4fcnRAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC00CA0FE1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597019357.29398.903215647461270745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb34892047d8ec6f66249988988e4fb6a644fbfece1ad4da1d64b65328b8ab8
Date: Sat, 23 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755970193
