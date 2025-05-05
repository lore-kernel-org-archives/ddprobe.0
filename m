Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3F025D539
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746458394; cv=none; b=biRqOs4xgx8poQqSl9hRSnm8Sb2HdfMTwV98Mo9s5oL7rATHGaNDr3GSO4vW5A5/SL2Ow1uWxc973JbGB1KTfgqkwfIqQXxAVz/ErIOBABMlA5Kj2kHVkh7hhZw6R4nLxZabUFxSd3WX1wN5DN0r608USCmFkI1wi53ErXr9to4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746458394; c=relaxed/simple;
	bh=hehmf+Qkc519gTlsFlUz+AgXv5jvtwKQfJSiLiV+7KI=;
	h=To:Subject:From:Message-Id:Date; b=gQ9Om6g+HEmeOt+tmCDNdRi0nV3qSirJjPhOEngkMFoFqTkZVXXWxo7CCmIVMWZrdQdSLqRWqrHb4cyBjgn/RFzUZ0cvwq5QBvPXgvck1e1CU7mL1+ZJy8eI9BzDyYRWw0ONmQBFYl2xZ+o1xeIGI58mF+wJSJyeaBaaf8KegOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okLiG87m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okLiG87m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B94EC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746458393;
	bh=hehmf+Qkc519gTlsFlUz+AgXv5jvtwKQfJSiLiV+7KI=;
	h=To:Subject:From:Date:From;
	b=okLiG87mT+nhqSyAtvSSZiRZuS1KCWYSsoieGqb5GQX3Z06deu4R13iAgHCH9EJya
	 E2+cj8SYn+Dy+0+BdvQI8WSO3/K0Jv3WTdSp+XXlSa0TJLLOxWoM6zJVKlQ2lDfXsL
	 rdzVupi6aUvtiZ9qTvRYiUFziaNvv80iOOoF4iaBMSIqLFp7S1gWwrM2SZFgDUES/t
	 qKac8XNZ5xItCIenqYYx7C6/hUlg2hAgvSSNguMHZfoLJlZ15HP0/41M6uyD6EnOpB
	 JRFr/Ap9ps7Kb9Csbq3XHqQwe2JNDRLmbYYZ0zrJCVKjyVAB1LhHVLaKN/3mb25qD9
	 Rh7kHX1MlRAVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E42CC3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645839357.19905.6433010766453168753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5ef67bdf39dde1eebd8dc05e0e506618e884d8e048fe0a5189b51ae6488a8a
Date: Mon, 05 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746458393
