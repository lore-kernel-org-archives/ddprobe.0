Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A82F86340
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760197194; cv=none; b=jyid+pCypNhwlT5BTg98U/vm3qXkYtJaDSsJkR4a+3zKrC36jFit4EZulgjQQIPuulGvGfUvu6OkzGGdeztG1nn/ecnnJdyq/xa1fuLho+Lm6zDqZfDKun81e9b1G+4Hpure0EI0o9z9/Jb2SuduA7ScVZkbAWrxJdWAr6aytvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760197194; c=relaxed/simple;
	bh=3ifrTyeHH0BT7MpKW/QgbHiNw/DWYsxRumCSIv6bEF8=;
	h=To:Subject:From:Message-Id:Date; b=I3xFJadFYzi4xRGRlnOERzvPWfCP9UhdF7DPARlkvjHz86DZaHNz6GYRAZTLyAwiU4vPdBqW5Jvfj9d1daSqqDi1pEPsimFfDatfucViUnquszUreKjd8wsQipJtHk3YXt3d/u2RKJS/3fhgw62qOheIpaOUgoH4TX6++BiHfOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeJ+YMAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeJ+YMAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E29C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760197193;
	bh=3ifrTyeHH0BT7MpKW/QgbHiNw/DWYsxRumCSIv6bEF8=;
	h=To:Subject:From:Date:From;
	b=eeJ+YMAaiWraQT4C+GC09tL70dRg5u8712L2yfsRlgEus9AzCQL3SxeKQe3ooHf9X
	 09dH7Yq3Hw3vFLG8a+UYybwXGIV/TSo0x4tPh8IjbnP1JrmE8sULv9DTl0X34TqXYa
	 bKXzdS8v9zxp6qTeX4SpU4kP72pnN28b+W7vf2tXGBOdRcVizGLq0JVpyk1Mn2J85E
	 rRYkP/J6CrpT3xkvtmWv4+iBjApssDpkhnwWiw1UjB1fLS+iddZpaBrI5eU17N5OBK
	 9zD9yHuWQZIe3FFxewhjuly7jCBpW6g9jqGd6qdGP5Vp+fav5F5cRpoM6HYJN3yfhe
	 pAHx/Pjmge8Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92857CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019719358.28211.15679490689708823260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88a4d0321c1f333c31b5b79442d48c3564beaa9791a40b6947749554ccf6c6c
Date: Sat, 11 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760197193
