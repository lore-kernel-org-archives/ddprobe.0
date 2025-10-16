Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EFE296BBA
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760649594; cv=none; b=sk0leh6iwldjBJEiJZIxSzz5wXxxL81kaveefcms2A03DQZjluIxwjsY/Ph3dads9v/kptJ454H8YLI6Cx2bN6PR4c8gARQj6NmXtWmaa41aUuDCpxJbY/QX7upRYe7mv4LcrtoNQL/r22/h94wIUBtHecoDLPpOJzHnQmk1lC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760649594; c=relaxed/simple;
	bh=3hj5B8hOGeJC1c8kWRbkEV6M4AZrdtMJERDDtTTBt94=;
	h=To:Subject:From:Message-Id:Date; b=Q7IC31arV/Pdb9cMBl+OmTHTWd77aZ9jsG1sMufBPi/2m9LpuDj/cT+hse6kNWHAwz6CYKgsp2uQ9xOvSp+oYGNoeGV5fC87guI7zIcJFa+BBzMIVjDPctwHBZn2DNDJgC03iaaxlgwEZv6NICgqEPKiVemyLGeW63MVHXr5zkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foFukHyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foFukHyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D59FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760649593;
	bh=3hj5B8hOGeJC1c8kWRbkEV6M4AZrdtMJERDDtTTBt94=;
	h=To:Subject:From:Date:From;
	b=foFukHyCE/BUEpBEb27ewrJ74+Ror0k5s088NxwM+IjWnev13mE/1dssrcZmBzjzq
	 O0iTuuN0gRb0G75lo8uVaXj5CFr4znxR5UxCFZcQZU6DwFsK9cypzN3vGuFEfDiGjS
	 XDsEkQ00sYbYbnGdRpT7Xzol4uFx0D6IZWqzFZYWeiTITOa8uWggkxqE2iEzJCwGfI
	 lyyu5epcLhuEc6eGY7JDTJ1rj5+ENgb8cXCZZzPGuwOCKq5BVfC784MWlGLGkjvSfS
	 s3EunCqk42Xxd1b0AQrGSmg0bYAIrrvFbWyDmxswMng9msjxhulXdq+phHU6nSTrwc
	 gPDUSimiBiOVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90364CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064959358.28228.10390635925262863653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c7f8a71f68aa8085b55315e052009f56213e1ca0abe8c0891e3893e7203cb8
Date: Thu, 16 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760649593
