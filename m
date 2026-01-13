Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A31138F94C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768308234; cv=none; b=OYcNHM999NRduQrwzRIBInce3xTA5k6o8qqzUxJYam3W3c4JBa7MA24KUMoil4cmqc6PCzrBMupFvQ0b4ZEaIKXmu5DpU+b0NvEIW9rc+COCbj4JMjLFdhpo7f7D2CSUdJFJTfBwki/4WvjylbCw7Teg/b0PAU+PCF09kQGhKwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768308234; c=relaxed/simple;
	bh=lvoy1YhUpGSnAaDwtS2yL+Nr0Pf3eI2p64TS98IwV0g=;
	h=To:Subject:From:Message-Id:Date; b=PfKiRC1YzVuxdprDxfEZa+EkibqGk2C0GQaeAHFb+SVdGZen9RiYCa96E7pS9/3nRTWPRu0CoKOesxsmoBB+Wac2Fx9eoz8GWIswKyAZMK4EbDlT+UjP1nxgYRStrEOQHtWEP6bKqvKHmzOngcjpocrIrlVVHctVa6DXNcjUg9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7Yhw9PR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7Yhw9PR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A008EC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768308233;
	bh=lvoy1YhUpGSnAaDwtS2yL+Nr0Pf3eI2p64TS98IwV0g=;
	h=To:Subject:From:Date:From;
	b=M7Yhw9PR20t8vdcSYPqL8MjlHQPUXs7hpH+vyUH3Ckewe+9TyftwrOPRkb3vj6lMn
	 OqoIC0kmfTq6i1iIgPA6HJUHa+GCzhpKxKKhIa/mx7f4dWIDkCGYD7p/scdXdTWWv7
	 H5oXbmVptfae/Kcb4jovcpLvEnvO1aCdWGHoINdwfhF5VohriT6Nt5LhOSF9TmgMvL
	 dKcIPzRptqxf+xJw+Gn108zHXsZKBGSnxBVOM603eMqHb3GCOzqpe+Ar+jYlsTYdi4
	 kbs+F7dQbpAsW+lV1YWC5yY1zyuuXHmjVxE65z2KFmJLYpgzxdjrevG15E1xy1hJhU
	 z+LBxEVP34k9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024AD2D0E7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830823358.6613.18440651404542968376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2541660e192990dd1a4e4fa513344a25f52d3d0838dbb9c85896c327cb809f88
Date: Tue, 13 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768308233
