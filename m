Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CA513E3EA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721169323; cv=none; b=eCBNzpTR94uvsN8bptXbD2Qf4z2cIgkVoCqEwuBE7K4ml1YpTfDuktstOezw6uSF7c+Z59fCyC7Lps0lCAUMmsKBLNEO6taKF06pV4ovJw9NawxZ/cBIqn5IBIy1AT658ymc64Be4SwtGmTQDjoAdnRxwWd0XTXGS1k3ruK4VdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721169323; c=relaxed/simple;
	bh=xtaGRyqSDTBiOpW/euEYFI3fRM1hHQsDLYkvc5LuFmU=;
	h=To:Subject:From:Message-Id:Date; b=BF9ilZsPQKH6z5wiLZmU4BKNFIETH0ECXeDFP0KKH98ogEnnH5sv3tZVWOh9DyjplAtoPWIO2Iwp5Q+Px0kDNHXw/D/t8vIchgP320X4d05pOZOPqk3z4d02b08XJ46khH6OrWNhMG8IEYSTfmuRhBz1y6iCRCPVQnCRYW3b6/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EesERU9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EesERU9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB953C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721169323;
	bh=xtaGRyqSDTBiOpW/euEYFI3fRM1hHQsDLYkvc5LuFmU=;
	h=To:Subject:From:Date:From;
	b=EesERU9aAKVp0cXylCgj38Fw2+YIYDNKITCeqtdTgu3XSy7x3QmTVVU+s5rBSTkkN
	 mJ0Z2jYDwr4pIdMDALSILFtoaJICrgCzF3Sct5N3Xyh29X/VbXg9qoZ2ytHO3jjn78
	 yQ3tolTg6065KCUmBDSdhXB8gymDEtXFySx16/DVzsCbu345cuilihRaVDl0JCgaMa
	 8zM4OiWwgbmP/uymqB0+ofHob+7ygFrnjjoX8TOdXZHrvMNlmKdluMcleptodLJVXW
	 yA6jpw43sauqg3JdEjTxJZBf37GBtRG0I31+PE8U89yX/6HDN2GitaxeZuB4/D4tEb
	 ryxf583ACu3UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D51C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172116932284.10262.12225122383990055804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5844123a3ba0de809e66ee18a45bfee141b853612f881108c623884ae09f91a0
Date: Tue, 16 Jul 2024 22:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721169322
