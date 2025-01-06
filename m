Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2027419C566
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736151354; cv=none; b=dvMC5D3489lnb7V606cagCsh3J+LlC8QX9wgYvEx4WJWum+HTR9tYV5O7LytOEjXi6RdfSk487PrIykemjd7y03/1YH7Cc1eIRApRdNBXx8UWD/yzPJjX/tDt+Z+a+pYUiFLNRHJrnxhWVQKPWbsj0mORkS/HG49WWn+v8k0VeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736151354; c=relaxed/simple;
	bh=T3nkr1bRebWr9QKLDE5gBioz597fxkug85yq/gKcJJ0=;
	h=To:Subject:From:Message-Id:Date; b=Uzv8E+v6vvb7MQOTO1NEhLyXgfusuOcytkBzq0AOVM13TEfBA9pvoxxbVnA8WTSU015f2Igyris7lMki2ytpEJv8Xw4wzFBBdekogRXVnbbS4AgpcQRIvjxFMjyjyb6nQEt2Pa9fvCm8PEW5EJjDQk5RuPX39iiwCH6+bBftaXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aahliRnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aahliRnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A892CC4CEDF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736151353;
	bh=T3nkr1bRebWr9QKLDE5gBioz597fxkug85yq/gKcJJ0=;
	h=To:Subject:From:Date:From;
	b=aahliRnOPz6Vk2AnJNJw0tZTHHZIfIuEearcqgZtzCc31PftlI3d8k0yxl7O3XI0e
	 h0Q1c7mgPRWirZvXQ5gGdvhX/zjJmywPLLkBOXJK7SPjtc4/xupzwroYx02zpdam4Y
	 +/Ic01MsT+6nC5GasUzHbFFmXkLyEVHBQ2afpajEvl+ywA/pXo7EJnirbhg4UaPJdk
	 X64q1Gq4uUp8W8SIJTXeFfHJBgmcsaRvJzdmtVpXTbnv7orijPZjhrJVwAUrXyUdGC
	 h+K2X0llzOwkfsl4Hi55riziWtGrbpCUNqgHo8F5A+t2bF598JR2r/AwTiDZzduwYT
	 LyvxZdjda4pjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94925E77199
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615135359.17500.15552583302925975176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3123b63e422f2be3195fd877bf841f89605ad9c25f5b4404ce4fbdcf964ed34
Date: Mon, 06 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736151353
