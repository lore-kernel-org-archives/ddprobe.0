Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76DFA37DE99
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786992034; cv=none; b=UoHLD1/78illyVMH3hDgm1cFxgGvTcpRv38A0KOBXF00X8qmQaHC9QC5t7d4QLlphBqlVIQIsQFlfQm+d9ztUghT8Gmc63eGfPiB+hJsHAEyWbLIKCA8VJubZp4OghJ2NYXOZRkQP7oQa/hiP6ZCkGzgGKz8wuojXdJaEecE2pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786992034; c=relaxed/simple;
	bh=uD0T4r7iZCwfWddqXO9wtA8W1KrKIA9UTuzQaEKeD6w=;
	h=To:Subject:From:Message-Id:Date; b=V0S0jBYM+0+Oq2Mc3B3MnWAGhqRFCCxBT+2OrfLY8x0KgLlyAA/3Kwpf2EMHB7cJoCleVzwtWvqlYbZyyD7IgoRmzn0/fpKeHYw2MTRiH9YZRJqEy+nIHMZXsjx/oDbvAu7FifxEB6xjyIzy5y2Y6q51ddshPnS3QWgqs26euKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouO9eXH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouO9eXH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0313FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786992034;
	bh=uD0T4r7iZCwfWddqXO9wtA8W1KrKIA9UTuzQaEKeD6w=;
	h=To:Subject:From:Date:From;
	b=ouO9eXH26XKg/c4UpCDz5+re8yEXfL1SGLgRi+7clqEXmWA7K3x3zZkyWq2fdZwpN
	 Zi9dqZOGYiUHqbhdCUr8cP3nnLNbKnLZoKofF33xR97JkzNPkc36s8T+bR8H+1oTf2
	 FdEQEbkYFV+lF6RLaaFbxR3rh2t71kbdCWidKdfHKMFczEUjYLZrisRXrq/ieyXvUI
	 QOXvxt6BgaIMT+GqbsYzxY8iiw4PWszK5Xyzb35ogiFuGwq73wFoMuZSi/7jlIDwo9
	 tff59hZ6bLlHCrJK5Z5nXmtMYqsOFuUzuGhAPZS4Bm0hLJr5fQ0589UIJZ0e3elEIk
	 wFnZF70EX946w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2528C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699203374.26145.15402523352410974667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62fd6f4ccaf65c6ebeb079732bbd3b356342bd28e5e31c4c8a9585efd2d393aa
Date: Mon, 17 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786992033
