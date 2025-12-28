Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EAF23D7E6
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766951634; cv=none; b=VCMon22E686Cfd3VKfpP+2oKhKiogQTaNAhv3/dEst/3th1kvNzbfoTxJdoILc8UZdiNT6sfCMJBvNLom8RnrL9mEdEalikN5aQK6ZkEI4kzRaudUIeDfGKyLBE6PcDLQIEE/iNANkZW6GyoCN5Ao0AI7lcKVLP6T7iILgel0Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766951634; c=relaxed/simple;
	bh=btknZybyOnOE29bSn8ddbuqXMC0TomIkaIM8QhcV6XE=;
	h=To:Subject:From:Message-Id:Date; b=CDveoWuY7b3o+7a51IC35JFd3WCJ1ypNEwEGdmvoj/EYiQCQcwKGy4Jv/lDuxcBI6f/cp/LOkoLfrqezOdCqgFaazRU/8SUTAK/1e+aAe+UKnjyHQY3mlFPQOmKrTLhBQHWIl1FhTw9LULLCI4yWX0uK/yC5k6hc0tl8eP4beec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Okl7zcTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Okl7zcTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7489C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766951633;
	bh=btknZybyOnOE29bSn8ddbuqXMC0TomIkaIM8QhcV6XE=;
	h=To:Subject:From:Date:From;
	b=Okl7zcTtiFOj7ynUy2AV8rrsR+spkyIktWQZ8MbN1FPGQ84E3qvZ25as4XPUNiDdA
	 GsZrcUiVR2Dj+5vuTXWLoNNBuzkdL/VH0rgrxxaJU86sa/cx011jmsuisJHHx8qHQh
	 SJJ/ao9Ma3a2bSO4pSeCBgSypV9dzuM2H750Ad5t8tyoIBbYnWDBuSZ4CjffR0DXda
	 NoIuWHq6Rv/Nga7bp4WU+E9Wj4trelHZYqE5IXox3DyOH/bQtSYjiYUKiTibAGc+tz
	 bxXmKVXRICfiflgaRyIY7cjSB5OBV5K6w52JJoBYueGLiZRTgkTm0Mm13sDDcQs1iq
	 BEVOEy/0tkmjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC98E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695163365.17436.1922205532550330296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec8182dedfb6d31d6186255e1dbcd0f5ac3bb2b8c542f85c51922f61b6aca28
Date: Sun, 28 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766951633
