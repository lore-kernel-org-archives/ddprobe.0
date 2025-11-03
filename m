Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D34285C8D
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762138794; cv=none; b=S/+gqGQrdMV+yTLWfzLZ9OijzqpHtZsQIY4v9v3wyo2hfjS8/h3BARsWmUFRveqFFyUx1dCHFYMZpJpCZ3TPNlEW3MrUek3itZmtCFFOvOPECfwfGl86UNFz+q9bdC10yiDtHQrNrCNJfGlS8cBM/hbKsDWp3mTQLFV5jeF2fqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762138794; c=relaxed/simple;
	bh=KaTi/DFDCPiZA3xRNCN30UXgqIRfs6SPWEYmk3DXy9U=;
	h=To:Subject:From:Message-Id:Date; b=olbAqZd/fDD2QQkF1j3Y3EegZVqFysELoeKzeqV7RYEJKkfEEKhNfx2R3Y+ZSbS9CfA6nlNtysMThb7CzHv2gOQyay0UwtsSLOL3W6fhFLOWKZUe75ciTyHJn4vmsIfqVCuHi9WB5hq7lruq6XbkJLLoydzJM2IVoJSBXqH4FY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IemW9O+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IemW9O+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BF8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762138793;
	bh=KaTi/DFDCPiZA3xRNCN30UXgqIRfs6SPWEYmk3DXy9U=;
	h=To:Subject:From:Date:From;
	b=IemW9O+ymG6NqHfLifCxLCZnMoF+Hl3Xpr7pkclGMtSdI01EgpBIBYguqrGd9XuVR
	 uabiXFiguANcGtMG4BQKXrp5KM/LPT1pUAZgx5VIqp0VIe95qiRp+pjyoEb2jkKNIg
	 2C8pcP4r5grR6eTnkh8KEutkIkUmSvpJF/LxKPSA2pc6grwbhu985ewAIdDYFGXqEY
	 ZWUWEttQaiQfxT3FKr+1HDjvTdoU53QZhPTIx0uWiS1L4McMUpR704zDkvlQ+yUkf1
	 2o8wlAD+6y+DMeJ708Yr95M4x/WalPS3M0E/reevq59ilvRe6oWiXSBr0HF/RX1BBe
	 l5Ff2TcHU/EgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B5CCFA00
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213879358.29723.8077666168230010230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93dfb184a3198bb4da9cb5c69acf74b817df6292ddec2260dcb552bdbecfb9b5
Date: Mon, 03 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762138793
