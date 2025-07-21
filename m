Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD045383
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753067394; cv=none; b=QzpmfLw81LI8m+Cx5hyoNZyKoh3uzgF1zrf9ijTMefw1AQC2vmDN1elMowhB9TdX9nO4n9KJxicsUBRrYZvrmIWkQxjytxAwDcyNu4yQPDWM/sbp0Hw46EejGR3YfFtAC78+FmRB2/5wzv4Dm5Z+Ls2Aj+5C8NeNjBgL4rd1M1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753067394; c=relaxed/simple;
	bh=C176rUn3Ih8mLM1Y1JkV1Vju5xhp6o3NaH5R9B0p1jg=;
	h=To:Subject:From:Message-Id:Date; b=JaEjVo2W6jIUyQ/fPjkmXvChqNO0q850plfgZ7IgbEc7EjdS+dARmPdx98X3+JPfL3XY18Y0W5MHkYECC8/FZsMMVmv8E2eyJ4T1L+T2DZU93Tg6Kgv9Sky0ukHba9f6CplTUGTnuQGina9RXJ1xgXnGldcjC9oJE8NjHroD49E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQyBP1Z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQyBP1Z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E3AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753067393;
	bh=C176rUn3Ih8mLM1Y1JkV1Vju5xhp6o3NaH5R9B0p1jg=;
	h=To:Subject:From:Date:From;
	b=RQyBP1Z5P34CoUbreHlGqFcbd/5BPdEcC9xZAaFOijjp2vpaZiu2P+5O7XXOVXieM
	 eOtMr2pwHF5wfG41/Fl64r+eQwNY6F8MkCiV236RDAlRZv6KC5+TmA6Iqx6eJjLzZH
	 dp/Utjh9BbektRVSighRR480Y4ZOmMYKROFVXtarOi4ltyePwz+XYvHPIRoz9bM9wn
	 SdIhxs00/d/RARSz7dMjBiOIl2RTgDjUf7aKMoOfpmi6z8IqpayeVP1qNzlmEFgs9f
	 YCguLfXKmUvzxyugad2nSRN2hcQ8qDrPSQGYb0ZwSE1Km3NCBxOy1hgG849UGLagML
	 CxFNHEaWHqe+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90EC83F17
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306739358.2184.11811003504899519631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f7841265112c4ebc4339d2e7eb17a43223882ce7ae1ff7dedddf4e57b16fcb
Date: Mon, 21 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753067393
