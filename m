Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B431C1738
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733847954; cv=none; b=P+aGU4cdoRMMmhWWqssIPr/1JeeGF07N5umZcKHNk+F0slozJ+0RUfCX39X1y15oQ1PhNiRzrOMwTQqRd0TcW+DiMIKMBnD6r4QpkcZ25g68fBcb5Im0wsOzz4btvlOTDCp0gEUchJtW00G7yPA/mIB1fIU78xGBgh2TVsGvTxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733847954; c=relaxed/simple;
	bh=kilHhCpZvTDRUqjQkppornTco/ZeuGElX1bQkNxcuBg=;
	h=To:Subject:From:Message-Id:Date; b=Lbxkf+bvezKQnqmd43fSNuA5pFREsHJqC8e1SBpn/NMAC3bmC9YkYJBC0vdLI5su8IpdCf1K2kxKxr+B5KB4EpZ4xec1V3b2M3PvvyUXe0UPESnvrWMAep7EYAAj1OvfzzEAfyFflig2QUkdIcMB2VS0jsKTpnPU/yOW2DSX+hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBLaR12P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBLaR12P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CB3C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733847953;
	bh=kilHhCpZvTDRUqjQkppornTco/ZeuGElX1bQkNxcuBg=;
	h=To:Subject:From:Date:From;
	b=HBLaR12PylSqLPZ8HpbOelIhBM9U53itGJ1B4niwQK/mrm4EcwcqXp8HIqBqQmKc9
	 bkxomO3mMecKZKL8rYy7qrnWmbZlF57cm/JjgT2HnFQwT7yEfQGs+5pQdKVlQBwaDT
	 Pkd5UdgqL9N4vC9l65HOU2lZxA3h4lPI/5HB9Hp8ROud4oUbx19p5jhM4+IkrxlJ3W
	 N2N2q19q5muTrUUPCUXo2LkztnOPofDrLUiwIm1G5xV803bzhht7AGFx611kXZ4X7h
	 7kb2mGyTGyFQHKvft8iuGZW5lS/SYvPwJEbKDRlviJss93azmg6WrJFOf/RxsHOKmn
	 kK4/U7ZRPnXYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91283E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173384795358.29628.10200431378633733138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f84b58d934b67b49b3559a0614183318efc3505d6f404a8306638d8afb6a98
Date: Tue, 10 Dec 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733847953
