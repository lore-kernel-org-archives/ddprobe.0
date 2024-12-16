Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFE2A41
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734323754; cv=none; b=K1gsiH+x9T/AJO2pK4Nbq8mdfHB6LWmvPO5hDVAs3MUcj7UBGbHOA91qHn4Ax0FAqAOJ1o13Da+1LquHthkPgIHL1FQuNMckoEPOfb4OsBVYRgZLlFzcL012XjX5yp/C7gcRSyQEX/8RGlC/jHcoIqu5IGXqKL/cDLGb11dw9F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734323754; c=relaxed/simple;
	bh=f96pJ2UOLcxrTTSEOqAESaXVKtNAv6YheyEhTIcRMqI=;
	h=To:Subject:From:Message-Id:Date; b=akVbrM7VRo1Tv1Pyms0F0E2NeFwJ000Au4FvB78m2qjfBR74hjTofDAhSaKF7aoVmSPS4sayIS8hR4cjM1QiWbN9Bp2CKgfM2opJRWX01fCDLA0h2VD7AUewKWUDfhE1S/p7vv/NnjOGe43dOgEU6i7mvhLtir8qCs7CsxpmgQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikdzcLDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikdzcLDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3779C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734323753;
	bh=f96pJ2UOLcxrTTSEOqAESaXVKtNAv6YheyEhTIcRMqI=;
	h=To:Subject:From:Date:From;
	b=ikdzcLDbp3jlLOzyvPJ6lCVm7wYLGpZc5AZuFfitpUguY+FO8aHVFmdl/T1oHw0WC
	 GOiy5MYGLSr0k7QgFx/8u5+09juTFg7TjA6LuCytSljovlLhjjRSZV4feXPREsAMTI
	 F8V0NfGnNgjupq557AUKCE2EzQYwZ4POqTsiEgk5pGiiTUgB6lYZNAWWJkN0STcR4L
	 UlcWljtytqc63v8zfKEJfbBZ3idPaNHCzDPQxaiCT2GO7DTE7NNG7zrDXF1DccnW/g
	 8uQFr0krsYIu8Hrv3nZT130A+mGWrS7g6pjYxq8/sQKmWVicRHx1pBjZXEjWEBXEBG
	 /1b8Ukjfen3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D082E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173432375360.21308.10528234400086288211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8cbd90abc95d319cef54e8afe0cd41ddc606ee8a986af13ef81ab9267404d2b
Date: Mon, 16 Dec 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734323753
