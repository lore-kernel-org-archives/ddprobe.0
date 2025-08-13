Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D9E1C84DC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755107394; cv=none; b=t0AQcoA9bJZaQqKTYVmgDjfM2pCF3n5WBMnWsMKOfDJoEqsRgPNJwCzbqcyYcGcikAs9UjdelJuKxtrnucris1C1ZeTVC6J+e2bCgQIFVECL+Lyk2Oq0Emh9jlKvnRHOzphwo9MqOLselASwGvgbugpreHzNehK8tGk1YVYrs4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755107394; c=relaxed/simple;
	bh=Yr4ql1jakq83KNlgfyW0on9TSag0K+LSnyeN397Zaw8=;
	h=To:Subject:From:Message-Id:Date; b=LTkwGWSeQXcx4uwGpBpohYsWosSU5r3nzTRaagN1l38UzdeQyAKakE0YFbp+D1n6uLA30sqqVx+KZ18QRDuEJ5ajYKdgEVJGJhiwpPpN/COx4fQLgLiNKJvzMrRb9/7jmkEv4fwcBRnvZNI3cZV/y4XH8iq4dQWv72YHtTrXjWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CY1sit5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CY1sit5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DCEC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755107393;
	bh=Yr4ql1jakq83KNlgfyW0on9TSag0K+LSnyeN397Zaw8=;
	h=To:Subject:From:Date:From;
	b=CY1sit5Tdu7a0or//dUh08U5PLQNDjemeE6zfmQLDWlVXuF1q8KCr0vzEYg7S8M6c
	 8vzW8AbKbmewHYEnJYxX9iJv3oNwkRDjiXQ7E5baE5VAHCWzDkOzUs1WcFUvldka2D
	 CCBWouDwDcIrwUz7XKrgBZ9PDAH52PB68Nm4EOXarOvv5m+QHjOgvrHdyDC862eE2I
	 t9CzBdnJmma/TKg42Xc/apozBKiZfhzf0vAOO0wtA8bjsnVzB7E8DvA0BxikoIyVR+
	 35Mkng07mjKVGDGDfEL7Rgnl2lnoCWlwE39LPySO89EnyWoTmd28i4uXKtU2n7AIQz
	 gEG50QKMwUQ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D75CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510739357.31753.13517617943086966422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb93412390b40ee466f120a699a0b08174c2ed71e1a30c0be3e5b296b95228b8
Date: Wed, 13 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755107393
