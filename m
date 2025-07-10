Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CEF6FC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752108594; cv=none; b=DLKg2+2IZojQboqDdj5ID+rQpGojkUrYlrBr0inZfy4HRQ5vmdK13pGtZPTRuj5dXDCTOoqWXOAb3Spnzbm4po61FT8gxxEKWDjZvii+KDF9esGxtpKnDCmGECpMe9dU/Omz8U775IrLZfwdeQWO2Rt9HX9pgrNjBWTJ5CaiG+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752108594; c=relaxed/simple;
	bh=2GcWDMGADUfcmH/G0hYqsqbmlVJD/nsLuDJ/fndie1E=;
	h=To:Subject:From:Message-Id:Date; b=ZZjH+8pgnTm6E8+esgapazvO1waIYdTj3OsQ+C0PQd85KVcxIoGSGdHhkzjtlRtpEnQpjN01XJTPHgW4B7fVqQMNrXJMon2Zbp12GS+pLr6BDG/g4x5QX1NouDAxRui1S/HqARj8QNROjNUSSYK4TD9Bq0o9TR+zaIcR41Q3JLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYITyN5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYITyN5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3333C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752108593;
	bh=2GcWDMGADUfcmH/G0hYqsqbmlVJD/nsLuDJ/fndie1E=;
	h=To:Subject:From:Date:From;
	b=aYITyN5lBbbh94DceGgvJFQXUyn9oTuFupc2TvX3qkVsJ/6IBG5mVLROwvuiEhBTA
	 vISztF39zR58oZ4zOvwehsR8CEXRhxDsyf8MgiOkiannERu75bZL+EdWA0XUNXg3fh
	 rtXyGphdtBGC/PhX4XXzON9UonhAZzldy6XgGp4Xu87Z/Kq0sUSIofX7tVYjWClw/y
	 AEll4pj/IoAd2f64hPaxsI8YRawLggJIw+bN+yqYkLPkeGXIgn0JzsiLj7JXmpnPi/
	 V4F5EXpcTsf/ELUEWLTXH2pu2qI5u+4SqTbPviHpht/jg4bWYxSKd5rTDyXlg4hQze
	 gaD+msu3EATqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF3C83F10
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210859357.3166.10261295904907021331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6700f7f448787c290f08be7ec50324c943dabb4625dc2926dd5b8467d0ea18
Date: Thu, 10 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752108593
