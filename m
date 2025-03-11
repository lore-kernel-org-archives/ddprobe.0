Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D40360
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741651734; cv=none; b=mMHNuQbhDkbVdzdASMwgCqN27ARYQI23+2YvUcb3Kg1rATA3ooDpzCwf/KzxPUiElqF1jPKfgRW5FwMhJM01TIya+a7CiJ7G+CRgHMqbDvFAcPlCvmQYIUFQ7lRr+deWMw/ZDhVssa2AOcv5+dI2H/KzSADfHxuSCcjs7jA3x6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741651734; c=relaxed/simple;
	bh=IhOh9nmFUZZkz+zjaXbbO7/EBck5pvuFYcr7ZABqC0k=;
	h=To:Subject:From:Message-Id:Date; b=Pt46QQ7xPdTIDFXlMT3F6BMA03IDmfNuapXHUL0p/rxQYfvCd1e8AYS/CLWHg/7ASp6BM4JxgR/ftstWylNJpx+agHZEqQR+t3d6DA9kL0c8PZdRm+7e228140VoKcI/vEpGejafhL45slqxFC1eYclfgFfU7khZY6I/LXeLBOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nr2ANwXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nr2ANwXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD731C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741651733;
	bh=IhOh9nmFUZZkz+zjaXbbO7/EBck5pvuFYcr7ZABqC0k=;
	h=To:Subject:From:Date:From;
	b=Nr2ANwXUuyh/Yi52avjP95+KkB/qe75OMsfZ5sDOggXuioApVeqrSe0zqGt0XdmXa
	 N3SSTLs7zTOfqM1FU5ERXCL2GSE7Tjh69b/3OM5JeVIjHvCkEfbBYz0IiN3usCJLSg
	 MMc3nf4J5jICfRXlysblUwzwDQpx8r7Ai9acY3O/L+thuOF5ScJAlvE3GpqAbZbs2V
	 WRpfKoGAt/FAdxZcaks7vQ4/2pzXrK0w2u94RBoTSZ7B4tCCnj+TBPNaxnJxD7O9iX
	 7/Svm2HKPvdwmhiiXSBec1EowjHU4eotS/uJC3K2BMYHG9PPXezIUDJkChqa4oOr4S
	 zzcSHttgXXt5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98856C28B30
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174165173359.3202.4100549372503916840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129aff519211015dfcca14b1c18faa6a026016b5a95800889262584e112f26f5
Date: Tue, 11 Mar 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741651733
