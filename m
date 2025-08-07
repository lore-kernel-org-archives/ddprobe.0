Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AD2262FD1
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754590794; cv=none; b=BUHnvvlQK/oAIIFVjYRGaJKe6kB3rds9Tkzofm0V4d9YN0JJzLOTnvnQ/OfqeXgaiBDP9pitvIOx0A7IcGUplOFywj4pbRnnsolTRfrW5/0zRfU6z0aQGS2VZBIz0k9JnFo42OxCojupiRKw0GGSdZ1GozinBjxF44oVSZbx2OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754590794; c=relaxed/simple;
	bh=roA3Nhk/56gz8zm+Jwo9fZQcmaMPX4Ja+DsG8KCa26Q=;
	h=To:Subject:From:Message-Id:Date; b=uUxUdR0sRSfAmU0jYCR40YzvIbQnbSSwmH+pVdjZQQ2eP93HawskQKgzFHk62ZxcS9n/0+++6V3OPux/d3L8tbILwXyTpzjzhJz3znEHvR3XVJRTVp5bNZqrTjX5ZYm/whheFlZTLP9k60NwypGlQ/ffkNXz+WaVFGCibCpD9Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnzDhDZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnzDhDZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCC9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754590793;
	bh=roA3Nhk/56gz8zm+Jwo9fZQcmaMPX4Ja+DsG8KCa26Q=;
	h=To:Subject:From:Date:From;
	b=cnzDhDZGUDETZS3QY05g1++orZcUHs9T9i5zHBG5WQwU8YE4ccO6AcppO52usjXwP
	 bO4z36g3VlDnSbMJr8y9CirTvZG2DUk12xgHgV9bsGvyTt4IR84MX6j5Kg3kdDXvWL
	 1F4dH7hwp+nIWPY0S0SIRDHjUEA8sfe/n8vui2Bkeyjyrlaao39jkbB91VehkxzrEi
	 LsPwloUoFehdi01e71jDiNr4UecSAKWPeSArW1CrMLy2vv5RGIGd0TUZKK+HYVky3I
	 wfnPLvWm+UCQ2C8GA70peaio4x3xdDBtVS88cZqWkvX5J3EslD7F46IAdFhaeYDk2J
	 AcjD/17emmMhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A6C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459079358.15184.7864494852575546377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2f576349af0b2866c7edb3bb29f6b66a353522bea47a7197c01a23a47f7ceb
Date: Thu, 07 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754590793
