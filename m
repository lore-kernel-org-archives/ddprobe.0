Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1DA233149
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787623834; cv=none; b=lIC9B5B3P+fcxPmkPwQdpCo84qzWfdH1Pe8yxGrk5AHidx4d0SIPBBfifZV20ze77Wb3+7ApaUNQgANjVooFjXDVJ5GDyiu07ALgaEm7TodIu2UzynkDeGtbi7AJUM1eGMn6c5wm3IueBeOXLmMDMqYyFOiAtPRvBniPAMu+rWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787623834; c=relaxed/simple;
	bh=NYSgzfhoa/EIhWRzqd9PK9jE394tfa6wKn28CrZSpbc=;
	h=To:Subject:From:Message-Id:Date; b=ZOtwG3iroVp4LfOrZVJny/kfK0v6O1MJfOdLvhUp8lFefxhMoRbjKWnHW2koOnI60BqFea7stqu/mavHmAKK2gOHziPznXlFve7DB/ZuWPSiGetvyXHrtLE6h0SKDut1FSr/riNQvZMfekZUSbC9FZZ68o5wv02fZ9+O9u110uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBSZ8QGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBSZ8QGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D180FC19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787623833;
	bh=NYSgzfhoa/EIhWRzqd9PK9jE394tfa6wKn28CrZSpbc=;
	h=To:Subject:From:Date:From;
	b=vBSZ8QGCv2Byq3gMnPxb7hcD1l5d/ZZ4NNAFjJJlNeJPVWpr20w9tQOOWlamvQ5Hf
	 4S12ueU4bvTawGIWfqjQ+3AoEz7GLvk6P0An5DzxyLVFrT7IEc315uVbQukt5CE461
	 sn/ImcYB7RUrKYcxNSHfYQMsQPeYOyjugJNEStg/gTH/F9udBizD/TbEFwqvgzC9uW
	 toP5saPfXoatxAGjtFkUIinFgWpCKZQLAjgpFyLISoAYfnNbebPhkmhMNvxxyVIovK
	 PfrAigedLMRwJ/lu9jTOLEFoKKlraLh2i+6xvvUJsVIFKKsLU9J/eA9QUmN2nEQ/kD
	 qcmhLo3f82OmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB66CC5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762383369.9594.5387568126058609117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9451fa633bca30dd54b5063e226451d28ef751a2512965a4f014bcad3bc8071d
Date: Tue, 25 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787623833
