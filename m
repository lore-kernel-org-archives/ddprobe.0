Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4139B1A08AF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755213594; cv=none; b=E8DDuId/u2XS+0gG4b0ZEf3ED1/1cW83exUPHSFbJF8DUFc5TJ3GPGNABhYdDNG4YyJYoIgxbTsyO5oiumc3+1PyqDPAmM+MDBqaHqWoy8bb3OhTrbK1FWo6sbV9MKfYoovQ4FXcK4hBr8RtA91pt6N03MwhBi3t+KwlOQvA6Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755213594; c=relaxed/simple;
	bh=xH2lHS2I8sa9YSGTr3YdaRMs4Kaz4LxJ2P/+b4pIdas=;
	h=To:Subject:From:Message-Id:Date; b=Ne9jPIhRHfn5RdqHc4++uHDbaFAbHgAqDHVSTmKjmIB5HQbZ/1FIfZmzFINqkJ0K9tLzpcIm+zVv0unsUSTAAM8kKVe/Oo74i3xKSL/po3uUVCVSq3x7PHCApEWOvoy7mmojDAqLggzw0VyeZh4a7xEN65OCm4vTkF3SQyKKWIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n87M4js8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n87M4js8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2504C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755213593;
	bh=xH2lHS2I8sa9YSGTr3YdaRMs4Kaz4LxJ2P/+b4pIdas=;
	h=To:Subject:From:Date:From;
	b=n87M4js8kmt6KkMgT8Ut/MrNZ1LoplUHA5Zl6iQNP712V2HCz0PT05ccJfjLhCtCZ
	 OPwjXsxDY/sC/KdHSAXpOg78utR96PrDBxT5ROhKDix57gV0if4ro1hMk6W04pR5nn
	 7DFIbveMTy96iLlm/02HrtaGV+7B2Qha2+wBs4s2kDaAL8p/sMWEpmmYpETnRUtovy
	 cxLJAJAcD8MlcM/5ODQAcL/oVMD1lHiWbLl3zZHDtoFNSJ1hpA/AXQ/9tUHn4A0ar9
	 V6n2Ydt9rqnYAFPKNFeySrffu7q71Y0YbynbfqHvADwS4eC4kda/lAaiHGTEv9Ptpi
	 5WY6fSAI5zeSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90304CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521359358.25467.7400750762703487480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8eff70a35ffc33770d3479d2ad9e49cba32c68df6d095d592b976616d951727
Date: Thu, 14 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755213593
