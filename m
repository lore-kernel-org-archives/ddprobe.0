Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210D722689C
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768019034; cv=none; b=RDlOWAo2OkDtZl9YkQkKQAF+LT5D7G/xeGLYE131iqlaXRTPScl4sHdEnUdRp3SEjP/luUlMx5VbnSAVnsPqHGX9R+KeFeHklhuww+lkns12hc4U0TiOg8f/VpqU0PUTYOAhYfbe7N7rlghJTnaqMtqes6xzAMiPPDXy7iWKfw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768019034; c=relaxed/simple;
	bh=s7qf3a/710RkgIO5J4dRaY4NUVcr+sXl3tA4GV2mFms=;
	h=To:Subject:From:Message-Id:Date; b=R9mFJ2ebkSgb3/Pbe/dICKMk5wRN2SKHxWzTI5ts0wDxS/a9BQ04e1QH/8zKpMjmTHc7zRJ9zIG7aMvxGybea7ibm5lFQSg1Tb9M5RonT6gn9eHw8DCotUer0VGap35uN/Y748VVfmkU9ffNp7wrYoAz8Js/lK8GhLCMSafpE1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFjonVJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFjonVJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A70C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768019033;
	bh=s7qf3a/710RkgIO5J4dRaY4NUVcr+sXl3tA4GV2mFms=;
	h=To:Subject:From:Date:From;
	b=JFjonVJ+0QFz1fzX2G/9GZUgZTOjKRInIdq8E5G5I3EzWBspxppUzTQfp25omaF48
	 +gYuzhBoKK7lFUoPXnbAm83K6mhcN41lLIKyZH+Ncd2WhDnkM48rIZfo8D+vNkfKgc
	 de+zpTHzp6lNjruJJTdNTEABEq5L6BdfEI2noZqdatAwTJheXYj7x/15o9PBvG7cw3
	 wnY/TqlTCncM1Wzh3liSa9z5NqUXiqQLG8/ngJrKdW69XjasJpdn6vbq3aRaOW1po/
	 4K8Q2yGPyzUIRH/lZxYIWCNqzUyOc1vjMi3gPFMpNGNcVASbFl93e0/OrgrZyMnqHI
	 mkIzaSn8rPZ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D9D277CE
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801903358.30101.8627324568513997777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aec8e645c64dccc8d7db857cdd571d92dfacdf6cb4b13f0d1ab470a1b8f6a78
Date: Sat, 10 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768019033
