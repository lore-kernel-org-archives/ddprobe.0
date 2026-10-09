Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535DB238150
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791513634; cv=none; b=kTOdEzt7V6HjI4Gy5MOutlDOlQDh1viAdhVlTu4im3kskXbH4ETo3fVXuv+or6JbwIlazcDc7Ak3R15K4tF2+Sick5uMmRCystvj9DwqXnX3jQVk7ZOvrt0h4nczt3HaNYysacbm1VwC2YifNyM0rMrx1b43CpgTwo7cDT4gzw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791513634; c=relaxed/simple;
	bh=kpaWEtJ+RkMLkjaEVFvQJak7xhPA5Ga982dwouQRSdo=;
	h=To:Subject:From:Message-Id:Date; b=acs9yOASEhIccDuYeWrTmhKMd5dJDJzlo6dk5CmL3gjGmNNSbVCscwEqxkTf8poJR24ARPvqbv6HAWX80u/+pw82mi93zN0LiqjBZ9MbPgfR7WV80xKPaW8NXg4G4QYN98rrpw8zs/H5VKG7ITC4bIdtcvMAneK4KTwkyA+7o8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGSjsziH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGSjsziH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D265BC2BCFA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791513633;
	bh=kpaWEtJ+RkMLkjaEVFvQJak7xhPA5Ga982dwouQRSdo=;
	h=To:Subject:From:Date:From;
	b=FGSjsziHr+Ctrhu4iICB154EyL/yNp2GGygFQIbHpFjDE/fQaKiRL37kx9pl7POLu
	 lHjXIHbDaZWykAKGwwcL8zbNhOtTfZBNCfYTjOmOx34onMlHVomJMg7kWFyFug39Vk
	 6RE158C321k72JV07cAAPliVswqsmZuI15b1v5fBSbyCLB6Q9j0Ayj7UTnaJVDrLxb
	 GLjZ9Y+sNLqmBEc+0/oz+Q+7loT4oXyZAYwWtgXBXI+6At3idl1KVVqjQC4eYajwat
	 q8PY1P6SFIugMTD/U5afuomH92/Cur2fFWaSS09BElDxbAaroyNPSJOg1n/KQrz8eB
	 Noux4wSJbpf7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0F2CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151363369.2433.14069832839665388570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf30c5cfbbdfe3272f62ef810d1616a20923228fa1d2429f466eb083a3c7306
Date: Fri, 09 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791513633
