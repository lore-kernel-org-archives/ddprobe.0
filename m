Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F060273D67
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759430994; cv=none; b=RmLd213eOnGK135ZAmyvcmERFP+PK6eN6s0iwAvuDO13mtj/cart/N7STOzl2eusAy/U8wwn/fVdjLagFPuv+JIvvJR/+39uM1ReQLnfe41isDP6+BqhxB1MTqMg8lAX1Uw25CdT9vBOx9akvKBN5wGvIuCXwUUJQav37d8Hkjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759430994; c=relaxed/simple;
	bh=utFCJS1XFDNQh+Y/GCGscjm5KC/FJPz39ZIn2b0hHzM=;
	h=To:Subject:From:Message-Id:Date; b=IHcuBU4I2sAzTr0yAY4gvnHiHANqOIjm06CYoqmuWYYUCLftQ/E+eCdDkniZnES0nTrEUsKW9FYaqcCsmd9MCtxGo/0lMxXwJwcUwbG3Yvh22dx9IZdsNMhw632uue0MztcYhxiMwcuSKiwP8HyENeKCFBkaSDg+iGYIKnZI4BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXMIGUgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXMIGUgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F029C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759430993;
	bh=utFCJS1XFDNQh+Y/GCGscjm5KC/FJPz39ZIn2b0hHzM=;
	h=To:Subject:From:Date:From;
	b=aXMIGUgJURzzAjRG6wIZKQqOYaRRNjVge2Xc5geMYhY6AiTubpATe+DCHZx3rMNKE
	 neDeuAktGvcvjcK6zGt6z9RUDNso4poMqwexqj5uvLzOtvoM2XIvtwkLJZ1C8HeGUY
	 GQxnSCMQ3a6s23VYsJDBXMROiKS+y5UH7cLJWWDlKct7I2hjy93kcb5hGEn2qXRgpu
	 w7qKb+yWu+YRjaQ/JLBI4O+IV6IPpdDeQ6ksl/UeVhQ96TdI1PDQSDNowscJhX7xAi
	 UrtmDoLp+i4HzE5Ze8HBC2dSu6dHX50x7p7jYR9GW11oIB23Zw8BQCtj7pk0ejwZN7
	 t7qgQXjUuSFxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CDCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943099358.3392.6746498973226905896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde0e0c47f22ae52ddb13e308e39d78415c2f01c1cd56f4fac6f460f49b56bea
Date: Thu, 02 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759430993
