Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AEC212556
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762634994; cv=none; b=s7plrZmCinpn6maI6OlGajKyIll2SZIYdJaQ4ZAGLq9oAIOwgDy80B2wNlmux9qDSTck8oqN9s5+Zj5H5S1ACbx9oEr1InvcVT6L8aKIC+SJ/P1i/0RcaTjZ8gOfBXm9CN9QqAYyMK55wz4YM+GFnD3T+fVwUVO8MfiGaqzOi9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762634994; c=relaxed/simple;
	bh=mdHcx4a1lZeyS130XAeaLRVaiDduiDIKO8Pjuhn2E1I=;
	h=To:Subject:From:Message-Id:Date; b=sYHuPw/8k24GPeaMTLoQR80TPCylo1y2KWljx0QXn7tTY8uA7YnHUhPE5Mb73q25wzsU2UC+LV+ExzgphCqWMd4R940faGZM080XZBbwpppHzbTsUIcy1Qf3IDwHXy29jAy7li1pQ3GYnObKHLjkmjBcdnZc8xBXjBdsr1OBpKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+AiVhu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+AiVhu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1EBC116D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762634993;
	bh=mdHcx4a1lZeyS130XAeaLRVaiDduiDIKO8Pjuhn2E1I=;
	h=To:Subject:From:Date:From;
	b=V+AiVhu1da3vmNqhe/kkoziC5Wb4gnJn4fmYRYemRIgvp8CbtuSNMKyNA5DSTz6pz
	 I4YmN/gmkUYXtvJRDkZuE42Suvz+1UCXwa8ksh2kqytthnlr2vjcqBwUgSO2LsOcTS
	 Y5mPTHYjkbvUKX6kJ2+FW2MsF/42EA95ZAtdJ7VfSsbVxIZ4KUC1lULWc/5wVMpG4V
	 OMD+FcGJJhv7sxtTNDWxEcUXX3fvB4HfgKR1pCdnaVLJi9h+JHbEx4TYrgGCeACcuw
	 EiBq0EbWiORLAfhTX+PF+JcDtGDQ9/iONvYvSQHyhUah7pX7D53uDXbfdHA8Joy6Vd
	 umHAnYXeIrQPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA0CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263499358.25308.13143916095014049515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38202ec012dda835a574017020e0bb73f342d70b0472790a25e6f4bab3b28d15
Date: Sat, 08 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762634993
