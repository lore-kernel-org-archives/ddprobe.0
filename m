Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B73E1E52A
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707356297; cv=none; b=F8V15RQXtAXyi+SHISX7wdyD1xBQVeVKKgyMhFgG908wEJWPqYg523p0GsZIzRs1kAXw+WQewFW6dlHAtu7pKrVQJlH6cbvCKkKGcrtQWjj0KOD4IL/pzqagxU3whm5bIdKam8m+Nt7BzAWkiytRwxRZO+j32+mkjFngF5cGVd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707356297; c=relaxed/simple;
	bh=WIO2RyJjkX79rLeVLyPOk30fUMy54qcztWhbsEvULL4=;
	h=To:Subject:From:Message-Id:Date; b=ZeyULePffI3/TVxDHO+uZxfCjc6ndXlY1axGaB9XN0XJ+qwZvrksBjN0sLIVEMi/LfL0bCLQ5rMWnlFllcV7ziNpoLimWuNPIqZJAnZf9OQ9sm67EuPAT2jzcvwJ92DengRjYxGMiEvdCpFF/+LE/kq6BCjIeNiRX0n4ND/yjck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pt/BqvFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pt/BqvFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E98C433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707356296;
	bh=WIO2RyJjkX79rLeVLyPOk30fUMy54qcztWhbsEvULL4=;
	h=To:Subject:From:Date:From;
	b=Pt/BqvFySjY+JcxwOAjdOxWmncwKbPpsbWFRIkx+0VbWBBedbIAiGzIbV0mDQJWgf
	 /zApCtygXTV+MhUODZfJWUV6An8ipddS+oMwCuJwAKAoUfGHxAPq0OsO9+CfBtu6qH
	 JNuC4aJv4sXmnYtzCWeHeJ3+aGQmRHJclM5yTZcupZVKuOHsKxUUGkfLg2YX23NRZH
	 /EcPa1l+qg/RMyRYTLVlwFltt4bMgqMwMgx1szl4Py+Cer/tpRad+hgXFirvbusDFa
	 q+rZlG6oLKLfuJs54RgSrjAUUWOKbXm/e5tLKejXZoKxAfCL7yIjTG66K+B27csjm5
	 GF99b4JuO5lLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B10C4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170735629638.13703.11117514239950555355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b9ded7e866d40eb56bbd028559cfe6b495b92242e11773599a8cc72ebd539f
Date: Thu, 08 Feb 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707356296
