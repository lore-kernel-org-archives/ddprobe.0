Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47976469859
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785858634; cv=none; b=rBMyZzGBVlg7K+TVJepGlzfKJx53zWkoz4kAkGAHsGT8AIrCmCKrQdGq0/byZkbe8NPqlE65RgBVTPxmZPRJItWD2yb/+1jW9dzgS5rerspOq7l2A95bEyBBh8yHcqe7J38gdZOXti5DsCk8I3C4pAhvXkjayKpY4D/NqgdVer4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785858634; c=relaxed/simple;
	bh=SlvhYsN8lxmvLo+43KYd6KGZmWVhz/hcxa/xTeS1K5E=;
	h=To:Subject:From:Message-Id:Date; b=QjboeANErw6V1BuBxcVImzbCxGmOK4MNR43PTGbVGOKsJX/HA1BfZsL35xNMkg6u2nd/SbTNU0SMG2ag/+SnLQ5mYa4yp3xe6RFCV8smf5en8yd1/PxFVYnqquyF+DhnuvtWUl+2jofltN//W9RiLzmigN+umJ/431NPAWrQsq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2BnagGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2BnagGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE72DC2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785858633;
	bh=SlvhYsN8lxmvLo+43KYd6KGZmWVhz/hcxa/xTeS1K5E=;
	h=To:Subject:From:Date:From;
	b=f2BnagGtac4QK8eJ87ib1t1LQ9JXEueujzcJ67N0y8rGsEhigGia+uGJbKPQxwKWF
	 +mC6JEv28y7Q2BaCzunkN+XnWBwwrqVDQEBjBtMjgIsVRlwh94Se/ptKC6rqN4tuvc
	 129UodpqPjT4UkETuDKgtV2NqfXoGHkouh7qyY8v//wq1atMFapaNT6O3Ey8NShcb9
	 NRZZMmbGevmH+9v4RpIT5p2umqF8Ka4L50e8MBPm1M60iYEsycycoC3JMKJQ6pUAqd
	 FD3S9TgVmY3wpQfnEhvlrBmno/x+r1LNnDo4bQ72O9mRMBTylcLCjXSGls+WbLaFfi
	 pUl8A8EmS6OCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB24CC55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585863369.1015.6671510595181125763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f668c1156cccd0983d4f44fabdbaa435b4bf2c5110de777debc7a9e2f85d7774
Date: Tue, 04 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785858633
