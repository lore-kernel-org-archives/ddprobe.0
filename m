Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404047DA73
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748051394; cv=none; b=fhNUhkyWyWTkqa0a8wizO1vK6KdO63BiSB9rTENbJAVM+C8FTVjAgq3IBUrsDs+wrErB+nYZ3cF5aP7LkffB7vvowAmA9WEW4feLSdeZ1xodfVuuts9SgXr1nbV4ke+u/mxAx4+BAuFxmqsaFhX2cdyuMHtkAgpsoSlQla6GRBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748051394; c=relaxed/simple;
	bh=zh2gywZEosCLGQteaHMIWZ4TbUm7cCUEoScyPbnV794=;
	h=To:Subject:From:Message-Id:Date; b=p+lAVnXihwoDGgOVjx1ujXFefZQZrRSlBXl/ye2hAReOtl0yXn2rQdgjJ6ahY8AA69K1ZbcngbsCpIaeV5lZsuyHh9xzFFh8bNV4MBfsSj+A03T6eOH8jtX5rNun9pNpPaVaM3iZluBEd/FqCINeOKQ1m7oxlp+BLoQrJHkqzSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gb3pFNvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gb3pFNvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEFBC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748051393;
	bh=zh2gywZEosCLGQteaHMIWZ4TbUm7cCUEoScyPbnV794=;
	h=To:Subject:From:Date:From;
	b=gb3pFNvz7xSOgY8hIBTOPjDRl4CvLstW1e5/zgWUFOaKTY7WRkoNYNeSC7W+K6vIX
	 Fajvby77lqohD/J3Rw6PpGKCxroOcY8776pS977pgJebLxxb2IIaQWIRyGOrhbhEXW
	 xqAQRR+UdaduulZIGlR9G3QDt1MgGjMeZRXgcji5Io/t5TdaE9PE0qFpdE2qYV/2AE
	 dwqm3/kdtbAqGua5kUr31ykOS2ExC/QyqAsIKJeygIsqHdRkZwY1a5G0MAITtrOwdk
	 b3MoKl8laU6FHk+H/zDRJYTnZdTvNYtbVAFPpSJbb8Doy2H++HtZI1ZSx3zorqLFum
	 QDHXeyWNxRMYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F585C54ED0
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805139357.5956.6626933110555195792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fe3bc1965d6dde8ab059792453ff905af0d0c6c38431280300ea4b031baeae6
Date: Sat, 24 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748051393
