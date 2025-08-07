Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8AC225417
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754551794; cv=none; b=NqRtth+ovHg+hO8L76LmJQ5eXrZNqvgvTWg4bLFa4padsktEmOmgf4Tv+bIazrYxN18K2++HbgDFCj3ngu3vK5qcV21JmA6IbvpjFWEi10NHcaDUF3uI+HYjoj9ru6jJzeJdFM9NsholjPJ/2Isge0lCXxjhm2mVXhtNwOyn6Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754551794; c=relaxed/simple;
	bh=PCKy12pktGtLtaQIVr0Alc2guvp/x8piYrlyqW2B9so=;
	h=To:Subject:From:Message-Id:Date; b=V4z5999+/3YHYZdko+jAm3zY+ab0EGYuaVtvD9DvVNbnIqYGhajslJ3w+BsAxZnFMe3PB/rIRiKOZPWrLBEFmeKRCy0L6Cl5dPJXeuCGnpbcT48FdVADr5dkCov8doZ3SnpsYB+fWwHFggEhOKvmjtxsC/yZVDYbCv/FI/QvQac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKRodzS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKRodzS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5E4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754551793;
	bh=PCKy12pktGtLtaQIVr0Alc2guvp/x8piYrlyqW2B9so=;
	h=To:Subject:From:Date:From;
	b=KKRodzS9Uv1437hTM5AF/VqCxsTw+sy8XDZNzwkq3zMfW/7fRIN63nce3+9YkVAul
	 m9CSU+9DZABoQqUbSTWCEwm0+v8AQLnd/IENBTKUrZshrjl1Lkn0G7KcWSeFdGXO25
	 +MxHGdi08DJPzf9jfsBS4KG8ozbxckX4Ky2+tspIRDcT4dDLS449zLiqymztvSjTn2
	 1fJa2l8eEw/8EiZZHxumKlYGsCwdhw/eqqsMdDQLapho25qHms3tytsRQQWnOEoovm
	 MhWRPz3GI/79hFQRTHdALdxXdWPHEdyvSj/zkiZEEsY8Vah+sc0SFkxV65LsyLE1Zw
	 9h2v4FrA5Gp0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA51C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455179357.19352.11294509705960914582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a4aee08de37794ff9598eda3d4b0265c829c434817add654ff8647ba658144b
Date: Thu, 07 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754551793
