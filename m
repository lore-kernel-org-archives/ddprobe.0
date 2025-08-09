Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAD0258CC4
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754735394; cv=none; b=utcNvGe1xpoYbaxSFY2Zf9AaoSRM+LNlzpZ2CPaeg3NBoASUMz3dokLT4nX2d73X07h1w56PeZg6Qfu5jHWl5q84N8OtTmL8wpkfKoCMK+MZgHV+nv0aX7Ik6WirqGt/vdP74du89M4ZRHaUvlgbZtJqcYbq+1E4rxslRS/KLuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754735394; c=relaxed/simple;
	bh=hHfUH9ahOXU44sNcfNL4iRHq5tAIcjjVQO1LoFL8QPw=;
	h=To:Subject:From:Message-Id:Date; b=D9COBs43HsgGdTvhaov6o5TB7uVRYdgP+WbDUXmjTN5uI3KdRi0HFQtyAvSSn9a0fdOW6ofM8BkOhuaU1mekj50Ay6GARV2IQVAZ+NSk8o5fOZpwXo+0Ua42b/qnrniNAwVrms1OVrFdlEUb7wYNQN8hImn9ZaNZUtYmbYAjiHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XR7b1DC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XR7b1DC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A7FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754735393;
	bh=hHfUH9ahOXU44sNcfNL4iRHq5tAIcjjVQO1LoFL8QPw=;
	h=To:Subject:From:Date:From;
	b=XR7b1DC8X4D5U1ap9hhzY0tNW0UPsKh7nRSB2SBd/XGYMeSRsHBlkcg+Vemadg9kz
	 O7QbbT/LZjbtnNGVsT+GR7HP6a4kzjWOSZBQh9JZyxlxmA1NaSiNfPs9DHrfB5K1yR
	 Swj4YtvMKxlavnzA05CrpnEKa/Yvok9oaOWBTukVAb/KEeQfn53qitvkFEknqoCwdm
	 zPO8YjwbmuR56fua3qOeGP/NDLxrl/qhVIs4yDaUa0TTKkalnjH+qfFLXMvv2dPpvC
	 O1LdiEWPiYyuisO/Q+nbO8hy5gvmrxrFcnFPIOykbx8t5sH4Nvm3c6a0u4VZEVjnfV
	 iXE9l+wGwhF0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E537C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473539357.23504.13055731573018068606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0592226d4809c63db71e73e9a1c2e2c120ab1f7ef17ae7d66958dde43b3d3e28
Date: Sat, 09 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754735393
