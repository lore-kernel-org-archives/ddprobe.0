Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC2A216E2B
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745555394; cv=none; b=UEp93Mo88FC2TobtD9VqcMEPilBvcKI+UxX4mn1IKN/TtYlaHBu4KoUHz6Q7qjq+cwoFyxTBWSUw6Lg+Mdz/9MjYIUIOtiONWmy9N8GvkFyTMS0+brFsh9RHl7hw7d/iCDvLL26Yn8myIW6aDv1m/VSTnKq5nQHWcGAwRmaBx3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745555394; c=relaxed/simple;
	bh=IVEb9r40qCLzkiH+Y293ZFjDuiKrZ4KP3zbdv50XRrU=;
	h=To:Subject:From:Message-Id:Date; b=ivDg0N9LWNsT3k7cm/LChCvOwmsTgtha9WLI0hHFVJ6J4RcM0jzaUjRCU6815wQuggntXO2OKed1M5KJTz4fRkEyUIKplSkQ2sCN7a0NdrCYUJeMlWWjBM2cf3Sj+v+bScq39G2i3gzC/Zpc3orD+gybU4Bxz5HI3Fx8qaDghOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWfnWFQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWfnWFQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC435C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745555393;
	bh=IVEb9r40qCLzkiH+Y293ZFjDuiKrZ4KP3zbdv50XRrU=;
	h=To:Subject:From:Date:From;
	b=FWfnWFQFIrjiCVF1kNQWXGEeBRaXwNOK59oOAaFgqsV0i0V4H8Sts0QdSs9oOxJoT
	 sFVUmbi5294xvGBVSptWJBOd+NpLkHIyN8t+YCaBDIY7AKbO2/IPSX3xQeNgWoducz
	 Ax1wAgcsT/rwc5fxR/u7AKaE80r5/dcWfVyZPnbthwGZjUBwMk0OgnUpE2DKqeCl2w
	 mEl3jI5+eqvTTEra9TWU+NV/rA6UA76FVNLLOZWp6+53wQaOk4DICS9tzOmsaJ9Qbc
	 k15cI7BM97jrWCWsK3gB4dhYro3el9irhLO6ILZX3HOAMKoaYtofPymErvWUUTnAhd
	 PZ95d5pM5gT1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2FC369D3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555539358.15234.12077043129294386653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8a1792bf3b4560627f087a076456fc9e848495e6276da0972adc3215544883
Date: Fri, 25 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745555393
