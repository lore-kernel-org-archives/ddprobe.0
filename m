Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4507C3EBF01
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782478654; cv=none; b=udK61GQ79v6r/Ebi+8PUKBt7DZZWgyfKq7Ca8V55IQauDoyGO6XUXWLPe7KhIqjR+HjPz6qi1B6Svtr7zLvy03jy9rTUPjFlmrd8IC40V5FkTwQszY810YlZr71RGvLDn2uAeFrZKi1JZUkadFHW5hB9LAfr+xn5/AZgOLF5UUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782478654; c=relaxed/simple;
	bh=G065rkoF00J+hrUcAd/ujZ6n8VWXcK/ozIhhoSPF3IM=;
	h=To:Subject:From:Message-Id:Date; b=QHKypHfR2KN+q7X8ppCXyIGfHtihLlkNFu10Awy1NvJ4Geaw8ssMgzJolnAMbbXxq5P2Aqkx6gT4DtpfN8bMoZt8ED1U61FYH0FK3iV9CUu7o/LQcnc3xNx5MWqLuqNuulr6GgGqB6ptlpHFXbtYjB+vf6SoMNabPWpgQAWXb3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsFsmpGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsFsmpGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CDBC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782478653;
	bh=G065rkoF00J+hrUcAd/ujZ6n8VWXcK/ozIhhoSPF3IM=;
	h=To:Subject:From:Date:From;
	b=LsFsmpGHNeQONMWdkx/jvcWf3lPGcRmOtBXgl7gQ0+E/oNXEHjPhagYc3598VtlLT
	 RBf6ugXcXWdYPB79ENL50lQ6VT2uA1meDXNjg4UGr/+k0xTO+9kKszovT9R4AVVlVH
	 zIkuwOCdol9AFJP4DFl78pWAKdxx0slxqOWG8FCrFo6yvMz+43CDULzszeDWJpoJJ3
	 Kh3D8FjWEIK3dF7wFRr0kUcsE0KX6Lj7fIVTWbCgvIgvUGMG1Ut/p+qFP3aBnTI2LS
	 2urzfsB53pyecje7WrZFzoyAnmux6PVXB3ta9pqkdkDcVzPS8xmxCVycQ4zpkOm9hZ
	 nWoMNfWZK7NLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EBEC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247865372.26172.7089342034190900135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336801d296806d428e84646270548be12c5d7f10f10c0f04c8b90a2ee75b5e35
Date: Fri, 26 Jun 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782478653
