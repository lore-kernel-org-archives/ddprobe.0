Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F49493639
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788285634; cv=none; b=D3vTszo0gu7Tpbgb4S7D/UcQ63NYIikqBOnEu6BXBMZ2U0GwWQUdlH88F93icJadfwp8LMgQjOAmUiWitWapzZdC8mmsYQfzI1iKu2CbkpWeSCCXc04zcPwlLcRU7lPWiZytUrAlEr1rwBARd5DBkg/w9WJYJrWTMGWlB3hT19U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788285634; c=relaxed/simple;
	bh=jbwbjV9395V31PH0BNINoD9kppgJ0UqH7HNTzXay7BA=;
	h=To:Subject:From:Message-Id:Date; b=fSzy44JpwcuLUwEu0tkxGU9AIQGcRa5fgX5IbdMZUkdRfmGVF4941ab9c4loe7PW6gYlv8bTQ284A1C+kysZWDZY6nklCOSnx42ftli4xY+BsaVoqprdTVycwQ1CWAWmYwGg8yifp4pCTaK479vX/ffghZaEmmsvs7X8iW9RKHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0sum+GO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0sum+GO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01F6C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788285633;
	bh=jbwbjV9395V31PH0BNINoD9kppgJ0UqH7HNTzXay7BA=;
	h=To:Subject:From:Date:From;
	b=p0sum+GOdIMptzfrtylzW+RRquONZSfONNbIXZtgaSMTBmSnacXZ9So0VoK8X5laK
	 OA4KZRyid3JOh9yNmNMeQv4cSiQM3Re7zkGbHOEAR+mSCVrIPAfdLkc3zLKc1BkEOm
	 rEYzVFzyxHqkOeSOjqCq1VK8oAOIJ+QE/LCqWUTElvICieYjfKrGsRdmwdyxTsykzq
	 t9aHbAIMMdNg3sPZ/iLPYn73j+a8craDZ/56o0lALyk4LPQ6xeVffIcHHCW0QoGiSb
	 TWkUXv49htxW/6od6dvve62p5ooaPqAnwnd1RqdBl9vGwaL6zmYjZSlrckj61zJ6yl
	 UkF6WSW0tSMWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE25C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828563369.1391.11644758211279119096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72855352a289598331e6d07a0ce9eff335118d54372a02b1e2d4988be556721
Date: Tue, 01 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788285633
