Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E92E56A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777088254; cv=none; b=L44sDGpPCnDXMVhLBE06LfQ4UmOxx7FaIXp6QTQ0K0aA6eg38A2G4y9hdDROj5FyLDk7M+3UqQxpmg/IrwxvyLJpqAxz0xAoUx+ifxZvae5wXkkR5oG0qvXtbngjEzOobpL8WfMp0zQlXzhDK+BW8SXv/Xdc0veEhXEPLX40V3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777088254; c=relaxed/simple;
	bh=ANmiyzgfcjJtV6fbaEcQnwHoXMOzJPj8I10qPCf42gM=;
	h=To:Subject:From:Message-Id:Date; b=I5Rc+6ZYbY3Sh3SUqK+vTg8tPLAgc4PWzj4afqVL9FCEIE2f+q0kEDecbLQ6SD7liX78cEIaaRi2a5OQtCfB867W8oNxv0Ot4y9jWUQvWDVMQCwTf90CiP3ed4hGoeStGUFfR8HCi/67rwUAO+E1jN7pbUEleRQ0ET46P19zcAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1YtJbjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1YtJbjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3ECC19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777088253;
	bh=ANmiyzgfcjJtV6fbaEcQnwHoXMOzJPj8I10qPCf42gM=;
	h=To:Subject:From:Date:From;
	b=b1YtJbjcHkAXJt+fjE6IU1KYCsYxjJHifNzsNnBcOmggJuXcelJrNBqzb2GhdoomK
	 JKRTokFfaujuJExCANk0p7HL9jfLVhVaqItWeieifC+1n6O5nlKcXuOV5vJvp0NqBK
	 S3oFUkTkH9Zyw7kn/CF5n2rfnamcAvS/LK3dTMJN6xp5SnNJMkshxAY6h5Xg0vMuhj
	 ZgJw7rXBy6BiVbNlY4ib1Deuy2yz0numD7xIAn5RpqWnKxebJ9qypzaVAUHwHo5QMW
	 npMb2aBwJCtFPZexmZQ6JCAAgFT+TxbIE58qGCU0dz0UnwAtqyPQNeoljckHqfpllP
	 KAfsUEoq1IfaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F3DFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708825368.26568.11097849237387772789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175f516d60636b3a5b7ccda57a70ce9df3a01526461510722f9dc3b4522d00ee
Date: Sat, 25 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777088253
