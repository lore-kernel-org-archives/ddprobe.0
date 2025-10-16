Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FC32DC76C
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760645994; cv=none; b=NdpVXgOZKTdhDVMwd8G2a4J1ub/FgVtvva29QtBub0aJfbXMGx5hVe62TXk0azYY6TG3E+KWz13Zgz57dt+edGgJDOdwM0vFKfNo2xrf62mZJlX74Ty0XKzqsYWZyd2jyq296j+CgGLT+l9aKVfI4zQoFRikbAkCX8aYrXw6ucc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760645994; c=relaxed/simple;
	bh=EECvuW6XMg3DA/w5zU0ALPqaXkfkLlUWLKR8PrP5dWg=;
	h=To:Subject:From:Message-Id:Date; b=mMHwhb3jxr5z6GXCfdaTnxc7jh71to+u52R4uH9yOnWw+xYfbNsedivm1KZRoDBHYDlT7/CEakj6cu8vVTnIx6G48aCj0OzH6MQlrsLAU4Jr6vudU3+NaRFP5zHcGBOVjFcz7TI7Zwpr5KFpxW54Icx8jKJff72THnXNG6DhvEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQWjcilQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQWjcilQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4726C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760645993;
	bh=EECvuW6XMg3DA/w5zU0ALPqaXkfkLlUWLKR8PrP5dWg=;
	h=To:Subject:From:Date:From;
	b=ZQWjcilQJzaVpLc8BpweD9CNX+zuzMKJ6jpbJf6PYZO/JR1HOx7ZJ3/aqnomV2J2j
	 cXPaakGQsZCFGUIs4W332OPQyW4gpzF3YQvetY60FDSyOtSnm7YzzkC484vj6Az/Z+
	 4OtGnXJT//u09nNSAQa/wJbglnUGgkOAd2PPBSt33BctpbB9JKOB2B6dxLt0C0yqLm
	 un8/3+06XH9RJvWWHRDd1+9wkivYLdQf3+n5nnRFO2qLfbxELsuB7yS/0CwTrABBgJ
	 6QskD7SnwTMqTgqU5RAM/RenOC/LsnB2RTOxxyEXEMwSY09UnpiB6LzTgGMjX1f8lG
	 3BCgWNExSeYiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D7FCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064599358.26485.17234838390930434881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ab3bea54997ce938fdc5635b60198bb13a9f1d26a301ca86da87ab231f8e50
Date: Thu, 16 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760645993
