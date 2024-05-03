Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF962E827
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714751543; cv=none; b=Gjl0NBRRoXxvAWe3BQK84/Q4JIg7G3VD0eVdai3fvLzzkqIcUbzgonLwaGU5T77bL4UkqhBuoR3w98f7Gx0RcLnZ2TBKgV0TXUCGaiZIy0o1bjov/ZPO2jflOrc+qRnHz1kanMf1INuwEyVyEPm/vIlIZP+OHqtzPFoZ2GdB8lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714751543; c=relaxed/simple;
	bh=dbjXXV1zPdjGi3+GEzLqMN0F7yJ5F8ifmUAKMEUiJW4=;
	h=To:Subject:From:Message-Id:Date; b=YzxcgN18Po1kR8yqWURR121APleKSddwu1U0LFcR8bbx7TkGFtOleXZr2dLwOb6d+axuQnDI9ZlsC5rcH8pvQDjFefyJv+33gYGf8Su6Z2R7q9kI0g+LvkLYBhp6BwyWXUG3iSUYQlwklJ8Ej7WjgzHowdXHArxwWWaV50KRrkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMwrcEud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMwrcEud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50C3C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714751542;
	bh=dbjXXV1zPdjGi3+GEzLqMN0F7yJ5F8ifmUAKMEUiJW4=;
	h=To:Subject:From:Date:From;
	b=FMwrcEudzA5NqnZPp1Gdg5fwytsOlMd6JirJvXVarrrV+39wLxZCGV7+DGxFj73r2
	 1jXVUU705CUtX1OseQAnLD5ZkGorkG/symwGxPKhgyeB0X0uj1cMxE9L88Y8blnAsm
	 hOLD3h9tVNRFe+EottoHNdZ6tDU6T/FY5ySX6MoR9Okj93UgRuwfxccSkurQsxNIwW
	 nA+aJA6T79MzsHFZuwisPOE5d0JBFTewQpMF1T8BBTyrtFg8xg9IPEsbqXcPdLw0gD
	 XR0EmUE3PUdAzz1tGx5+P+idlc4hsrjNCliJenTNKFYzgd90Rs1aSehZVaur6G+eUH
	 /1z4QwHUJy/8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF70EC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171475154277.24843.17431651052388436489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d15312bcb38f02a14bfee02cf12e5599af56731ef538246fc7cc240e529cc0
Date: Fri, 03 May 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714751542
