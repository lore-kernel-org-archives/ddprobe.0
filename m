Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4241F417B
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746613194; cv=none; b=K/ffSunNmzCN6OL5VhkNGebHu1A7vY5+5DcWaGjuYEFEzNbMOT6QZCZAYR4JF1t3VaJyvaYZcDBjz27zMposaDm3JxfgBxsWZw+DqwgUX/EqikXXrbd1yrQogEepWaz6AGjSUWsgOhKMTqhM2rV9FPseKo3gGHXqfbXKJh8gyc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746613194; c=relaxed/simple;
	bh=OBDAwsOE5hA8KeTyK+xuTZ/pbsk+KlfQhGjXtwYmdLY=;
	h=To:Subject:From:Message-Id:Date; b=R4knoWoDfAShc38uvISNhZsh8x+3B5KYxJEMPReoXQa6HiNRb1OHxLFuvlukUuQfLElEGMwOoo26hRYBDrAAuEdPLi/TEvU4rUynO4E0hOBrvObhgmv20vcXTRG3WBg27KmLiyaYYy976Vsc/k7I5hGXDb3PIHZJbD0JsJmSa50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNL0+foL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNL0+foL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C48BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746613193;
	bh=OBDAwsOE5hA8KeTyK+xuTZ/pbsk+KlfQhGjXtwYmdLY=;
	h=To:Subject:From:Date:From;
	b=RNL0+foLtinSQpalRJGTRLiJvF24F9cqeSgOpOaeRn03LtsMKDgbB94hdjKv0Qd6r
	 q2xTTR5fp2RJPqUEkNzf8cS250wdxYIUVrYN0LaZVcBbuTcyicdl64Hv+MyLwLLC2r
	 0pUkMz5Xx/6iTNrKa/ubLqmjzwTG2OkOoFYgHMQyTOnZrIJsWtusM859Cz2ab5wEj2
	 uVRBBYyRTPz1HdioVKqsi+AYHvE1HhG4SbsIFMm0pZGfaHQImgBVkToji+y623nGwt
	 xm9Akn/mJ5wBBHYR0KohCxgv/ZA4AZbot/ShrKQVz76CvjpZUUIkAL9t2IErDq2Yp1
	 oJgtGxgHP03jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E43EC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661319357.15734.4946827335449121268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d39290575ba1c1ed1f1c5f1f2afb80f0d1143b937ee627b7e5c6b517e12ec3
Date: Wed, 07 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746613193
