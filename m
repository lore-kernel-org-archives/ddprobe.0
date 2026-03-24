Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC542D23B9
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774364094; cv=none; b=iU1p7f+SXoKYTIaTwqxJJmcZ6DI9xRJ556opk7EKKfE0UrhIRGnuWsp899e67m2pQ8U03uhexgDDL2b1KqB0ZhXrsRkNwln61IliPCmcWVGgu9KA8m/klT+/HmJNq2wvXGpTek1kd173aoMDnjY7ZsNSTY1vziWRackn3u90mGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774364094; c=relaxed/simple;
	bh=lO9yIc1CWTU40RSD2FHGRMmO9MwOLR1E6CsY+1qNq48=;
	h=To:Subject:From:Message-Id:Date; b=Nd4R1lkN16Ids2ufj54Bh8Pq0CP/e0dOG3m005BHtNpMRroY63nlpp+zaJTxa1nPF/K/i4ayoPUcl4ItR56GWWr9qWUi57sdcML24ZHvB9C0XwEtATKdNW5k+1HcuQ6jQZLvmjdn3czbMoKkZci0P06qQB+DlDxgPnTD7Z8B81E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+jYKGtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+jYKGtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01F8C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774364093;
	bh=lO9yIc1CWTU40RSD2FHGRMmO9MwOLR1E6CsY+1qNq48=;
	h=To:Subject:From:Date:From;
	b=h+jYKGtCvl0Eip8le12AXlepCUHr3nt0U7ZCHoSmQ6oBl2HjivJ6p9v+uiaMG11ko
	 M8CAYLShEupx3vYhC72DFtcc2m/n+hqHsIqPp72aHHmXLMj0tvGTo/8ViXTPib1Oq2
	 n0386mGyqL3XMvsPXt3ulExGs4Fr3pHeQh3s9TEe+GGmLs5B0BmHJmKTVJC5I5FPRw
	 xpS/UY9yP8cnFlcAgW1mCVO4zpnu2zUUUBm4PvhG6DQB59XXnCNuQlDYBtz2KtL0gr
	 scaY6ZimpCID+DE9/iEmKDQydA5XePVS0f9+MkSp3EOBsTFpFqA++MIBQhCD7s5xVQ
	 EyUIyWS9m4kFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F50F54ACB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436409358.30910.9293794316562551143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1219c59f17d37492302b156000db66f6dbe2e498cf8eb291391704bdd8011a1d
Date: Tue, 24 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774364093
