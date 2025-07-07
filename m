Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D5070813
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751877594; cv=none; b=qTVkd/D8RbAfUMVSBGjx6IfA5elGYrWuN5NwEcoeKmkZASXA9YvUwlzQPX/01wyvcvWQg/S62HuqHfNyn6MMybO7tGWR0Rd8L+XNAYVumvCwddKUiDO+dIpPIzjnumoeNlyxH6xG37JwiTpKe97kwqmMfvfTu2GB/7Fb7K5ujYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751877594; c=relaxed/simple;
	bh=9BsMUPBSlt/4BbNCKuWBuaYHdUaYtdL+iFz2XRB+PRg=;
	h=To:Subject:From:Message-Id:Date; b=SpTY7YwgAeRfqdD+H0LCH4fwhj0ofQKZq6/KbnWl6Drzw1sGeubzDiX5W5wR71QCqk2QYXlDwH+LFW10qUMFxvJGOaNLyRwaviiQamIUhbbXR75vPE3mHva4k5BLeRynVJ+PkJ0zX9m4joCc9ZflpJyhFp10S00VFnWWOoEHmnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeQ9nmWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeQ9nmWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53F1C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751877593;
	bh=9BsMUPBSlt/4BbNCKuWBuaYHdUaYtdL+iFz2XRB+PRg=;
	h=To:Subject:From:Date:From;
	b=HeQ9nmWELnq6oPj3o3Q3HrCFZcppUQfsaMikDy0jiQXTkPLsBDB/6G1vM6A0/3Pru
	 CQeGJUg+eBDPYZii3zrVOklCBK2+u+yzqj5iwflNWLF6JNeYStiHJBVAVqF9v/cjR7
	 7WFFY6JuKFJBza5Y8P++RV/nXyIjyxJgd3gNEozLMQYYhUFE6PZ9ZnxC/2gOaVfb04
	 g+0hbC1mP7U4grF70eB3qlmtuwzGGJzsbw67AUzCYh0CMW2ebyPZ2E1CFrzDD7gOIq
	 043Z9zuTdl+HRdwGAwNDAafaRStdRmfdOMSgExh/hLZ4ZkqD2UdqK3gj75/BS9ZNhL
	 crqpZwVnkMbWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940DCC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187759357.20515.7149007264521452250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f4500324e3e45105fd9489ac450c4ba5f9f67e6f3a28f95fcaac88bee02e921
Date: Mon, 07 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751877593
