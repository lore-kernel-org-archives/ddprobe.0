Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1356836B18
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708384097; cv=none; b=rOzUoSV4FTz+xK+hOF3EML0bq9WxmnuR6kY+Kc/pVbawHV+/9TLtE/ko8DsZ403+2VtRv01kIz+2nD1OVvSQ1EJ4leFlF9kggJnDDpt47XMy3Zu+F6AZweEjYFKhR2LnbzlqTlAB/25LtR+AGfoSD60cO7tCM0mVZWnqCdcG6Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708384097; c=relaxed/simple;
	bh=G9zFBDH3QSrkLMu0hFYsGw49HvTIo8v3gufW1839Hug=;
	h=To:Subject:From:Message-Id:Date; b=E3LmHW5b6dJV9uDq6zxhgHXzWyhyIqL5GEVs82gOLlJqH342xCQmcvZW/GF/0O98a4sLO3XFOYKHG3KnSNcaSGblKRyPz0KC27hfNcPXFIEu0M7pu3NmDeJpB3tccH4+syg4SLVdP1DIqPB+Ja1Vg+lyiah0QgatfgDCOnjn6O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwbCMIep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwbCMIep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F78C433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708384096;
	bh=G9zFBDH3QSrkLMu0hFYsGw49HvTIo8v3gufW1839Hug=;
	h=To:Subject:From:Date:From;
	b=FwbCMIepHyCrLrQjNZketTafi82+OGKFmYH2r4zFx6dx2nxQ8kHbQS8PrEh8hS07v
	 sEvoLl8Z3eQFe3RgPWpuYsxFcrZqBHY14/0iNHdh3yZ839cI2F5IbymP8FCppXCLBx
	 mtjot3U6kUSjPgcAh48oJo8hOcbHd7Oiux96UWZNVUe6CelKRdJMkBtndhDl3yYJ2C
	 855gnyHWe1jDYTVfWCOlt+Wuv+/n1DTjjC+fkdAMUTlHJyS7lmw7NUprXlX9gUZTt3
	 L+Hb/eZMnpvOCbh7AzjOiN/L676n6wmll3AgpxRLtPtmkYoHqfqKapKYXj38eSI1Ue
	 Z2qSOXRxrNx2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E240C48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170838409637.15600.9919720339829125246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a9e82d7b6598b26011d1e2623c61eccff5b1e0bd1a592fc3a9838ad758fae7
Date: Mon, 19 Feb 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708384096
