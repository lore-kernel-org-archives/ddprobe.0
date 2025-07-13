Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224B84D599
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752386394; cv=none; b=KsHiqm28kogMOlpedy6ynAYeWhb5vxPuw01J5QpYIuSgUVX6F7xSKpOEsFdXQe54ukqGS1pWI1WX32i5YqKxnhbpTzEqW6/KYocdnLCQlCP5M2MYES4iSQMJYvsiTjiezEZk+8GfZppb7Oc+jBQXIbhA9YFy6jVBg2vaXviuKgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752386394; c=relaxed/simple;
	bh=eu+t5ZujTmwqT8YOyMEd0hKE2jLKpU1ifSduiyHeS6w=;
	h=To:Subject:From:Message-Id:Date; b=gurEXJMSiuCRAq0UiKtq5KRFERTTLvJs0eTLW/NXTqIhVt8xwxh55QL7skZi7UxpeJ6GsxYzZ+DR7bHvyrvh4p+/Tjg11u6l5E6EWxuzs4C8UTEYIPYtpNs8ZGA1UZXrWGAsK2/MMQlYJSUzPsPi2clKx4uxc6VD/jBrtVe6LqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh/uJkPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh/uJkPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C9EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752386393;
	bh=eu+t5ZujTmwqT8YOyMEd0hKE2jLKpU1ifSduiyHeS6w=;
	h=To:Subject:From:Date:From;
	b=Mh/uJkPpZjyDwzPpluq47PS09fJSrWROL5Ma6h9cwKQQNLZRcH5W9tOv8bozZFoXc
	 IiFTFCCzKey/3y/6zHmj9p9rLrSBMyFyb0j2yi6+ThWr85qv7BnH+/8Ui6nEah1hRz
	 hiU+tgN78NqKq1Dltf2+w9Rwgkj78mDPvFBuCISqXcK5+0TyMXifRZ0QxsVh4GnRw6
	 2RpO3ENO8eZsgViJhjm0Yiwr/69GHwyuBGZmr6id9XsNeYhYax9CIyd394MSVcmI+F
	 atGbQ6P5t3tZ/ldW1JOCOW9LttCdKYWoQp73ol7im7nIHuGWVHf8slOk3OBDc1JTjc
	 9jIRgCmNaWP+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91431C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238639357.22674.11371598477367708328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a1444fc0b7b84de51e469a5da0045ac80e0b7fd28f649f86e0ef1afdfb740b
Date: Sun, 13 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752386393
