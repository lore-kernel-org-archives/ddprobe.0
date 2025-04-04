Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A041494A9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743743396; cv=none; b=gifDnER8QQfPkO1s7N0ebhrniFH8RgsdKTtcL4Eg99dTcHs90UzeWeqbhfK5zatU7OsgO5YPj2GHnWseblx/ATEqu72IBZ7OqhDzYF6bjvWv3f8p/OZlnl8/jMQzbSOsIA8msaojUcBLZ//nHuLqvR1W3irrzeqWXZtDZM5To2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743743396; c=relaxed/simple;
	bh=m5Hpl720t3jYTXqrLzUZuoQAM5VCDMQm5F/eHpgBkEA=;
	h=To:Subject:From:Message-Id:Date; b=NzQl3sLK7xQDBIdPyH21Thb9Y/VLSDJ81LcczvsozHvK/uGt2KaZz0G5dwvIgZp9PChVrOGmIY6IoLjMbpTjnQboiuUIm0ihHdwouzJ3Ganq3cggXvOW3xHIlSNy9p04KQu1AVxk8dNV41gGKe6OSdFXe/4l/8EnCriSUGJp6CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RM5dHcbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RM5dHcbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB624C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743743393;
	bh=m5Hpl720t3jYTXqrLzUZuoQAM5VCDMQm5F/eHpgBkEA=;
	h=To:Subject:From:Date:From;
	b=RM5dHcbgKtHVe/va17VWJg7nURcTODgWBByORBSIIWriNtMUK5mHICv1D9YLnUP9l
	 /gi2uJqMcldkYTv+lBjqntR3M/Kj7rAmsaMr77JyKACexRC7MUAyaBdMkQo0ZAPaT5
	 yrtW+M0bPHebbuHDjsYin8J58fq2OWPh8GcuaRStWCBzmRLWKXYTZ/8y1yWb/MAnT+
	 XBf98fsuFoG710hvvYcauz0YkhwdvQYMpFXy6XJ3JMoba1L4Bb1UsgLvKrza5a87Gu
	 7zoZLN4A1lZ0BS5GZ9OgHttUUYmiqlsD3NHfxBu66+tfXkGM0opO10PUjm1xACwtpb
	 0J0sWa/9bTgdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3907C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374339365.31856.11978958308544060548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ad36177da3e5ba11d4859a3507287b15477875eac6a36a1b99fdda6c2067ba
Date: Fri, 04 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743743393
