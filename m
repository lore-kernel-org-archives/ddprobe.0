Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D69A4A1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753251594; cv=none; b=Ep+jrON/qh0x+A25mKT597cVyTeEP07FZd2rT9V+//5WZR7QEfVr8oiMjpfdPeOex4vnd2hd5HqzA+WjIiMuL/cHkMar0YZhvc6bjomf0vIZLupK0aTxWe6PRJyr+0oIrqddg6RnCU59M5c80Z2DSMxS7fVhMOsQabynaOEnbaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753251594; c=relaxed/simple;
	bh=iZsvo2QsSKlaq+Pzvvzq6S8ue8GjdS+LVQugk7osLdU=;
	h=To:Subject:From:Message-Id:Date; b=Fp4FVqK7f1xVtpk82bUjD38DFz0zKXTJdoHbFOOyM9PWjWGujiuHz/bU/G2ig6s6eupZzlOqgDI8pPWFqAfDf16vzw8XvQAg74o3JumTP5/b09DJcgW3Ih9+eqxe7jQ3zY4JUB8GCn/Gq5kZQzKY6KxTpAjdxLALV74NDAkIAE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGPSN7Lz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGPSN7Lz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9CDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753251593;
	bh=iZsvo2QsSKlaq+Pzvvzq6S8ue8GjdS+LVQugk7osLdU=;
	h=To:Subject:From:Date:From;
	b=NGPSN7Lz/UNAUri5gNvGj7MmYmKAK/AL+A2N5UjeoImCtDp0YNKLx/uy10OwtIVKP
	 Db3LwAQEcW0cRPBIdC4MIY+j+h+8Ys6LcDEFbH9RkhwoqfivLo5ABEDMtsfNlav01+
	 2siQ1DoKji5qbN3aH87ZtMJuP16Qd1LsxrrYfdZ9jxrGj96LO9TNgzGlxkAfBkIDQ4
	 fUqH54/DkJsHNnilBLRt5vGpVZexbi6acBXptloqPl2YkbiWsFHCQqIe2HjOAgoASB
	 Xr+0l5j6AluWKhzuwgAkkxoMAnMwtbyN1JclxSNju9ZEBrOYBA/tsZ/+L8HrarBXAW
	 2KvAz5FffXSYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDEBC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325159357.31312.17840348427719226103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c222737a453de925ca195455d7ee0c1cdf0cdb36843bc4b53b3ba2b2cc655d
Date: Wed, 23 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753251593
