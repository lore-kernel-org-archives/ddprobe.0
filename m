Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6CE3EBF3C
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771820694; cv=none; b=n6D630KEAHxYlI07hwoop02NR3LJNXbj0Sv8wcKAaYdkyieKD8RNeoh95QxqUcDPlM333aAPNB1p0lj73laTTLvErBSnFiZbxLJqQxaDoNE8D1pM2WyC/07OkjNuet8w4Pol8Dx65W1aMTW3/fz6yKdk/FSGDELTBMlwEis9rLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771820694; c=relaxed/simple;
	bh=XFyfC+1rCKfoh9yDktJybA7bAINxOAkfnXVoiFeBbOo=;
	h=To:Subject:From:Message-Id:Date; b=V89yvTOadBvfKdxrNUM/pFY9u/RCDZbb6SkBdzdt6l4NR3d/qEZbbDBg90M+a0X1eKEzcTZOXoMw79LVdtD3EVTtNeWb4UEHySHmLtjtwed6lo6yz9vBUiCnCgo3zGLo3L4LxBbelTnvnYH4ki0XKIsvPjVgh/NrWz4m373oiC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rflnS2bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rflnS2bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B1CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771820693;
	bh=XFyfC+1rCKfoh9yDktJybA7bAINxOAkfnXVoiFeBbOo=;
	h=To:Subject:From:Date:From;
	b=rflnS2bivG5MUDB7DXwR103kpQaw8Z1tbdVphcxxjMvEnfyd2cs3wIbYoYnshsAmp
	 gWwKVoHbwVHkIjTZEhSrmyuw2beFiuRIgxpN9POiwX21nAWscX/pOkcR1OSEE1X8D7
	 tDCAd0uWaE3Qo5zOGB5FPC5xOAB0UFGAsf9CGGJE8V2ky4Lff5/zNjZqzq3FLRjacL
	 /fBARvJY8q76akKzBhdpMUdpkknBDMgz2fjinYmOfwnfQjeEmQ3O0op4qacYYBQHvB
	 uUaVbzovn1BUOTBqbUixbe2e7GqV1ZLcuPIywf9fMr2Wi6rRgukeBWJOUxc7+kKU0O
	 8E3bn2tXv7P/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5A4EF5862
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182069362.9466.13820054952965529894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ecd1f32abd4ca89b7529cd77ccf7dab2e9ddace7ac14e55cac80ab8450494e2
Date: Mon, 23 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771820693
