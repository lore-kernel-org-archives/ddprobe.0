Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625DD33D5
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 08:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713688223; cv=none; b=bN4YfbKDjZg7hy/ThMckXei1kZOaaG2MpUPWYp0UyQf7//VIRWO+h+sgbafBhGOyQWNV/oNgTgh/z/9Cb8Lt/KcSTACm5Wnv4tPzBWJoUBa6LZtPsf5UoLGFLLa+YIcPjV0vjKv35s2aDUpGdhUvLZVwrjxKaG0H5EIyszbw8oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713688223; c=relaxed/simple;
	bh=brMqOcL35zUOcugi1GvkLiOa2spaIUa5YHC1CL7NNRM=;
	h=To:Subject:From:Message-Id:Date; b=RdU4DquovNghFBwmD5aJxdA9xpGwFZHshXWNnJI3Nza1VOK9RGYEZUNg3dbeFwSZh23eqcuC9WrhVT5Rs2cjTBqZEN9r/mOkyguoVXjfyPIOd+qgkJFbov+9MO/VgSt/+smUx1nZUYBi2+e9URZN9MtUzXa8dQpZ27O43OuCdcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAuTF6cW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAuTF6cW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E023DC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 08:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713688222;
	bh=brMqOcL35zUOcugi1GvkLiOa2spaIUa5YHC1CL7NNRM=;
	h=To:Subject:From:Date:From;
	b=AAuTF6cWP09E0vRM8ALkgv1qbcvnyZWuNl/fhlWxrn8JynKv8eaJm1S8AXv5DI5GB
	 ze0oNIJ+dO+eHduKAdII6T860LcpMpLogZP7futakJKoGPck7alXslsfkWmU2nEs/6
	 1dXVMf9fSXyaqTs0Zi40YjBMGaxi4SsodMjDUhvqKNpIyudY1l1wJ8kcQgln0penWW
	 d+dmYarDu5uqgvDNzzjXzDRdRTuGsMP49xSuX4+EQoaHISsgkPSOPThX1dvMspM1Cz
	 7gBzpz4JO+7/jWI9/UeneW9SemtwZZ/zxIsaYj+MhJ8oQbi6u80Z7vI5aJley8KP2b
	 JiTmJfBQdDyFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CFFC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 08:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171368822276.19582.9040804660597402116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f601fa5017a9805912a5cfe5755a9b74a568634e27477e08d84800e46a0ded
Date: Sun, 21 Apr 2024 08:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713688222
