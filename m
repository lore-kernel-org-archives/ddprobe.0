Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993BD1422B6
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719047543; cv=none; b=fsYVMuHrDSeSLMdngqHJylzY6oKijAQQxGWR7N0baU2AXbjO7SegNz/6/ZJk3Osv/cLOWi8Gvaqqlk38gyO+/TY+jvtPUfuW0wPWD2IN4MWAHpPiWz8g0FE/ia1imZhahOZircMk8+i5etg8lEuPWx/ys/xu73Ar+TfFe2IPhDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719047543; c=relaxed/simple;
	bh=wtALx4tpG1ouRY/QGKsHgxuGRhoY3fV+CF7tcASrdK0=;
	h=To:Subject:From:Message-Id:Date; b=QR51bGiqqumEYYU5ITWNWwwEVGxfoZ0BV2GiLThx+g38g0Lr8FpJqnp3N0ldoHZJXGEITzyrWmsIljuCF7nhYrANtLTblW7KeN/TkFzkWOfIPcDXnGywT+cN/f5T6lNkUITD1kgEqCMB4xZWZ0yLo2a86ZKJ/d+nMPnHe3IPWWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfCaer/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfCaer/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 096A0C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719047543;
	bh=wtALx4tpG1ouRY/QGKsHgxuGRhoY3fV+CF7tcASrdK0=;
	h=To:Subject:From:Date:From;
	b=MfCaer/1dAMH2EnfXd/Ln1gMSMmGBzKjTj9qkNq1VailplfUQxNMLVnjSD6LHHuiY
	 A6SToWclqVUj9Aqis6G5/V4t1jdDPcX2D7AwQoXDeiZnTbR97ZswvNSzW6rePpU1ao
	 j6ToOuIVAhm8DBIKVgtLaKv2Kho6tG5NK7xYhh8Gqf3i3iBJY4v04nmMr9RQC1tvvM
	 ilxPFuet/aUfQI9YVN/Iwony8ZZZaJoqGWJg0IOY9FVdPtnQ+w0xtW7U4+QAPVcRMn
	 4JgjnYEPd7AV8h+p4P+MTneM2pfxCxoklFeP6v3jhZMtGIt7W1F62ilogre/1qg9ug
	 Qgh5vXM15uI8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1BB5C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904754288.11115.4235936030227811259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9085a08a8b2fcf18f6ad8a03be65065b1434e02d5070acf6e1daf311efec848
Date: Sat, 22 Jun 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719047542
