Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADE3364AB
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722885354; cv=none; b=t+pU3VhNTvdxPlQqihL7OXALZKt03BMXiLvxHO6hDIHdklmlTTwya4itHhbXJs2yniN/lSlHSV5VqINw5PYUifGTONimWCLWLrY966qvQMyayCoR9gUm3KzkUItlkzHoMLPdx57rxIiHBY+G2A+xQwICEyAJacB/7RGyYhELZmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722885354; c=relaxed/simple;
	bh=h+tzURGQBgmSRkFJ979d1L1ElUbD+8QRNWzXgJiOB88=;
	h=To:Subject:From:Message-Id:Date; b=Q79uISXV8GPxotIJC2pKLNrkQDif0fh43uWDZe9jAg2/OonWTIvpk5XB+7DVZ5NGXxeyR+0CT/VQ5H10o4BjgF2A6WE4qd2OfmiDfhGrbuDC5Ottw8YKANNIrMwgCZPJQ+Z5j5o1xEuW3UoQ+iYrgjLPvr08l4McQY2JoykjZZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwpPpQ+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwpPpQ+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3687C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722885353;
	bh=h+tzURGQBgmSRkFJ979d1L1ElUbD+8QRNWzXgJiOB88=;
	h=To:Subject:From:Date:From;
	b=gwpPpQ+1OAKWyWPkrM/FEVcFKKbJrHQN87MS/JLKaX4QBR00PfLkEVnL1VsDCVnXL
	 D4Sl9FT9G3cNsahWmu1vNPn8gTiKJrFSgjsQKpO6WON4mst4wYJJXAIEwnzA3rhhSB
	 +y1KKBKTLYSso2KSR7L86QMhVqBS/QWEga3PESrtFaF/i95k74TRYhwXqiJD0QXHLw
	 5q5j9XUXNB+vn4rr0GefEgVW2XO4pb22RG+7dMaA8tYPcBnuY0x0sIbtf9p/pH0ILS
	 mSDZZCzZHbdqQU6Sng8yci8FK94gKpIYBe1Fq39+U3Bvu0/sXq+nj/ZIEcR+fHdWSH
	 BdhZdYEPCM+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931DDC3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172288535359.31273.8963645220753420537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34752d78906fe1dbc875f6f7f4fef01653b4aa5343cbf74e2ba5dc1d674c4864
Date: Mon, 05 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722885353
