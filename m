Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822AB15B13E
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716960863; cv=none; b=QI9zSFD1XOsxgBNxpaHiArS7QkYQFVeFe/OaBz5AVZu39/w+FSy2VJnfhnWZjrTvjtI8IU07ThWbwCzcf4PkqTxNauCRmJNaFsWBLR2uR2IgpSv1CGg1xIbOZKxCOVXuVdcxQJFvMrYzXZgpBQfKc39V1oaq9z7VYsN0eVC6BM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716960863; c=relaxed/simple;
	bh=pifdTxsGbExH7COWK4/8//kexIJ0opL1uTvzZj5s4Qs=;
	h=To:Subject:From:Message-Id:Date; b=hABWlD4YxUQGXk7IHkj/Tw/tG2kK6cwbuchAYka9F9aLcLJlMIbwbKBmeiATJKQzmrlk8C0+TYx5mnRG9tKwkFXzrEUxtQiLk0ptPSIFhsfnIBfHjdDUtpyg9fHDabi3uE3rcTHon6DMZCsdk1IHOyioXobmfoDQpBGYded8EfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYg3vOSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYg3vOSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BE5CC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716960863;
	bh=pifdTxsGbExH7COWK4/8//kexIJ0opL1uTvzZj5s4Qs=;
	h=To:Subject:From:Date:From;
	b=WYg3vOSxmmruUOyKquKjSgMNFJY3Ymk1FjBeGuqaWm/eCEEzSwbJuPEy8Eu1WR1/m
	 IEJg5DKsz/pwW79Uaqq55W/oaMJywXQQb179Tpzo82VXKOMHuojxCHu7dSFKQYdceP
	 5X9ikGxdLNY3TNkMjGYUM9Mb0pJOaMNKhyG5g7LoIW/xeCDA5DaiXbfZGX3lQgc2aT
	 0LyKlF7pjSNTymB0l2EomCIihHlOioi5eZkALvyiTjW9YfJhbI51zJuTkDMul08nXK
	 +QEjVHQkrbQwxmdNqpYo8TasD/rBiSek7I8QWQQtWxtjxBYy/40yB1SvR2jac/68pr
	 V6lnHEukrw6zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DABA4C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696086287.7538.13511409274103432074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4d8ecf511fb465a9b89491bfcda4468435a93b9009b736d47c525b2a59e657
Date: Wed, 29 May 2024 05:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716960862
