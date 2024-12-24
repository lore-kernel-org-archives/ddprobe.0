Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A30215D1
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735006554; cv=none; b=TvKj7nlzgPVyU4VJSFyww45nW0DJOwjylf9j9cZHfjYdkAL1obJTLyMZM8WFfnr+cvNAYyWYq3f2kK+9wtDQLlobDqYRUNMMOqt73CmSV6uFfAQYcP4tyT0uoi1+h9k1BUQR8rG4BocYuuAN581uPg7cPmcSBRqlhyA6kQszc0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735006554; c=relaxed/simple;
	bh=hf372k9xiJZHajaH/XB5pas1hMACd5Z/znWHB1Puuxc=;
	h=To:Subject:From:Message-Id:Date; b=ZoqDOK1RNegIdW+5ANB5dKW8LBKkhTub8dV/5O68H/zmD/KGGamgonleS5YFMIR+hzpA7yGb/oVANp1lXvhN1nMyDfkCiD2YN/6qHuSRdkp2tg8w82lamNOS0UX6ngJsyNPAQ4Ht0e9qS1pHboRT/G6Sm8iDc7ru1lflKrQBqTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaSwLiwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaSwLiwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B287EC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735006553;
	bh=hf372k9xiJZHajaH/XB5pas1hMACd5Z/znWHB1Puuxc=;
	h=To:Subject:From:Date:From;
	b=LaSwLiwBRI8Ujjk+mxVpHQl6rSbPxn1jR+czArt2upa3MKPudnYRuO0lXcm23/S9P
	 p3kBGD8tCtuM9/tD9fuvCE0GkNHlP+UwCNgHktwg/7yNKGd9ig41C7c3vMyr/sUhs6
	 TFEURGqClOdqTv77klCLStuZ2KOY+QrhVyXdwl2zy5qHrJx4k4ZM7MrWlk9DdGvrqo
	 iuE4od5JRbRrcBxscTQB032M6y4KxPXkCLC5wg7hUhqjnKUbRV9SZV7Y9H52KPKS4D
	 ZQDGryKGv9qPpb3kZKwuggpwb72jqvwzWsDjWcvlFibeysBbW4hfebYpCTtd1J0PkB
	 ADdWSAqcVlWvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3B7E7718B
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173500655362.28745.9179066987696178535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d17ee24aa153b364931ba1e55334ba0fd48e55359f4f9c711cda5b7a085008c
Date: Tue, 24 Dec 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735006553
