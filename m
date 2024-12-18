Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FA915666A
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734503754; cv=none; b=usaZfN9lm1yC54PDtCoFL+E7f3w4dQhy5R6sd7O5i7QJ7imLvQt3qq86zpyJGulyyHSDS4LdH2Qqih9YIKpkKQppXFqjHWz1oGbcYRgT7PNBt4FJWbNSmz947Z8E2UyaeWEKZGBYZvZJeh6aX2QTLBPsY3CbdmVhJ3ChbvXRKmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734503754; c=relaxed/simple;
	bh=cio+tRfYBsNMvvkXafuKKQnf3Dt2WdMnjIXLLfr3evw=;
	h=To:Subject:From:Message-Id:Date; b=bFv//YoRYUx2kGGuh6FBkamEEbk0H5dykneYXJBRac9HffVVPwPvaDTGsrViU4+lMkAA324+cHXF8ql6Yf50VdNSB0Ou2dx35PxzkUnG8gOfdlIvBoFX3Wif8XTnYGYAv442oAqwpG7957a+erV6yNWiHmTDGIs0SXYAogZaSjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daxa1Cqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daxa1Cqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97A1C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734503753;
	bh=cio+tRfYBsNMvvkXafuKKQnf3Dt2WdMnjIXLLfr3evw=;
	h=To:Subject:From:Date:From;
	b=daxa1CqbIrbCud2BtgctVy+93CRBMVeel3EUk2hOiG0iRbmoQBcj27+/OP5PP41si
	 h20o8nY6x7o/m/CTLoDGI/20jaExC4n/nO/p/N3O8YSHK4VvTtg5OZofS8Myo4xba1
	 6jV9ViSFDgAxHR321hZ9PaRebjNl+nLnP/b0tSIvMdRtqDmbiqtl43qABhUjvbeUj3
	 64ubQNmd1Rf3jT63xSZGY4095qQ/rRJs8BEgzkmPKZc2nNBKgMMeePCJpRPDdnBr2I
	 wmni7tlkIpVTpIFgp4ShpqHm8tY/FN+vE2OgS3cW7VwlNrvbnPaPVpGUo+cEu3uxMZ
	 YMbBfG9JAHR8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9669FE77183
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173450375360.10599.16383226057432242681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98e594dec349b218ec830102f1ae5e58bf88fed48dafa9988e301e1585901cb
Date: Wed, 18 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734503753
