Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A45B4A32
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763238054; cv=none; b=J2i77szKK6YTuvJ9zDIAujol4fmx17+zuHJyy/zsiw36bGzrlal3jCVPYbMucqWk1WQOtBu7M13Znsq/DSR/uSK2iNltPIyzhEQSbxtj2PL9LjNKAqtNegLKG57ah8QQb5rhUGM8hIMVRTq2T4+HQ6ieJezDeSIaoabt8LkN8EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763238054; c=relaxed/simple;
	bh=N2XrydXTmbwLUmMZ4cKJLHCbzH27EOETcUap9Re5KcE=;
	h=To:Subject:From:Message-Id:Date; b=aFJADqycVvfw9goGp8mP/L4VxpfOz+mC6BsTynGlh7BbMpe6iQ8ceekGsfWUI8sI8SBTCsiRA1/vLReSSloQ9414P+MwWLvX5YMc0LQ/kyKsNgXaCRsS9QRgKQUZcMMYGKGs0gubG6qg+URWpG/ZqOsZ77EsM+LMLPM8buj1XuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTl15TZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTl15TZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55CBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763238053;
	bh=N2XrydXTmbwLUmMZ4cKJLHCbzH27EOETcUap9Re5KcE=;
	h=To:Subject:From:Date:From;
	b=qTl15TZ2OpL/yfJM1KDGzsle1jqYmAnNNbFP411XBewD2R5BikYZ5FzVCpIupvGro
	 PM4EHU9tpNPth7SbpSqocAvl01Td5WP6IVSLMOHV7lKKV4JINLnJKBj9EcJ7Jc6V2A
	 gv1DLivzsfEMuSHIY3lboRVfQUaIarqpf0qqKACxrKUceHlam3ha2mDZ52Jyu2MPDl
	 dU80BjsDxXUJNyzHSaVk8WquHwIAoeIf3qREu3bhhdKxcGdnEr+mXx82RSke4qywtA
	 N0F7S8i3h8OxnQDLA7NMpWKcpKi13gEINAPbiVVMOmtaJmtrMxGnPmhdKX/xHLCXqp
	 BIlGkZFx+qxpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B5CEBF86
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323805358.13795.4350130347674057292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4525b8e4ca3455bbd462da1c161b1542afb4d928734571574e4f69f404a9481d
Date: Sat, 15 Nov 2025 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763238053
