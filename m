Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A11320F08C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770080034; cv=none; b=X6JHwbe81focdWQdxZt+eGhyX4U1vnvqItAwJCHJrEuxR8URWiTRBlb28rtDfsPMLsb/FVmRnPDBSrd13wioKOQJA+pDbAbCrTAAAn7hp0fuWlPzjcW9niDl0gDakWa3AcGutMzKPEjbxrlE/x0QJSqc9rb7MFsGjQ+xwqKoEjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770080034; c=relaxed/simple;
	bh=PpVGB5bWA1YtciDB4+O+b0iKvNGxsv/Z5Mrc7M/8xl8=;
	h=To:Subject:From:Message-Id:Date; b=CivLRZ1WzxC/S7x0H+lEKI81D5laMUOHW/i0dTHbrQ0DaPufzkYPYgxzhvfy02N/aIjlcJFFYtOc9DvnVTfKeVORsaqOZjQzCaCjc1tuoDHeLMPpP5rMgU8Pb6wmAEZLgLs7drDFkmKLa+apDSzUlvHp3tIKRfKsGYfCdZgRls4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY+0Mq7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY+0Mq7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2B3C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770080033;
	bh=PpVGB5bWA1YtciDB4+O+b0iKvNGxsv/Z5Mrc7M/8xl8=;
	h=To:Subject:From:Date:From;
	b=MY+0Mq7HFCvHf8wiGl8xslVklPwilOEFASIWxQp2E6dfj2PI0YUVm76xR+D5QRyzY
	 MwIjtxq/+Fnb+U5DAjTh69W9ve8Yw/HVsiWCUND7iPkST0wDbvkjxiW0tyTe/fki8k
	 gj5egaIDK8N9WRT4aIGw61HifsaupLA7ATGn3nGZ4SqV2JdCEWr/l2Skz2UVMLk72g
	 NyrkMjLuYoSB4e9yENbcR8xjdWEfxqM6Tfxf9xn5l+Ee5/Dj83/cPQHeba8ncIoiDu
	 81Ew2z9xBZCKe4SWys3Z82n5k6h5K+Pi0Bc4ti7eV+wypq5kBw/8ijymvL5HbPigo1
	 F1gUk7G3CI2dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48BAE7FDFA
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008003361.17605.6012530275082950501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6e1fe1292b4e2771fc136baee4e1f37d479d517dd06d1c623a5da2f9807edd
Date: Tue, 03 Feb 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770080033
