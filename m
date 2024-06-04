Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7066112DDBC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717469123; cv=none; b=D7ujspdIMZW1gpKP3QPBd1buNc3wYjkPWClA85x+f9GgxyQjyRoeC3S9RTw8/Vkq+5/oI3SBDiSDHlk22eBUTBVal/Tt5FODJS8gN3t4ab5uSRA5UJpSwRlC32dxRAcFZr+QyDsysvi0XZNEPosHlnvJxOVhW3ItoHPNhQ1LNAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717469123; c=relaxed/simple;
	bh=DBM3+Au8KlouQThxgu/+vaXAUERLTM1szHqkKo0lKjI=;
	h=To:Subject:From:Message-Id:Date; b=UT1qsp58kBe4kDtMcSKyj0safQibM6K8/fuqI2ok8DSWK+2mNMmq23BgamZfmJtb2VYyQOyIap9ps9Coy+opIWt0YPUAzzPdbeVcwI+hyGQe+vf/o6XZdL8gyz/6K7fK3zJNKt3QFIPIocB2koN0plEv2NZqi0a8zz3Y24P7PKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrO0siCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrO0siCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D185FC2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717469122;
	bh=DBM3+Au8KlouQThxgu/+vaXAUERLTM1szHqkKo0lKjI=;
	h=To:Subject:From:Date:From;
	b=XrO0siCEInOyx34F5nqjQij4B4a8tYfwEDAdVn1nzaNatpNgZZI9WnqPR3ldRVcH7
	 dLGlsbPgfpzYxIfeWkOdNmextWLfM9B+P4fgPznrCKTXbz2bNhxq0HXhbUu1qiHzRW
	 bgXwqaVgCZ/q1sgML5VWUWz8PhEri93lYXAOmWqwrBvk7bw35nrWCcjrriKdSsx2nT
	 1bnr2m12D5gZV5nsYWLCFdMqe1zhnVbN0VN1L0e+91wU9hsWmcIZ9jRTLaywDvXZey
	 6/5P6lp25sX1/cHyrtu3lQLJVSKZXPYiwYdRS+rYs8l/BBgkLqPLWBNZjUm6lNncwJ
	 ReHu1z2GcwGVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A6BC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746912277.1200.13378889332943725761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367519d3f407a478ff03b20635781cf4c7072bbe8211510bdc1ea17a4e4a9d76
Date: Tue, 04 Jun 2024 02:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717469122
