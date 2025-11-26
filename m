Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1841B2D7DC5
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764151974; cv=none; b=nOvDlUvnQBOkzCA/+fjS+r+KE5cSN6HW16FoyfMxJQSqIPxSpE02V7NmQPVNjmYrMYQrn+HlVpNChfVV8Q4ac/8WM3eXq/71Qqz/GxHHu3S8swso+wchVfHp203ki26tGRXOqZ6naMi7ch4w8aiXsZ0wIrcUesQ3xC4lMSvxo0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764151974; c=relaxed/simple;
	bh=N3Wqd/+UjUZIagv2P+U8yc4/8MnfDGCTJbvg0skfcEg=;
	h=To:Subject:From:Message-Id:Date; b=ryHY6rSipuEY471+PoP0r8oP1UAVwox7Ceyg41VY2IvGLGwFz/u91ZJRjcDkhYzWDyMneqdp0E6mDSwnHvt4xil/muHK5iYm1bUF3LqM5lCXdCztnZxu1Se5IdV2QhiEWPC+9Ox+otpGBpryYysnYsb4trbPgZCsXPoSd088J+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9pwJdtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9pwJdtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8448C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764151973;
	bh=N3Wqd/+UjUZIagv2P+U8yc4/8MnfDGCTJbvg0skfcEg=;
	h=To:Subject:From:Date:From;
	b=h9pwJdtjKSRzRB8pfvpPQGxOkbE3HX9xgmOpEg7g/8pHy9nW1073tCjx+c7gKc464
	 4UjtuDJkFTe+vp59r/L9fGIXNu9oTVRhVcEmU3G3OgmMuAVkliM/Sv6JMZLfET47qX
	 0XGN7/8hRSKoaxdXzMzvU0u/ZiEgx+IMQYzwcUqOGZudZW3AW6K3Wba863lkg9BZ7W
	 BcK5+W/Nl58t+0jqvetFH9nThUYlu4uRF1K0wn4xuA2V0v2uJOKCr+z0p3gMay3L7O
	 k5xVvpB+kV5DqoN7/MjOXCrByiPHYC3TToHseDQe+oq5zfJJ/58gqwZ9ohZLpe1iwP
	 xuURESlum2bNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E9FD1039A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415197358.30541.6553861969051784764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b6fb7f655419ed7bae448b2a1db65ab6fa3a9e0459c8f6347192e0bd017c057
Date: Wed, 26 Nov 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764151973
