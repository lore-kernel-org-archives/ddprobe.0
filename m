Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F38F2A1D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753586395; cv=none; b=UWEsAChE4u9Su7wU5YWHZUNZRevWMInF9nBEhcP+u0N9PRF+KqtXS8kGDzY1i+VRwZamvBetOPuL2viwml4NBTfSC2oi7VhApGWk4/zVzpIRGzHfnByYn8aliZv4rHFhjS5DdobuSt7yGlY/e/ELwOH3k1x5sf3EHh6pqsHgd8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753586395; c=relaxed/simple;
	bh=E9QrFtvMGKnGGYrX/5Zhwu9Syw7VMEA5zFIWuObmCbI=;
	h=To:Subject:From:Message-Id:Date; b=Li8SMyMdN+5ayhcPl+QG9tip/ZLRJwz0i1YkUGAknEgRTNsoUfNYC8npUzswBbIWdPIi1CCiqhG7aebLH3PVoOMG8QIOtx3Wscw96qYS8bhe6QNABgbRIiu1cbPWVKlJTji7zi8szV59G8UZi0UJXalA0kvwM7ljgP98izspVdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmbksdT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmbksdT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E4C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753586393;
	bh=E9QrFtvMGKnGGYrX/5Zhwu9Syw7VMEA5zFIWuObmCbI=;
	h=To:Subject:From:Date:From;
	b=QmbksdT00Tab0CongVdy6k0Wjcl2dhhxhvDz8nhTSNozIeBeMmzr7wlhp0N/3V75w
	 Sgs/t9xJnUvLHFUIhNf6/Xwn6GvnNsYOPuvGpa7ZLKWu0oRx/Xf/QesZLbmn1S5QJF
	 TN4Vgr0rmynab2I5tvnN+hr0Ujqb3Xa5niIV4chRTeldLiE8pxDdAuB7FdcJmp6I+p
	 eIOIZh2IZza/Vl1hX0t7G2qQN66sq2jGdnYjdAA4y44/dUZ+2s6rbyOdZNCQKSz+IH
	 vOELB8vZuo0hUd/q/uC79Z99r5XgLhmocAlgSVVUjUkOLV/pEHf6MTIP6Dr+RM0k9I
	 HWGP4Sm/gdgkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F8EC83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358639357.25784.8484175996537665912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36512d332df35d9cfef5b80055216e9ecb3c89368d5b25120389f8c462757e14
Date: Sun, 27 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753586393
