Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8E61D131D
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724981154; cv=none; b=EYTfiNFZzG0/rLOmBU5xdq41ThvH0X18aeE7n4nmkEdlczFPebu9pMaVFE9QYj85+00qwRrwAhqD/FNBF2A4w9ZWfAdOpatDcLEBJ5/kWiW1WNyAUW8wZkl/RjsWQADONm/FTIB9bX9iPF7euyDWzvAAD3HB+piG1xiOPUgZ+q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724981154; c=relaxed/simple;
	bh=jsGY/XLW7pWDXodn9j5UMGcXjFv3fopRKHB4rjRtgq0=;
	h=To:Subject:From:Message-Id:Date; b=GQYvbTcDh98+qtRX48Zr/+pbf7I65qjCMMDKiTlEHrVGdqO89gS2HQy7JVX5KsNDekwPykw8yhI9TbTkA3Rg7WhHzJ/KfAT7CnOtQ73EU3NZJsxDsK/NhYMicnTB6ZriEElaGKlV7+yuHHCU9SufAcVd2xEh5Sy5TDFxbPEmTdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erd6YWxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erd6YWxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B324AC4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724981153;
	bh=jsGY/XLW7pWDXodn9j5UMGcXjFv3fopRKHB4rjRtgq0=;
	h=To:Subject:From:Date:From;
	b=erd6YWxEFCQdPTCjGJXvGwlc7pcrNYkAozw9GUCdsJhMWk6q5dsZaY/Z0D034kaDW
	 qwlSlr6pbOMrwHg4d9INq0CMhCUA7ZCJ+sUsESLoGB7BTqYXtafKw36PFSV5guY4uK
	 Fm5DWyXCkbPaThdEhDCqoDHN0sJ/MeNRfW1r/wSiwJEj2yUeIq7mzgv+GRHhu9Sazo
	 KzoskB7CLVF3H8ncxJoaUpSZj+ZUVviIhwn1XAR2lyFrvOKP48Ckm2BNP8vU1Z94ET
	 nESwrcGzwdfvwpozBBiRiv4kh1fAN1PRGRoa9COwqO0k8pMkYId2KyYMbLFCOnoRW5
	 lkxbh7nNyZL7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A464CA0ECC
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172498115360.31062.6559372375670412335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dbb6d835bf23e37f79d2945b0ed20bba43d86fb607951ed818a09c33883eeda
Date: Fri, 30 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724981153
