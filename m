Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1947726F29C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771042494; cv=none; b=pubgci1KaDiAh4nN8YUjXrphEyLum22yeW11c0PvtUCzWfwDqQO6t1duJakEsCWDYtm8SLI9IMvYOqY8JE/yHix921IknmkRh7qJiE3CeMjKj4W54eKo94klC0n04eScRRkO3IY7nbfQepuBCc5f2lSgPwVEFDPZsX4YDlJmqIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771042494; c=relaxed/simple;
	bh=VPD3hVfmrOJO+kcONcHt5gfEF3/4lzCus+TkTSX+t6A=;
	h=To:Subject:From:Message-Id:Date; b=K431hp6veiuBUvIqSTvMmwx8hC5RT5ZNmg5lj1tCTf1Zqmp3sEb5xJU/WSdflA/Jpizk38ANSDWEFsVh8tSV3Q9cYLLx0pM5lKFGyqpCU8dogSAezgyjmAtTVTJUvf1cuCjJfNLZRsl4+18KnnBe1Ji4pk5yk44D6/zUjm4CYF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBvh2jom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBvh2jom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FF5C19422
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771042493;
	bh=VPD3hVfmrOJO+kcONcHt5gfEF3/4lzCus+TkTSX+t6A=;
	h=To:Subject:From:Date:From;
	b=YBvh2jomThpkvNjm8jLtZ5hp0Hul7DNA9JTUDzvO93vsSSFOdnp/K+tcLwkp61eJt
	 Ff8Kq2lZ5lTSp5UFeTFLszrdXddm3BWQxRqZnu6Ml6f6Y0kBRitiO6LHQGaiyTGTb8
	 FtDgaJNMsaNxu6vfroKxHqieNk69O8xWlSGvrd0XWqqN8eLWYclLKbHeFWqVCFCt6u
	 O+6p+uwi4+oLzfsNYU9VQGw3yqcl6kUlkay5Wzoa6vGUU8ZekvRxd+I2pH1e4E1Edu
	 CH5FBDrdyj2Qiknbfpr+KTBdjdyt9Ti8ZcHCv23+J6yW9pOfE6BxVlzIkHzlYH7IPa
	 +pnf6GU+XmNQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA7AEF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104249360.18366.14778395128056586076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f0d5cd2eddcbfc5dc8ec5b7bce0e47827595975d403237983b1879694d5ab3
Date: Sat, 14 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771042493
