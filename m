Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C18E176FB0
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738910155; cv=none; b=i4d7psS5ASfuSAEsIdO/L/fH+ppvlWWbAswjOQhIdizIOys+wj+Xgys6nGaHNM0ywHFxQdxIiMbTZA3HF/5IkVR70GfhdhlLie41cP6+aRJVKW9cqgjm7duaRlFHTpFuGEx6ak7tE582eLC5ooDW2zXTSI3TVq1zIUzkSdJAzwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738910155; c=relaxed/simple;
	bh=h0t8HnFzWl0JhF9dMygWPg/UjZfKo7U+/ySxbRu3rK0=;
	h=To:Subject:From:Message-Id:Date; b=HNa1oDlxqX8GYNqq7wDQ99LhBcmG2Nqb8JnTaG0iCFrn8Eh8wJl4cgCo87TMg6eClFDNM2BfgE8FTHWmO7avHpp6E3O1o44Gm1tJf5P60ogEr9CcVh1o7asypkhLVboolckaT/YAhJpg1BGiP3yAfv9srBA00mFit6ZVjrv1710=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIn9ZZbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIn9ZZbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69C0C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738910153;
	bh=h0t8HnFzWl0JhF9dMygWPg/UjZfKo7U+/ySxbRu3rK0=;
	h=To:Subject:From:Date:From;
	b=EIn9ZZbnmH0XYx79anniKvhrNYv0jNt3Lph0QrRF2yic5KHX0If/bjskOfNRJs3yg
	 HuNf/z1LWquzFibE4H9aYwCO61K3hpRr4rv9oeD9k2Gr0//U8aDA6Ycv5KjvpaGRj0
	 Pd1CtP1Vczs20R913ngCpLRYzkUHPx98SR30xnmbRI0sRSuNWE2hXJEY1pCrqK1z+C
	 mD9vNpwyVx9aUASGgZiRTKWVQ82h6+N4PvUmT4Sr5CYoqc0yRKntDHBX2yiioXm3JZ
	 YqvKjykn1tHnfEx317YXmjFQtRlzqJk3XjKkA3Vf40q7eLeIGocExH4guYuys98MIX
	 9Dhpgl78Spcgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B305FC02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173891015371.16879.18335739712674239223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c1e80e2c177c795a48be20f6308546f65d50360c198dde4c0965874975356f
Date: Fri, 07 Feb 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738910153
