Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488A93AC0C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719873923; cv=none; b=tkC2xhMahp79eMUauQZ7ehEPazwZoOyLItdsBunN3fBKiGCjV5mptVrC6CSR93xiodIfRHGaGx0quFAGvTIobRxj3rZTjzbFvX46xVwlyY7rgP2dmD1p47mNwFQcpahukh80yjGuYQXPp6k3osMMEdHoCuAWNqVwTdD6HBuv9OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719873923; c=relaxed/simple;
	bh=+JoMigiH6pymXiwmzhUc0jpDX4A1LMkT8rBo7eMmYq0=;
	h=To:Subject:From:Message-Id:Date; b=QGdyB+II3AGAr8uXDQptCFh/UMvgCGqKBC2OdxBOq10P+hWR24hw5jrJ7I88cjvU1pPiwR/zTr7UCaK1erSdrUnWQNo906JdXwq/vcVT6r/YsyDCoNwBxcQiPjFV46rWk0VovEzsT1aZrtOKrn+LGN6TOuJbP9fG+7MH472HpSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7ORvHCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7ORvHCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB671C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719873922;
	bh=+JoMigiH6pymXiwmzhUc0jpDX4A1LMkT8rBo7eMmYq0=;
	h=To:Subject:From:Date:From;
	b=e7ORvHCGr4QnBI1+YEX2+F013B8TW7V4PZx1K8Bh9M/gnEfg9LregGR1olVyXjFCG
	 NrA4GO0HVNZrijnFnDtnx8EVHqqJBA1ybjhj6TwTJTzIYb2Sa3LtCwGBG4ce47X25s
	 RFRMrfHAIdyVeHH/n5+RJrC64Vv2W57FwAtkdfRslA1iAA77ROqJLOwiCSXs7N8R0m
	 lcs/19JoZq9NsSCeDz/IRYFp7/abi4hKbDOwOJGWx0T7wKlBJxs3s6NmMQborbSboc
	 WdoHsG+7I2IsUlNkF2ok1852riOA1L+cMm1aR+5B2HLHSS8QDbJO3UO1+yr/D6bTXz
	 52ViU0oT98mMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F01C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987392279.31482.12807665773102412910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46d8779d4f98fc01e668b1f5115febb8d17d2fd0c5a383d42c464bfdc4468ec3
Date: Mon, 01 Jul 2024 22:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719873922
