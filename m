Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F241DD0EF
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746135594; cv=none; b=I5iI2By/tIC6ASfHdLDHn6daEKtjxezyQC1838sCwPFp/s9KkfE/ggSp2jbGaKQWyFY7AofCJQ1iMsMQyZGkqoX92OEJqwJ1VgsgCnR1J7eZ5v63fNd0yEQtgWkWeDpPrRJwRV0pnjbfz+6nZMJi1/7vd36scj5KS4Yxpyz6qIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746135594; c=relaxed/simple;
	bh=6xURQ5Ea05iOGoMUCjGtPKoFgf3onrJTftkI4yzziIA=;
	h=To:Subject:From:Message-Id:Date; b=YNs8mYFXgAKq9gES8Qb+PSOIvEfTsEYBLhhWVTuLd+P7Uv4RrhH0dR9wNdGHL0T0UV7n0Nvsp+ayXdxlcFtviTl5ZLN2lINWcUmH6AxuK1Fy59YfC/V/ArygQQIvo36tCjUSpkkWKhbf2JsFUPHdHVwhzzGk5wSQfYhmWGoTwbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXqGjwxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXqGjwxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746135593;
	bh=6xURQ5Ea05iOGoMUCjGtPKoFgf3onrJTftkI4yzziIA=;
	h=To:Subject:From:Date:From;
	b=tXqGjwxPGqWnggKxvBk8X2d/lLZuz95a2HJlc+iTNBs/pAJChTeADXDHYxeZDMRs0
	 XTu6fXDcO8f59N180BW2s645Ih4uO+udiPH106Zz1q7zxMsFca2yoCrks9JtWrSTkl
	 G8gdK7vjkje12iDhOmgmmycIWh0psU1R2FuJ0EkinCASQlvt/w+1G5wm42jMu7FEdq
	 6iOBW81bsgn20LH4e+5z2ZIEQo38nN4SlFubN8+8upm9o0784QHglvYZ+ty7h+uDAQ
	 Reiny4IcsNUPoxfup8IZx3d3YWJ30R8WqQBnJia7aKRhPThfcEsVWcpfVq6/isStNN
	 Qk/Bvuk8iQULQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E42DC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613559357.25456.5165987298642087886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f06f995731b3f50441e81994270e1e3e11a639ecc5ba804ed110aa7529e64e
Date: Thu, 01 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746135593
