Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8122D6E40
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765462974; cv=none; b=gHNKnXiI2m3oDe14vU0q9adCnSk4wRsqT6A5bNkiGqaMVzewZXhqk/FhoeKKfSXU6nTiBY0XZpaSisoZljP/BgWwKWUpuIiJHl37GVQjAo//OP+uBuS/4hlFoEk0eS01dOLdlPQxogyMVM1Yj0PGUc1SH6xgEpEmI0mYUf7d+dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765462974; c=relaxed/simple;
	bh=7NxjysOxt4gi6VfzuObZxk2bMGC1GqKgEokUjN0FoOo=;
	h=To:Subject:From:Message-Id:Date; b=KcJpOdMGzbLC3io2DopSu1jLI25jp3L7hvK3/kBmwr45AKi28NS7JTGf4MSH+zfNKJm4ec2OYsJua4NgDwbZxI3K3ngul8XqGa6PT8gC20zcL2Grn+LTrPhEm5F39dpz1oqGnzpjeZh5R0/8ThlsyxzxqVRz/X3nYc1KoS602rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSmPm94k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSmPm94k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B632DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765462973;
	bh=7NxjysOxt4gi6VfzuObZxk2bMGC1GqKgEokUjN0FoOo=;
	h=To:Subject:From:Date:From;
	b=mSmPm94kBX9c+BsmGd1VKOqbzHU8zKk7zD9HZPrXx8yQbd4HP58EKpHqSl7vnth6z
	 g28os0cGMunnbDZASieN1FKuvlYYKH37USDByofm2361d6m/qekqWWas7WCIaz0Oh7
	 yPJ3E+cMuyFKGDcASUKLCGnFgvx0ZPLt9OuY2gwuGpZ8hilPeYllzekAvqSRDVIRzi
	 rZadfuZLAE8BvLYbDTvHdxhNSFJSk8Y9yIdbS8880s8tE/p04I0g8OY0J+Luy88R9A
	 STAgrTzCzct/uFSo/Roc1Dc1PpWgQVaZxNBOWNJvc+9KD2LH8JMl2PAUNRAal/8mZ2
	 isBTB5ZPy0QbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43F0D41C3E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546297363.10327.9684983113581452226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3356a5a69f7fb2aa1df1dbc58f4e35d6b6861d0eba88fb97131024940fb85302
Date: Thu, 11 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765462973
