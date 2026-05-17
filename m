Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B88175A9F
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779024634; cv=none; b=n5mvubWoA7X87618M1fWtN4afLclDkqFq34XX1n2y6YKEhZURBmEhEksq/Ppk6bYZejVnuXFWy1P7ps3Y/wPr0wMW4gB6B8kK4d3gSVCSRSP+2bc6sBwyoavGY2FnoljlPuOqFnwKZSC+Ntp6uHlDoW26vc6o8NVQtFPEYV8s50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779024634; c=relaxed/simple;
	bh=qgZqoK1hoUdHDtjlItqhQKm37xQD66UNnmbiEKOIQtQ=;
	h=To:Subject:From:Message-Id:Date; b=Uxq5MhdbIL4ppZimTdC561ZQPAOeJZJN+RDX0uPrXndNE31q0GFX82DXhm8HXCbWLTPDWmEVPxdV4bUeUSSlJD6wkHxTr57uYidxAbvZgsrx5268CgM5KlSeBN4Dr5shvgh8wXn8qabXVoPGqQToMGPdm7jvoR/qYaDzCsMZNWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ke0QUajR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ke0QUajR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D407AC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779024633;
	bh=qgZqoK1hoUdHDtjlItqhQKm37xQD66UNnmbiEKOIQtQ=;
	h=To:Subject:From:Date:From;
	b=ke0QUajR9p3YGu7E2eKjRqQXJfuiVDN4Q+uBztkmxg1zGVnHNW6fILrNCF8YWRlfA
	 mbhkV/h/qkDA+kEloUvJND//G4qxuTEYYWqGy+aKmxtyPdIu3ZKY5WYqwT/Hd3Vapw
	 K1vj/U6i7UNQ/T6MMMQN6fQQ1bta/OFI2jKTDDlagibcDvw+jQnBbnhytBXIloN+C9
	 NhGLS+nWa+J94OQ0z4kuY72HnIst1/wBeWqBvzgTYjie6vCwufW3sTNBdOAqxELMiB
	 WTPGH75Wdt9ZW4vnTqdtG2YTD+zoRvLfTPtfU/lsHq6ACFBsr8FWCcSJtk8iTZIHF4
	 K+Gs9MTw7g4Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFBECD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902463375.16547.7475867028574078118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7a19dbfc17b6b161b8f43f512fb17ad460f4e226eec580ee99544063d7ee73
Date: Sun, 17 May 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779024633
