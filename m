Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2858530F95F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778240854; cv=none; b=uTQTAj07zs5q/Ce0DsF2eE1OVbDY77mypfBFwqZlF59XSdDk29Tl9nm8JnOV8xBq/4YZ6elQEgN84MucmGomq4q/Bpe6+6x+f8SGDDxmbY6ePOVNYT0LiHUWnwK0crKwdyns/ecRzlxeZWNkbPsQB2PzECjyfAs3L9xzVngq68I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778240854; c=relaxed/simple;
	bh=v7wFJ4nuFQd4ynuPDptFkqLbkNA/49YMo9/AtF8+SW0=;
	h=To:Subject:From:Message-Id:Date; b=mnjoU+2AxA9Bwqp0aBhjbNbODucqaUzZfymuf1l+N0TFsr2/IHb5ifq0D6w2QTNmaLrkfZTs4uY8gX/3eeKfsABohveioGeta55Pw3t+UX1w5LT/BOhZ+HBpjoUj7fHaQyU4J4OrauIVn0vu/wYmTnk1GGnulR4GGkQq0iZaP3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJOvjp41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJOvjp41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB729C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778240853;
	bh=v7wFJ4nuFQd4ynuPDptFkqLbkNA/49YMo9/AtF8+SW0=;
	h=To:Subject:From:Date:From;
	b=GJOvjp41YbwYknp8aYyLyJ2EZn/ABhvXanKKOjvMpHISzZpTo6a6MZNK3hYRIkUBj
	 npXji1xPwBf+XAjyeA61qTJPq5lGu6qwV7crXRaSqlNxvrmHoO3p/SIOQvZC+CoLiQ
	 gMbU4wcR29oUjRGnfzhbXQhCy9Ht1dbmAYKyeW+OhzyHPcbbFdi6kFdLtFYv5xFH/I
	 zjoqWTSyTX3T1vT+GSNiFBwx6N76OzOpZtbizCtMs48jzi5tgQ7+OQjLUyJKQ/gThF
	 xslVTPaxXOkdmNgQQeok8UA5JExDqhf5Hw+5WRyHRhe6MZcexIfCpDyjrnNamtc1lt
	 9/IY1bJ90I9JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90BACD3447
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824085369.24763.3026326018462583229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc18548f356d27941caa19b4b3576572841c9d2311e3f2c0a3f5fafd036636ff
Date: Fri, 08 May 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778240853
