Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3496B1E492
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747706994; cv=none; b=HqUYfQFZD4/r83suSFjCuJiOIv0XkB25DCB8iKvRAQqq2RvVcAOHFiEGxFKNUBN905aaB7lDvNx/8o8DuDUVKQ1H0P+d+R50pF/Exc6huzAzE65zuDaB1NUUUckSZ79rUMmc7ychmUFg65vKjpVxbK5mFI9qgUc6mv/Oq6CSFwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747706994; c=relaxed/simple;
	bh=CNId822SSq8N0IxBIU1gTdBChqhjQsKrnkOrxGjJe/A=;
	h=To:Subject:From:Message-Id:Date; b=NUt+edakhARERA3qJErsAz1Jskix3kqoEJUTZEtaVHU83gwfmIETEuVLtoqWqdeEwDUS6VJK/byok/OWbq1DgN8Tf213SMRpipASuLT7QN8eoenbqHrDRU6AqD811uyU8LkqSRq+UNkd1FYLgxEeqtKc3QCJ1pl1W4CGAtIiBk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XX+zkcm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XX+zkcm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4515C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747706993;
	bh=CNId822SSq8N0IxBIU1gTdBChqhjQsKrnkOrxGjJe/A=;
	h=To:Subject:From:Date:From;
	b=XX+zkcm+YW8qhcsxDSOJ2FQ3YYjGZXaUy0NMZPFCSKoqRgncbndH3Jg+6CFoYeCGk
	 NUhAD90bU79IgyxABkcjcmEmgG2/q4/3Kv7LvPHKNc0VlPRU3TTnrYcDqZCqLEhSP8
	 FollwjTnwI/oU2iiYdsFVZJ9iKGyf/G6XS/THNb6tISxb9Jgu9wCptgdGE013aOA1e
	 G0XobVt3selFVrXGwDtI+YaKt//UyV+AD/O68Gk9OlimqseuOx7n31btBKB36moScj
	 q6EPzdhF3JtJOn/arXEVpasFLYEx4VULUjZTPEAoyhZkFzWFxqHiyQbk0GVU6SpnRL
	 KtQtjpaeUwv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EB8C2D0CD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770699357.32334.18289907889200370566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05bd83f851931b2bbe19e719798d03ec9da881db40095a182cbb3a21713b46f6
Date: Tue, 20 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747706993
