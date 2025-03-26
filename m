Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B1B14B965
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742971195; cv=none; b=kE5EUsbmgZzUGMIjaVLQYUUyzgZWyNOuPphdPhP8nhMpWuxfnzEKt2obNdB+gX9PN0rjPykXtAMGKYmxCz6br3zQpKdZ2iy/qpzb7i8zUVhyCSxPTRMfZUTxa+pMBgFsxNDvDVBF1sVyPu9z+CTSTMhWJaCp4wlc8RLjh2OJ4vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742971195; c=relaxed/simple;
	bh=dTDu3DdQ7aUxTRnr/Jc+BlVVFXqMozBZzWhschhAw2s=;
	h=To:Subject:From:Message-Id:Date; b=KMg5EkQsLIz0xMoC6pHb2r9mdh7Zi2skufWDBJArU2ywIDxAHKnxYOiXoNlWsyaVD95pNhLRO6eeErObBfLL6CQa9SGKxNg0kQh3ZA0CpvOIn/ogFpFFjcktWBhmtwD1ThvuuVhy4/mf/5E1ceaRNB4PLMNSDGR4gBGinCP7hi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AphZ6//a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AphZ6//a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C60C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742971193;
	bh=dTDu3DdQ7aUxTRnr/Jc+BlVVFXqMozBZzWhschhAw2s=;
	h=To:Subject:From:Date:From;
	b=AphZ6//aGtbg+MHc3Qxpf676/uzme5RSD4n9w5WuZ4VhuIF/GdjHB9OZXm5wnF2Ew
	 L7XyIObCFhufRq6toObYWxHlvfN0VHty2/mAv3yRVk8oWxbBDJpDw9sSJ52HaiWx+h
	 NtaTCpw6vAwnzpABSBgkKSHWrdLyfzTL70KsQUNEm5GaVSjDo4J1cIAQtAlAhHv7cp
	 7qSXdbtTLPtOy+bdTE8nONqHtG55kKy/Gx0ANAkWRjnXKzZRGIC27syKppOYP6Rs92
	 y0XXY6h2Jxwl9+XOF6af6b+9khkrERpNNlFx4mINsMF9a55GjZ3b4DfucwNcAvg/SH
	 FFZKlkZUwAY2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D6CC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297119359.3372.9765502923404035528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e388f99ee226c6a841a9456eb23d3bad1b3129ecf03360bc83b63c3924cb028
Date: Wed, 26 Mar 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742971193
