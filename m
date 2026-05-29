Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1159921FF30
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780060954; cv=none; b=U6q18SfYuS7/aF+KExbnyGTh712eLqDMhZC+X+mSkgZQ3R2U4LMS9VKqo4EmeM5FPuBQHrZbjomigN86WQkuMr84NvTLsAHYxSCY8NJ1BG2M0b6FlX2IYX2wcDC98oCoESGYQXd8sdD4taW+DOPP4MXxNxIZAyuyondsy4So9ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780060954; c=relaxed/simple;
	bh=nqCTUuDVyDu3O1Sr5R7lQyvtuQWvtwUFdlc1OHw25rA=;
	h=To:Subject:From:Message-Id:Date; b=JdeJqhDTies/BgTCTziwfDTikoVC9JDxLSnbaKAqk5p+VyR8KYoujnMH2Kl7C8UwY7Qo0f2QXs5yDPh6KR0dOlB/LfYXtJaM+ce4RswwebCL8H4VGzu5TRk2mwmnyvu+i6tFT1P7NrAN/obBL4V2ZXAFwonRihpUTEMpojXhIgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHsnqR+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHsnqR+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D023FC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780060953;
	bh=nqCTUuDVyDu3O1Sr5R7lQyvtuQWvtwUFdlc1OHw25rA=;
	h=To:Subject:From:Date:From;
	b=HHsnqR+guflv/jlLvBLpbOr2W5J0aP2Ilf8QetCph1ppeNN0JwU8XeatR7hgxRDzo
	 TLNq7gFbSOYzmjkFvDMrEl04rOC7EmsXWCfb7b14Wpn5jF9a8KvnArRiPxLljaGfEF
	 NOahp9x+RU9ZilOUjAMlFJje0QFhRa5M4Z/2iuYeSBT+i2UnTJe/djW4sEiR1aM2xN
	 5hBdBPM0TB5h6BvT1XwjGQu0sn/gHYI047hPokMzS0VyTgoTmVeAavJCJLKRn5zr5C
	 BeAEiWea/qqM+e+Bc+NapfmtnfE81c7oIjVCP3zoGlBHdPbS14Uaq/3c2xm+vMLjZU
	 OCFFDGB9NtlSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36C0CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006095371.3388.2919599244887018707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f66257e4699861fd2981d93cdbcab733c3ac1a15d12c11e851cd72e4480c191
Date: Fri, 29 May 2026 13:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780060953
