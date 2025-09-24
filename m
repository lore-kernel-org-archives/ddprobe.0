Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BDB4C85
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758688194; cv=none; b=lqRefXB6vtWt75WMhFyCIbksGad7iiT3ON4kXHuFi/td0T6zFwvivZzV8dCsaWWIAGCii73XC0nss0QYmjVHBl9cRwFKqiBr2o5PrgQZkjFHeiuCHoQUcp92N2ACvEkE8VOzzgOjn6JSloMHshGnv7CzZ1qSelkzuqpMel3nOW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758688194; c=relaxed/simple;
	bh=HzQInUXt1hxw1WY6MQuxcuIHbMpMsm1KDbsB7tP8HQ0=;
	h=To:Subject:From:Message-Id:Date; b=A0BtW4Hwpn5SAwsfq6/+SKmqQ19UDzYc5+eMquKJPqbcWjwEc5ONdcR2cORlLXilOm6Tonr97459aYHS8cp1exnyYnP/ojJDsJKiQhT/s8iMFKN0PQG8YeiRvQj1ckyY8Wi4p+podHFnkWVor6ngiGikMHYOYQW1AIlATJqjbqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6ObNJgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6ObNJgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4959C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758688193;
	bh=HzQInUXt1hxw1WY6MQuxcuIHbMpMsm1KDbsB7tP8HQ0=;
	h=To:Subject:From:Date:From;
	b=m6ObNJgIX4iprpIpkZmapNSw4bR/sOILv+4gQMnSb/pY1pQsiLMHr2fGZpZgJFbNA
	 LrAvCPPSV9/eUdysrPom79Gy2zxC/jrjMqKuZyh2wvbC9LOAmAHVEB0p1raf52CJX/
	 YY8WZ+gGyNmd3yLrJhWH7lygFmIr1HL6SGC+wtiy2LPB29bepiESP92GJmUY7pD28n
	 TmUOFVmvDZYYxetfWr5ps998gdJ34YFzcGCBwHV/onEg8zui6vScTKhnlb1HCKIdsh
	 D95lVi5QDETum5ikgkPauLaOURPCEcjKN4ArUfY4ycZKw38fHADOrTK2NLYiB+EDR2
	 Kw/vb2xQchJMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF0CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868819358.14770.3414712891102117021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9049a61cf7033a855ff60535edd3b6ed7acae243c8bf43de00b65543facfca6d
Date: Wed, 24 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758688193
