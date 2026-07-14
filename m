Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40447DF59
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784047114; cv=none; b=PNTLxCdXWMjpQz4FNrs1LqzEfNyvU+nwgwcTFkLdog1bbmuaPPiJfgEOCBU9GGJF4X+DPbzR9/xfRXTNmWj5oX/mvEdIkeCSJBpn+i7PersAldhUcDiQtSU11dIRx3EWCPTFk0mNvezVhKYiXrtOwwiEGm7/GeI4f0Jh+PYsJ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784047114; c=relaxed/simple;
	bh=BVF74wAhSLS4DJoiDkssWQSWB6kny/UMtIcn5/9Dha8=;
	h=To:Subject:From:Message-Id:Date; b=Hi4tqF/enaUGI2Fxa/dburIA6frPRc/DeqF+DI+YSxNUw3iuiBLNFWFONj1sV9EMfXnynAr4ybQ0VR/PE4JuIrnaGfCze77KRu+NwJHKd60Fheq1OUzRoi4mVYPjIr4/76gTHlubdfQlLpZIHnrSmNg0hkGRULfiFzMxtSAvU0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcpKjTXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcpKjTXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B74C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784047113;
	bh=BVF74wAhSLS4DJoiDkssWQSWB6kny/UMtIcn5/9Dha8=;
	h=To:Subject:From:Date:From;
	b=RcpKjTXRyZjoUidgJro8a6eUsj4wmngaGwU+3nA+yUvpKn02gTFvb5m/Fb1avK0Bq
	 3njX3mxb+sr3ME5fCuLtW6eS8JRUtf86Rn4lYjSrXeWdFNYeCQe8ohzbnuQzJQPGpe
	 0E2Mz0WS54X1oxkIusFjhXh21DT6aNUBiXEUI+t0/fBuwVN1r/EpC5o3f7S5rzUPC3
	 lYTxKTH2t6Mt7S8hF1J+nnD/WrEmu1RuQCi8K6c3w+XZH7VJ3L7hewjmaFMXDPIie1
	 aRs6NJ92oqWUrgM42zoguG+dS9FlC6HqPp/K15wSZ1srEMld62FzMID4aJMFIJTWew
	 QrpLf053sTezQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AD3C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404711371.21735.4223926895411694819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c91c48aa04c42b3bda16619c218c1bfe7e65c5b5c3b3726508668db94968018
Date: Tue, 14 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784047113
