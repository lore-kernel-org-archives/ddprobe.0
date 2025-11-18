Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986E82116E0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763429514; cv=none; b=haqyn8lAqrXYBM7XZWsu+ZoouXl2iLjPq+lvhI/O/4FHcs2A7ckULRQpO9xazfKYM4z/i8fz5ArnJeB/SRemeQg6kDSCU79aF+P6HjEg7n8/BKbYd7Z2CxE1WtdVS9he7K+5J7x/hmLk6hu10plsOVNzrfNPtDuTzsTnPRCC9+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763429514; c=relaxed/simple;
	bh=XHIIhehKzLRtwjeZXotBsm0EnKigyebXO/yGQT7wZ8s=;
	h=To:Subject:From:Message-Id:Date; b=lktMwjXrPebxh74fQi8kwAhdkTw+puZPkGEy3lFz72miIREim4Lfm2196a9flyL1cX0J5jJO2rbnDN99x04A5KNmxwBHwdPyWkH5ddrfZGsoP6IdC0+3AQV942KcIDhlU/ui19LoCAgGaCk05a5Yg7YrJrLH+zddLmgwOcmF00c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F563kVNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F563kVNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41C2C19424
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763429513;
	bh=XHIIhehKzLRtwjeZXotBsm0EnKigyebXO/yGQT7wZ8s=;
	h=To:Subject:From:Date:From;
	b=F563kVNiNVmQ1r3ABVIh6PbV+MBCjVWM09/37A1EyYX+83jgNJmmuQbXlrBUDwFac
	 9QPyseHLOdA5fId/jtn1Lr30MWYPQ0rik1iG2pa4Z++qYQ5rMtLFTJrOt6YsIoJhQO
	 uRIBwi+DJVrDmKq1cY8VUQRzg6z1HuJVOBY8RYDdQRhtMfSHF/7y8vQZHYjGsBVLSI
	 Tm1RHNbRr0SO9U0Cm4G3mY1oNYS77CHDVC81Jm+CwfsauqIfQJ0ddOCbhIDH5eFb8M
	 uSLDfW2heVgRy91ZxIhZ6mV4yxT8nnDPQP2TEVI8gENQ+ia/39+kbVNntv6AZZfBm8
	 WLLxmUhLS9+tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9092ECE8D6B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342951358.9381.233731230280274111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce90f5fb891c881eb286e8e5085e576a949e3f4cd61b553673ae08f46f1a5665
Date: Tue, 18 Nov 2025 01:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763429513
