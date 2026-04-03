Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8C4239E60
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775238334; cv=none; b=ZVDFjx7r+DGMRwodWROIDKQ6sNjtXj2Kgt2+7LmucRkUi2FQnasme3m72lOKt75iBnwJeMtYElsQp58svSbhv0Hfuv5d+2Fp664opvAHd7UPbs65fdlQPPYPvW58//aZcqwDsqCa8us/H9rVzzGoXJMmumHe7raf4LfMKj5quYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775238334; c=relaxed/simple;
	bh=WZG/pNnacEXG/UpoJEe13oZI3STQywmLZzYfvpsSoa8=;
	h=To:Subject:From:Message-Id:Date; b=iX07OYRWopofmgAcExQL87yPVcemt2Ww/UNBh/pEMVz6oYsXF15iqRrHQwgtk5h52dnCV6EWTSh+rkhghQZxksccdTFuCsunq54nH5KntEcqhfJvXIlfxxm3oB+GaoVcmX29qjVW5xcz2RyhBK0swBk2GI/pG9VQlKpjl/b8Jts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Idk6cgad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Idk6cgad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC23C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775238333;
	bh=WZG/pNnacEXG/UpoJEe13oZI3STQywmLZzYfvpsSoa8=;
	h=To:Subject:From:Date:From;
	b=Idk6cgadzX+w2GhZMnlKAXNSiLc28J7b4NwWsa9NSGmTGo4cQgbt8xAZ2Km5aC5pd
	 EWI/48QJQRALHAv1XNmqENZHoeijYt1zoRISz1YxA7GVABX+P9u5FjXgFhhgAMZqxb
	 Ld2Q60WjhPxYFf4Rp8fiRwOffKO6cePo2o+tJkxHbJE8NUSzvqoQkxcX4oxLLDPLdo
	 iFwEq8AW1SGg1MSLrN1xMx2EU6jDTNOaUd9iqFWY5qdJAUYdbvcTmvOE18THG1kQvF
	 s+2fGy2NBadwcAihFiqJiGyG7Xwys60MzpB4+K1MD/CdX9YZdNjU+Tiv3rTRIiQy1m
	 V+CbGUsSDKlGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF48E8537A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523833368.27739.16877099569760498649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe47bcfb55fe3a731d604ac525b73ba68477ad78bdc14b1fae4fdaf0e0cc70f
Date: Fri, 03 Apr 2026 17:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775238333
