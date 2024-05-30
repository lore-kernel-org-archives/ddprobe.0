Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF6617623B
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717079063; cv=none; b=aX1ot5Mkf/pLNxpZpJ48dVXblSmzw0sHXKF+ecu6t7DyuWPe9M1jpBYEm1a/cGzlEf43MyI5O40Je1zCnIgdYfCZBu+vNp124GXVAPEsRDJ1s7otfWrV8dmF4mJ5fCU5G9yMLI2ddlnr71E1i+eFHhC99YK5RzQcW1jC28b3AM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717079063; c=relaxed/simple;
	bh=v1P/iYFq1pGffcCqxtagiK5oUIt/jml7Yl/kMYX53k4=;
	h=To:Subject:From:Message-Id:Date; b=jhFPzyo99LEKIlyuz+g3SFVO4qXCtgcOuFRWct67OXaV1HUoh639OqZ+2G/Hw2xkwel2jlRfTR3UO57cWO0EuzVIH24d417085hqtaFBkwn0GO0yQEI39IYawObfLs1RV7a7fb3HnVngorxt1gyhI+SBIgT83tzTC5Tb9+Bdf0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCotr5wG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCotr5wG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D098DC32781
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717079062;
	bh=v1P/iYFq1pGffcCqxtagiK5oUIt/jml7Yl/kMYX53k4=;
	h=To:Subject:From:Date:From;
	b=VCotr5wGANfHhpmZNMMCQGV6cfMnew+No7rqn5TAjy5oGlXRIGId0ufYvpRhBoVCY
	 t3xGG+qSZ2o6q991wbO3/EPF38atxScvk47ig5xjjkEM/tEdjEpKLGU6P5d84zcOKq
	 NWbDPUSV0Xt+JfP2clGPtqIQN0DFWis0dONLb5MqTwNd07oHNV1WgqeYbWiBQ0EAwS
	 WYJaHM2nTqUzh3RUkMH3qMpODzelCj9c//7yXHd1xwr+YQuU2lGgv08Wotm63kkceQ
	 BPW+YEseEVygY1dhcJQP3uPkeW6xZMsrKATuwWKtaPTOtMacSLorEHjzrOxM5CwqiW
	 0EsMwoqzHqMtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC7AC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171707906276.2047.2422124355260159612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c75196992214ef31c3221fb9a88891384731eef12ddeec52c7facd73bb88a02
Date: Thu, 30 May 2024 14:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717079062
