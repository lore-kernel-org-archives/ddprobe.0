Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9993CEB84
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791456634; cv=none; b=AxOpHbrb/PipxRWNHadNFgGFbSBAfidPhKn8tufoG/+7fUz7ab8UwOlp4cGjZxdYxwkgp8DpGCyT39y86YSumgofWT72hOI07tL/tFSUIACEbqAQNyqzhwpcB2WQ3iINBAu016Ie/x565Zw2x//tQ5G4Y6dZQ1GlOyBqrFzu5OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791456634; c=relaxed/simple;
	bh=1of3T5cHTypkdd3YPhUEIfI1ea8is9x1kRC508NMDdo=;
	h=To:Subject:From:Message-Id:Date; b=UfC73EfJ+HqLlrS5cQKW+IYudR3PakrRQ31BFUlUaPIsjHXIaMAFsqpmQwVizeRmxtdBkaEegEA1fiuV/WZPg2x9cCWvmHLgE4yL47cLRTjTnVpTiC79CEbdWM56OilfydgUYed+5c90Dyqk/YOQ050GTxsJ7BPUarlxaXOFpsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awe+UagK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awe+UagK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CACC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791456633;
	bh=1of3T5cHTypkdd3YPhUEIfI1ea8is9x1kRC508NMDdo=;
	h=To:Subject:From:Date:From;
	b=awe+UagK/KyhGciukLCb0FdVUHZTWPh1vbFjlW7q52jlh59y277CMCPMtPndMKR/P
	 4vpcwusCf2LOT5n2BuxVlnwhMP8u3OhhEUfJD31yxQqe9PHDPdjjPYfmxLZxF55ByX
	 nlTRBPAHcAytLKANudXoQREV5V35zLi63ABBPA+ltW8bX7djzl62yMf0PcO8OgdH2L
	 j71AJXWxS1vTguhP6deXCxlKvhq4DlG1wVC+H74QUApp2iZgiYCt0Grmwoag6kAaMP
	 tdFCevGIKN7Zg6CHo6zx6cES3D+VzQIysU1phq2wX5W4kCHNdB1yjK7JTK838GES2i
	 9VTJ+yBNK6Khg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB884CA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145663369.916.11617048196726202176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63de48d21b776e9039dce277e28c9ed04f6736c2f4459efe7b8859a24e5fbe10
Date: Thu, 08 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791456633
