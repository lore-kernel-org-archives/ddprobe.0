Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30988215077
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756184994; cv=none; b=df31jTuz2VQg38jPFpCbFoIxGcjodQLfN9Gvu3BcEbOo5xB7z809Sh97QHqACmw+eDTQWBbV3AP+OkeGLVyRr1qU5n95gdCHY7wCquKXBB4LHvBSMTu7FMt6P9Sp1S9QyVpy1HD0rRfAwXydyhQusjHV2869bxolTUry6CIVEd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756184994; c=relaxed/simple;
	bh=o0o0F4XvYQtctU2zJYv3OIdYsNeVVvTNLX+2K1bJBJg=;
	h=To:Subject:From:Message-Id:Date; b=VEBd2xsuz3U3SbucYUenY2ZndhR75dt7788t29h8qNBcFYhnD7zLJw9QCApL06EYCSHlbyutSKgysyeQKL7IRKdFziU/NvONWhZ112rD7LnIoWeuUSW6zsJwe2CeMc/Is13ctnGXvIfMDAvTU4l704l7r0MT2fze2kMyt37BR6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDVF0Q7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDVF0Q7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D68AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756184993;
	bh=o0o0F4XvYQtctU2zJYv3OIdYsNeVVvTNLX+2K1bJBJg=;
	h=To:Subject:From:Date:From;
	b=sDVF0Q7ELdiDwIq4btSBnm4HH/6NeuLs13mcFV03czihX/C+zgebfngvwD67gGi0O
	 2mUFIhAY+RepbW5VcR4bQvcwEEkFlqZeSUzgh0xwElJQFdLs92JiTVuhTcjNSxqcvo
	 lJB4NpZiaBYytRqJafTXp2VX3RdHNWNSy2fMm+0NJl89uJfDfMue9vlSq+qrnq470M
	 yW8b9UWJsn0witr/DGJDdEmM+Dnd3yBKI2yO4EiwXQYv8qtHDCIVmDMBuHzgkn9WnN
	 /Xcos8Q7DJuVzWkKhQKW4/GjKUHeCm/DPoPg06Q7VEmvYn1veHSekS2n1SxcBY6kjZ
	 VsJIWGh/vp2ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E808CA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618499357.13918.8395226063351633438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ce412ecddc91113e6ab20b68ce3914a04c406c54023e44d4dc254111c2d686
Date: Tue, 26 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756184993
