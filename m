Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ECF2A1D8
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746415794; cv=none; b=l5CtAmi9QC20YcBxLjnenA3SZiw0ioFFm37pa0V65WJ3zuprLOnFxra2eu/Q0uKF/7Klu2rrbLlTPzhtNkIZQyhVub3UbZHFve9OfZw+WHRYNi+HxxgHIQ3WSDUXPakJizluTRCLAAlAPBcS5fMI8IEJNuJrIP76r2jqDuIgPew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746415794; c=relaxed/simple;
	bh=cu21IDZAZ0ILFdbioBX15TsD0vR8rMRUhQr7R98pK6M=;
	h=To:Subject:From:Message-Id:Date; b=RjM+eQfOeGpdkodeqwwXXY8wZidazPuGvJIHGKBQV33vZisapxtYRBk8Eb7rdKg/pppuMAeQ3j6mGKl+pQ7ou6H+bUumzz1PZfKdRTvHpqVU+e1HmCrDKue6O0hk73YT49FTfvdMvLKo9xX4giJlhzBahSkwmVmGYvK+/tcazbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WntBH0vQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WntBH0vQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A454DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746415793;
	bh=cu21IDZAZ0ILFdbioBX15TsD0vR8rMRUhQr7R98pK6M=;
	h=To:Subject:From:Date:From;
	b=WntBH0vQELyAgBH3f4dHeBty061KGdfOog1y85eYXj8jQ5rK7VafSgEMsrCH9NAkr
	 2OMd0gUkRyFyS9x7BcwVRlHCqBoTdNinjGKu3dSLWT9r+3CYmdWpBaGfAJT49LMfp7
	 UoWk6GR7SZoT+c0n6a08Ri4Jh0PAGl+p0hwvDjcWyHprYWA0yFegpvohJhRshnwLr2
	 GUDf5nCunbcWBhtfsalXdQrnZ06gIE7P1pRMBjFkgEV70o31iHXK+GZW2hD1fXV1Ap
	 fciphZsCb6645w2kTGwtfba3xJ/jSBnNeT5+2boGzca2GOO+A6UO5HT3E3IyHbSGOU
	 fy+t1lW/0aIGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B62C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641579357.2213.12277110077774347779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a0683d7a9f5a0347250df308700511b6178479725d5c5151972f11a305a0dd2
Date: Mon, 05 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746415793
