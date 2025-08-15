Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A72327F18F
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755298794; cv=none; b=KASc1CuC8wGcCYX5OJlhWhfMAsRTVsDpVTByN7lhDEtjgjOviOtm2ipJNCltDAeVAasvXlaiBiEoGkAfmHKoOVF/ylctvW2790xKFXZfsHk56qZ5VpuqNz8Ny2fjTe/XH0piyiNJBmChDYOROW5B+W/cMs8kdXdvPpyJsiiK1QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755298794; c=relaxed/simple;
	bh=/sYTGh+xw8ztNXDahzJnsdPm62KPv7QJN8w+8eRuj3E=;
	h=To:Subject:From:Message-Id:Date; b=kpMErPqzDzxTP9c+T/CCUMFi5EBtLYj8J9HniAryH/FU5xHEIIfVnV6rc2uxkQWua5ALCnme6xm7enUGzv3NizzcuczEnpWfRDtdHWokIn+XqHUJ02x+27fxN1ac8etG0R0E5q4mbC1muLcDqstYwdPHZVpDsVoypT6BltNRp8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fR709iQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fR709iQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A636FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755298793;
	bh=/sYTGh+xw8ztNXDahzJnsdPm62KPv7QJN8w+8eRuj3E=;
	h=To:Subject:From:Date:From;
	b=fR709iQr50UYBbvZFXQDK8v+uQsNLaIplXOLntjmR7PbTtTsOT+/vLTuez/docH+J
	 uX6tz8nXcfTNi50rEj2VXWbLFd0so7v9uuVE2zgzuykwwQrd8H0dW26IU59KrSBKY5
	 QB4F+YBmdh9TboWKnwK8dymN3G1az+SyzcqKIc1+YwJZA6xPZMYUxymFQBi651fu8A
	 O8H/l78R/pdzjbu3ZIjWHHQyjBikWAdWduePirXynTS7HHU1vlVXdeger7vM49D1Dy
	 mVaHFGNikU8056+yWhsO9QROvDw/aexL5jTwKj4+M6WEKGByZnPzCgHR4C/2ZWcLTu
	 oL5pprwgRCXQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D9CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529879357.21136.14643978519261664719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172b0ed5de58cac5624c6a059b40a61a7568e31ecf0be73d3df39a1b95f1bcc5
Date: Fri, 15 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755298793
