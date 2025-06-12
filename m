Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413831E25F2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749706194; cv=none; b=B8I+4cNVfdyzJB67M3QsliMQosv+LvKGIIztHClHxPlGvjIulrWh23lxNmRIwTkFyo5UHih0bz9+AnoCIC50mxSx97/IB/LGgaTP7QkOe8cq97BadfVIuee7VjMnwGNhECv1gnL8hbs8xg22rRSwmx/L/3OE7ryv2mrhq9WuNck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749706194; c=relaxed/simple;
	bh=sn+76Y7uagwfF6LkRN2rNYeYZX1DGxNai519BY8eKjQ=;
	h=To:Subject:From:Message-Id:Date; b=WiUKQYjsWWJQPoHY4cgSPqo423ZoSeLCwz9a6XH3gaVteVX36K5sY325zDCLwZx1xk7/fE7D1KxXMq1+rTF1sFk1dzrDGX3jvmNgDeQ30wMZDLNc+w/PUmQe0tSufLYYp1XEzNoCUeTNGuRppPzxk/6UF3Va6XtTUbVv/IRzIqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADWlSmTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADWlSmTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1AFC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749706193;
	bh=sn+76Y7uagwfF6LkRN2rNYeYZX1DGxNai519BY8eKjQ=;
	h=To:Subject:From:Date:From;
	b=ADWlSmTw4xgZ2VkP4RzON4iNXNb4qsXjeaakiUBdjio3HXA3DRkr4EOeMngNfpxfL
	 Z2CFxjwfh87/C5nygh91sVewsVaVFAFILJFyXRNkGRlWTJgVtJ/akKKh2XW0SNhCs4
	 sVBvRbgbQmS04UEXNYQ9I+2EBZgs6LNFzuVOhbK6j/5HhofQzJCi2/s3xXp2ZTFIdE
	 MbE/m06enWLBZhbhvKh32NMyDz6n5l21G65g3bThcntALVVapKX0FUFHhneQUH9HQ6
	 2hwDuDrpbRbmuBFvb6/Y+jp4m23UAfxIQNGK2ZJsjpHCmFAseRfFD7TjJr9GSEETeB
	 ENxrFg6GDhSdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B6BC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970619357.17095.13848650200450325405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c5eb76f0b3bffbf0dfbbc09552594727b2cff269263733383a7cf074ce79dc8
Date: Thu, 12 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749706193
