Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECFD19D07E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775253933; cv=none; b=X0b/1wnAkOI+/kN234UtlWk4ZIBBVzPLCUM/RhY9gZ/g9IKjZbXZWBGMCAtSwGcipKwf7Q+K54OzcCMufB+YwHCCCOool6BonD9cGwnQwxWSiUvIO46qWHDQSuIzmokK3fRNv83GNkDaq3e0mZc3qj5TVQP+5I0f5D6WjgkGDpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775253933; c=relaxed/simple;
	bh=/3ppTpUW647HRL+gpKphLxJXC/4Dw/wDoQgB5kaOlIM=;
	h=To:Subject:From:Message-Id:Date; b=ct9CkDoswvNs3rr1VJi6b/ljSUbUIZoCAsNQ+qOKyof3yqRW1pg1tjFWVTApf0HD2aKobFIn1Z2F81OSiyhWO9A93mkoXaViL1aFW8xFppF/ZS9WdVYkIlKAEOsfHl+h4XaBLzhuuZA4TXej47DefTqJcXSOs7k6oJqugvo67LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhTCCvtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhTCCvtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7DDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775253933;
	bh=/3ppTpUW647HRL+gpKphLxJXC/4Dw/wDoQgB5kaOlIM=;
	h=To:Subject:From:Date:From;
	b=WhTCCvtuhsfjgV3PcoiLoI+DQllbmV/hYAwT7QyJS2j3pDy38wpTuMar/x1duIFo9
	 vSUiJfYFbw2XCEo3EiycngDsjSOVm6810wDcj6pCxoz1qNyaJs6eFIZv5rn0iriJOU
	 KhqC4stGXW3Oyt0iL9jxc5T2VwBrHctC7iHUpp5Gz3xD09/7ca386zOYgQapV5BnJU
	 QOhj/IXxtNkaC0yaxkMLS0aj1Xri2MxrFfLQabMeSm1yeK5CnLZSuoFzHeQp+RVhYj
	 Wv7+tGAEBLPvJJ8PacNWyhlOm5ju8h/ICjK9POWglR+F3anrhC6zM8MBYeA/u0m/z9
	 aAMMb4t1Hh6MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC255E88D6D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525393369.22632.15019070925760691128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1651dec83fa9f1993693971bca5501822573b2db04cfc5fddaae27ce3e55b406
Date: Fri, 03 Apr 2026 22:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775253933
