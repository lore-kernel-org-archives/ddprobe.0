Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27903346E56
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776325054; cv=none; b=dW2gatRXG2dj6X9+Alrv3lRoP5s3JA7nIr7X6jffDO47orIZsjLvjsJnhZ9rGovERMElVszyjEeL/qVkbLIRkI50IxMDcaeSwaGB8JXGknt6jgauq6z8ka7n8NtIQjM/gcCpVg8pbrbqzIHKWcAQIoqqwkbG4NTPs2BbYN4V+G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776325054; c=relaxed/simple;
	bh=X0at3fjmW9unZbA+OTEyYR04czqSd/Lgv+v+uS8ILzs=;
	h=To:Subject:From:Message-Id:Date; b=N6tYcgoOo7AXFZKSJAJ4lmtR5u2jOdMeHmQA3iB2tSYbSZoLHFbFy7xm2NI2FP2/NNPimxGWbNAsUF5FB9IcKXdReL3IblehpIEnkCZUPBzH3gzNDNFky+fY19iSxTVoRjd1B6Gu9m0eh3hb0RH7rVr0m7eojQ13ngh9PvvSWFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+Ge1WZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+Ge1WZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFDEC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776325053;
	bh=X0at3fjmW9unZbA+OTEyYR04czqSd/Lgv+v+uS8ILzs=;
	h=To:Subject:From:Date:From;
	b=R+Ge1WZ2obqQqkKD97WA1NZEkkWRQT31mw9WTUflRySRrD8hRT3yAvwLvksYR3gya
	 artiMND03C5jCD+Nh0xiP6tAtJdteOQFIOiYQZkFJVfM7e2yS0qDOtDEEJ89xuBDEn
	 lQ+l9bmGhDubCLkGaAov20g2i3j0RrtxE0vWuJNsaaT+YYMVhIYHil/pHeh8fl+9Wr
	 ny/dWhxt6f2s2DOwpT2xYikLxUupZIDW6Dwqmgft5tdro5u/Zsv3bYlTDULJsxcAZ5
	 E20NHEQb5pdqI/RkUYecn2P2mhFgw5WX85tPlEImrieEKIV+KqXCny8y/zqr5jzUNm
	 wUcB9Gd2Fa6uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF91F43841
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632505369.31152.5242946531234771516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b22b457c3fd894efa9109be7faf4bb68c6ed1c779ba30ec0db03e6445db02ac
Date: Thu, 16 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776325053
