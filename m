Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510E51E1C11
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783175914; cv=none; b=amCc31hLb+lYnObbR73w9hey4f60FNZg0uo0wfgVas5iAX/YPTXRI8kovU8+3iHyUueGsByKgydr2S7QTx1fHh9VZ3VWoa1j3Tf2gm2KfIOLiRZ1aC8oVc1GpTicz+LHmpbGQPAZMxSr83cXvhuH6Sb/ePDjDl+/ZgItvKqnwtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783175914; c=relaxed/simple;
	bh=UOqjxgKoXgjvae/7uH7TcydwnrMbr2JdZihLKtv4st0=;
	h=To:Subject:From:Message-Id:Date; b=aeDq89+ga25iPDnlYeJ9Secd7KdBinxovu7NbGqbMTp0f4erHheGsxtysnTKTpwvn1jBKizj/nX93Wwj5bgYEj3dStWsdOMR8EGOG9i89y2GGz4Z7EGK3GQxAsfHiXT6OoV/TKd/zXMT9NPMrPOXVRf2Idf9gfOUCYp9N5ZIu/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwOpxs73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwOpxs73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3ADBC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783175913;
	bh=UOqjxgKoXgjvae/7uH7TcydwnrMbr2JdZihLKtv4st0=;
	h=To:Subject:From:Date:From;
	b=QwOpxs73fQVDqdbCTa1aQ9c+KiJnkO1J3OdiprBum4V9XUIA8MKr8lo/TUF1Tb9wn
	 blj7atcGjUCHeBzokPywH8wAP11dbF9NpktPcyQ9vs9um5gdqHi0fd1a+qM8SA8uEV
	 svkFcOKy2zjl3uQvEKoKcusfYph9fhOMFnZhnMQZh3y1eYKyclqS6FcgTQraauyRaT
	 cPOWS+i3lp7YgZCx8VXCsAlELmppyKZ7Pe9sWntmw6vuUrMOEBjh7a+53EM+rb97Px
	 LgZtTliOBAAjDS/yLRWiOwI8tVwWaPpggGC8hQ/J9VjhQRDpCvUh67vNGhv8NJsM7F
	 m7xpld6vEcH/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA6CC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317591368.15585.10841978762759367389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92dd9d017aa03e7cab9414bab67ac743eacb8541c7d238729c28eefd8e69d4e7
Date: Sat, 04 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783175913
