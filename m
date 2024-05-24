Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51778208A1
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 07:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716535403; cv=none; b=KBOu+0MCoelGkfQ82row43U7c/4+/qlBN3fm6qeA5VnKjdt4yAX4FMwd63V3230Wq1HZ09asZPKCfZyswfDHP9LMvdzM0y7LkIPj6V//J9YeArancqw+CLLGRDf406oqteD1k/fxjCQjYHbRzx/9C1d1CtMEI6tZR9DCiO0a8II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716535403; c=relaxed/simple;
	bh=hkILzGDE56MnqH5DXdJ8mgSze+avEhQMHNGRRfsitsk=;
	h=To:Subject:From:Message-Id:Date; b=m3J8twKwxw8v2lUsUw10R1eIr7C6VV4BiSnlOXUKyZagF2BFZFFimF9sGRVMHIfqjzRE8tBzRz1CMoJPbJCLbpCOLfxDkPbVwWyJm7qCB7PDRpRzpbdPq98jwPDlcY1hhObJJItSuVl0jRYwGi0r6hGUgCThLTRBuHQ/9yv0AHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMgUlhky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMgUlhky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E2CC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 07:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716535402;
	bh=hkILzGDE56MnqH5DXdJ8mgSze+avEhQMHNGRRfsitsk=;
	h=To:Subject:From:Date:From;
	b=KMgUlhkyZf0/gP1GkMdfTsGnPX5b8Yar2GbqsrU9ofaO4PmkT6L472iQvwCdar9Wc
	 FCMQp9xNf0HuHEIR1FWqLqkp/Lkh1PzHugOvHsvQWa8l3sdwmOfMPZgUMu/jl2Ce6d
	 k12SGzR+ERGleg5PvnK4sWwJ1bnEZUJ128lZNv83YTTonBdX1tZ25Jz6fGKKPXxfy9
	 sVBieGnEEWLmQybtv8PdOI37+oh4D9Vk+hCB/JOsNY9K0dzqeKE+Fys4bRvEjP80av
	 p/mdgZrTqsTWzENPklVv8zS6rUiMhj9Qp19Kd+6MNaY4mfLj5XeJY6DtYNGqGqu6SN
	 xB9ACxDEuEASA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEC6C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 07:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171653540282.7624.4207311435069389083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74503ccb327db27a853061494bd1f2d02a637030ee6e838280509071bf75d896
Date: Fri, 24 May 2024 07:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716535402
