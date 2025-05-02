Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301C3156C63
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746197995; cv=none; b=ZLj+f9lCeb2cw8yLJ3ER0XnqWUz6OAvcQIUpf97Ccw69kRtbLTx4932hmHw5tE8Vc/kcVtGyvL4ql6AR+8+ZA8worQWKNLzlxd2ozyA7elx7upk65k347hJU1LgxU3cDIlvPQ47c4qBEllLIuCfwiisGz6+Cc80OWj5Omoh6mhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746197995; c=relaxed/simple;
	bh=0D7Rr5jEvQQGPIhXvamPd8Q3AhaTYUa8EKyrUaaHZ2o=;
	h=To:Subject:From:Message-Id:Date; b=YJ+/TL5LVvM0/tYk1FKOu/8s06FE2QpsQKSEBIT4SDNp/iq6tTLUlWJhNgH1ixIgv4s1jajYoPCrGS0ygEyxgcYZ6r73k6pZqQa/H4/JohfLcCcyK3VZWkxO8t/LW0N2zZq9qbwzSVwDCAYsGnvp1gODCjnlYNWnAl3I0LV2lbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZbbrGdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZbbrGdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F37AC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746197993;
	bh=0D7Rr5jEvQQGPIhXvamPd8Q3AhaTYUa8EKyrUaaHZ2o=;
	h=To:Subject:From:Date:From;
	b=EZbbrGdJESnliN/5uLKCtUIj4P8dDXhNkmbQDxFgOY+7QPrmrB5r8lI5pqua1Nw0W
	 D1PmEhly1nsLuXUTZiDG3+BSiE5jbuxpzioVQkuCLWp1e1P0yySqBp3VVG/0hjyzAC
	 wmEzATyztOmbt2fHStDm46Vg+68dWDnxEYJrSz89Y0akHrD/cojY7oXnxi9qu8nlqJ
	 4rI5CJfu2odYduxSmEA7o+sLtBFDidko/2aPYIzNcEr5oTrfArNjt7QNYrYXFTBEF4
	 auWuW55lvUdg/OGjBbkNgo2ZzX/5v242TxqhlCw2+7/FF4jt7dB3nCfg5aPngfr4BH
	 Hj2InNASQeFRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A0C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619799357.27225.6666167885526149565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e6fc4fbd7505d3449d0049522d096e0d98a0ac4c894a983bc89f3d16f7c919
Date: Fri, 02 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746197993
