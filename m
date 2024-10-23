Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB719475
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729647954; cv=none; b=BQmDrTdSeRm4MkqsIIo5fMhVBf78bVaQ/wMEtFIUg1RG2kM5Seb9w2a8wW8LGN9OVmDsYGGSxkviEErE8V2zIB+VPNkMogxu7MdW3Pt4fjnWyiAx36RTYrKywEPNoKGz6OvAk/NNgSkO2J6cp71xQBLvjlTUkn3xBPipDfYRVr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729647954; c=relaxed/simple;
	bh=U+dVrG2hM++z08Ij+vO3zz/L/gwNcrMiBNILon9b+NI=;
	h=To:Subject:From:Message-Id:Date; b=PbRSKC9r8PdUtxLWdLSfh3oRyxOqEAmNC96fODyjG5U6eCQeB/go3hZ2vWI0WOXWPpv9nCRCyN1pcWzSj9MXPHP7lfCKGJlaiTJzgbKI7KlIKlXtia7HHDfkBM/b3gJY0TEZjkBNaoHPV3dWBj19gRKrhk1eI7NTADskFgaYpB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYsOc8OL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYsOc8OL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB74BC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729647953;
	bh=U+dVrG2hM++z08Ij+vO3zz/L/gwNcrMiBNILon9b+NI=;
	h=To:Subject:From:Date:From;
	b=IYsOc8OLb/yrfRy6B/fNB6dZeWVnXKW4sYnZZlSE6Dv/iKeH+BCxNytOdm48qN0YU
	 pArD/un+BhOkLVgN2nRcYF7/6fKIKlYvMVYVshm9l1A9KiwmPI2q9wig4XPrqI1b/N
	 LMWrb+9sZmfbYdy80AMQMMSbnNvptkNwwbpfU0gvq92q/fGVboMBYdANojuI3xyZm2
	 nCqjn/i4dZI70XUMmUmKvo1vzwT+tuds/MNCwoFuDTv7Xo+F3eRndNrHokERaXLCeh
	 ajPEsjUiNEFQwoe13wpmwV/5o+0t9avBhAw/baWM0bpKpCv2HUnpeHQA7xas7v1ykc
	 1EMt5qAGasqcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974A9D2E009
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172964795359.10141.11456090008485691788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a28474fc64fee28f06d93b91711e1bcc585a73f3deb76f60afb511554d2d24
Date: Wed, 23 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729647953
