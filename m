Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3936723506F
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759183194; cv=none; b=UXolFs5pIWa/snSjnpHl1X74dNnoIAHbDvpCiofjNZsWoboKN5wzq24NuJsFz87w/Rk+VRR1R6GH/VxXg0bMVBHz8YxmIQ0R0ydQdWpseHBys8puhfGDxRtWmirxP38ezDZIPi/N59YW05qjbu6Q8W6MCIFcnNZC4CMbhgTqe74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759183194; c=relaxed/simple;
	bh=2Hc6sa/XjBcWPP+07tviElLqBBTjCK80MghCiztc43E=;
	h=To:Subject:From:Message-Id:Date; b=ql/h6LaigCFMnqmzJZdcL4C4qddaTd+yEHBalatxI1eLmqX+3ZErTX7kUoYA3HB0wHywVaaW+X04DO1PGRu/kbZfb7xanTbYb7zYsrIDgMZ6DahZNJrHj12jAmMHo9vH74l6fGAQdpXulXMs5fkLbNJ3JvLFNoo3ngcGQ9kHoQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLg4Kink; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLg4Kink"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEA9C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759183193;
	bh=2Hc6sa/XjBcWPP+07tviElLqBBTjCK80MghCiztc43E=;
	h=To:Subject:From:Date:From;
	b=ZLg4KinkV9j5z7qUYcQjuJ9N+YBGbrdtb1rr7qR5uegtJ2wTZIq7kKlacTk/iKrWp
	 /y7UWqHtfQJgKJphbZFn3hnV/b6AxWI7EFpGo4uIG/4W/ur3FonWiPy6q1tWypc0ZC
	 SH9pkbh8vDfL9Bqg0qdzgBQYUm+8YSoi7g0X5gEVnrnO7PdQx2oTFi4eRACuI6tK7f
	 V5nxhc3ad7zfvACCPHq6uMo0AJ8t0MQkkhm3YvTJNfjbSQ1P/1usyPBB6S8sTEAmrI
	 EJCwiYgSbqZxBMfLoAbvXIYPopMNRfYj/Vp3LZsA6SdRZetOwmEVA8dsfK9mPg8uIW
	 T5oq06EYZMWsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96402CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918319359.4100.16711632680292882062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164d7b7735c8bbfd1670209d6097dd4dfeed830bf4af53192eda3ef8abd1e389
Date: Mon, 29 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759183193
