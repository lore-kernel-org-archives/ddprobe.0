Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B679220F33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750950594; cv=none; b=sKFkb2KSwDkMFpjrX0NlWOrua1NDmuuI6Ii3eGDgM7mdosd26rLfZetBH9cI/2O54i7SXWCQHvLedYVxZ1P4Xgdex4Y2MtpGeCq4zABfUSl6kMScuQnaZf22bHBjMSjOmt5x5JOcvesQAmBmk8bTj2mfe8ojzWU0CtTe4dCsUXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750950594; c=relaxed/simple;
	bh=3fwGoItkjsOk2jyQtZ1dk9r/mWVJjPbkdJnMpmGP+Ug=;
	h=To:Subject:From:Message-Id:Date; b=lqp5ItAgD2uxk2/ql8Sm2saMR72sNqNbsgWAsHiLP/h76m5Kzl2Pb7B5Ivt+TEzBV8pJOXP0xtO0TrnR6Gi5n1ah9HQhNLKR26MbmWBP4ajLUCs3SDlme7KN3hfb2dZI4P9aUURCW74VEbbh4qzm5eIXJ11mp0IybM5wRa1jaVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUUpXHN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUUpXHN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB94C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750950593;
	bh=3fwGoItkjsOk2jyQtZ1dk9r/mWVJjPbkdJnMpmGP+Ug=;
	h=To:Subject:From:Date:From;
	b=RUUpXHN3z+ay7WCUzdCwmsMBTdrGcTnPGlA5X5GAVkQbZ2it1J5K9f9BNrV09w24u
	 +kn64qOzS9JH1wmYMLEPWQynyewwShiUsmwTVUwDP2XpP3dAxQ3dIf6j5ySAb3bhlR
	 kzdC3Bxyg+a479dWONjl4Jb2DZmWpvuzpgqTFJ6gampJClDVtxxhFeS5AbsnBHuYpO
	 aOt/5amoLlJKYW5m6n/BdQPNzgm+Kzf5cbwkZPY5bbfFLDj8fLax+IjIwT1MjnXbz/
	 dKrIsATZj/UPKomhfSLJbdazKttNsqragM0j36YfAH3+ZO3BuJ0RKkZWfPsCVzQ069
	 ZeYiYH/Qk4ivw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F16EC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095059364.24231.9887427143238751694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c275a50a8bed8dd9e1c32ad805f33dd22a9efaed75eb4f27b5144da89a4e05
Date: Thu, 26 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750950593
