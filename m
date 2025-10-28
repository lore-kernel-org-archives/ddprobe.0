Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2367B329C64
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761653394; cv=none; b=ivEqhASx2byySplDdHXHw5ns/iiz6RyXf6U5bgchaI/V4vWwOIHMSU0QDxpxUo2xmt7BVMWoAt6mBgRxIXaPQHF83pReFocFwglZORl1T3Y/b1eFTnF0+QKlMkoNf+BnpF0mIm7m97TlUBlMBAmE8ko1ogm7UlByudkNDvqvny0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761653394; c=relaxed/simple;
	bh=AYRBIAM6+n2WQSn1L76bX+bMGJArVpDS9mkD2PAnXXQ=;
	h=To:Subject:From:Message-Id:Date; b=R4EvsEWDiYjFjsPJ1nBPg7VOBcV5BwV4iMpTM/YzusV9SfDVjpVHf5WOx5ZXY0ZoIN2lFLKb5IAdVy6s8UPV1HQD6UropLMf+c+n5euAGOTFJXgd/7pskWe+7NqhnOud4POcjFVHKobptHrJCmxsGIOCRt1EHzCxyfIO8VDpmZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vr3C8Ia6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vr3C8Ia6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C71C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761653393;
	bh=AYRBIAM6+n2WQSn1L76bX+bMGJArVpDS9mkD2PAnXXQ=;
	h=To:Subject:From:Date:From;
	b=Vr3C8Ia6SU0mA9hXbSahCArub9NwG7GGBcrzoi9Fx1rGA/WUjSa3nkvxCO00vpj9U
	 IBYrrneDaBJQD6YmorvIIGbaHmcdk2n4NP6cXGHBp8CmHM9dQZT30M0G6dDq9L2UAr
	 RENpy+ke8mxF7SsazxLrfspmYCuDzbLJ3LnhEWR1fFhDER+USmtkWOdJZO2QMPZWwP
	 ZXeyoqGXnvw3eub3FTvI1BpCnKxugQmEt/xC+9G3q0CKKy85MHx7jxDoPuaG4lofOy
	 X+GkCOeEAosWCb1leJJ3eJsxWsNLMVRVVtUIVZ6VyFpDjYB+1C3WFAzto7KAz4LWZy
	 A534ynTqQs0LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92813CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165339358.32520.12088703855738961297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e2f354dd52dc68204f46373510535e84261f2dede6fec4bce031c90e4ac67d
Date: Tue, 28 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761653393
