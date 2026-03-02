Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158E938A70E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772441694; cv=none; b=oJ/wmDrEIVlnDPjcU2VXmeFr57IUo1jc9w0LeaI6icDJKq+zmAGY6UytvqUiDEYaEInHsVNBljSsMbMRNU3WxS+KvcFWyje8rJ/zDgN6dKlnG/IE5iRHlL4aJ5AfOPnlQpblF+82uan4Mc2UWXsuaLt6IvzGZeJiV3bkxikIbkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772441694; c=relaxed/simple;
	bh=f9qTVK8LovxMUK+6zEZi7pqpIkPNfqokITG1t/B/3Vk=;
	h=To:Subject:From:Message-Id:Date; b=cPep/ifP5OIB3PFs9vf7NOz3bhBF5wSidtrhPW3cP2xvksiRSC06Npa1RnUICbA8f7V1rHfHjMytBA6yhoHTUWrYyZZ2ro+SdLp0gNd4qTG8Mwka5nxqXIQOwyii1tcGdCq5qEIjv2yk5hb6zd+1g3uSC0dfzgNHBgRFo0Qul5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Put4ozpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Put4ozpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBF8C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772441693;
	bh=f9qTVK8LovxMUK+6zEZi7pqpIkPNfqokITG1t/B/3Vk=;
	h=To:Subject:From:Date:From;
	b=Put4ozpGvCj4qaJgqHFzbSAVM00oUADcYw8vvvTr/KfLpVCFXnIAhM9QbcH9hUoTZ
	 u9d/F4azADl4KIh8U4Vsl+oXQAZkspoymlhUCmWxcryl1ulQt/cxxkNTkfL52rpWq4
	 FBsbXYgjYNRIsZB4iCfZB6zjRImOWLTaFHv12CFffq+qZ6eQk95uBvo0bAcx7E933n
	 oufSAkBthMftElYPPucbtmi7ahQWFYv9rZ+qApt7RLM2p8Yt/zeXK3OCEePpijM0sS
	 1yOOmCM2Px4zKMAtiwUuuzdoomz0c5BAJUTv7tQI28A5dSVWHfVQUA12BWOZBty0Iu
	 TsWCKgLkgaLLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9431AD58E7E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244169359.4720.18201607689715783447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d6995e2c17c64da9e8850db709d8823217cd271b037b53f679a8860e881dd7
Date: Mon, 02 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772441693
