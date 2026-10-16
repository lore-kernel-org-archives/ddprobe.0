Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4522334C130
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792164034; cv=none; b=jEZVwLw6Sr/93u/aBiOIADtBVWEiJmvebvD/W6QdcN9TK5yFY0ph23kfFronYnvyjIHxQyqjDo1D0XhKtfXXmCd76ldFwREPEuQuIFIzBGeE/07EXtZn+hsGxJom4dmlZJZqhmauqnTp8HpUFp1L6awnuepp7ldT2AFUOyPnXwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792164034; c=relaxed/simple;
	bh=TqHoG3t1udYBDdNRB+aLsn/NnV8MIJq8vz0F16p0xDI=;
	h=To:Subject:From:Message-Id:Date; b=rLjLTx7Cpv/M+K2YqunijGvbagJaA3A2Dhsaqk6SN9xKAE2l2mFuyAVr+Pk1bVaOPXNKErIrwl07T8leCgRbOK91M5kwfzXmcrieZ3/J8nwb08fPhz5JJFLRU0UJuXd6BM9Wb/Z8ihZWxxV0cGhQKMbvNreStajO5r3zYdhRAq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYAJ2HaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYAJ2HaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62E5C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792164033;
	bh=TqHoG3t1udYBDdNRB+aLsn/NnV8MIJq8vz0F16p0xDI=;
	h=To:Subject:From:Date:From;
	b=eYAJ2HaGAPYRTypu5DMXxQCo0L2romA1LYtULX6SxrKhCvFGGdevQ94z2lwODROQC
	 2y8rd77OhdeozuuSh1Yhabp1pXkjxkA75e/HkjZq8ag1cxe4rxU1lG9dpW1TeOALbw
	 lE8gsg4T0cRu8Y1+ZZ+MxT4zWB9rhIAzmfCCLvU0ONC6kFZCMTKxFP7fTbv0QpUwvP
	 2RgBmOfwYe0s2EnsipuXOvBiP7Isoi0Og7HJRRPMr6F2JcnkCh/oo0W9GfASNc4AVk
	 m27rLlLFMo+zFgiysdKHxoTYvj2LfNUstdA2ThclZkV5GwgLJvYQ1ER4JmMht15OQ4
	 VqFVPjRg4G5Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F83CCA46C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216403371.18061.16943956122529559135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6217604694366e9c40fd0a624142cbf8a81be06e02e3c3aeaba0e7635b607c6a
Date: Fri, 16 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792164033
