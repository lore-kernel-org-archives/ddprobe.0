Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6223A19BC8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789164034; cv=none; b=XFnQsL9Q4DtrubvKcpPI87qUPdUkTZfPdIheGz1lsAd5aM2rt1srVlyUxURUxnnlGRlhyTQZBb98xw8dpFlidDVoxl0RFJQwGqm8kfdbQwg1JVs1CdAr6MEDU3+C7DP1ezVbuuLfbL4hTZBMtO7Z5QK5SoRdyTGUwWtDLetuQaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789164034; c=relaxed/simple;
	bh=rtDnn8wxaA5UZtZRmLgRBODCaJlj8DA7yhzGGtBXHRY=;
	h=To:Subject:From:Message-Id:Date; b=sHmvxfpZdfgJrujlwfql6lpmxhvFsdjmC6OxUpGQ6wiweUia/E6CMOiRe3FfQdqKyZ4sNLDjSn7KcTtZ4IxTqfqtZLiSyomC6//K2y7IisjTkk6WjZ0FOEzWBvn1y7DkRNSEtKtAag98qvVXckm9cBAYX31HlFUt6WUx3oFqbPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZERgBX1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZERgBX1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD15C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789164033;
	bh=rtDnn8wxaA5UZtZRmLgRBODCaJlj8DA7yhzGGtBXHRY=;
	h=To:Subject:From:Date:From;
	b=ZERgBX1CrTBTXmKllJDkH44PjFc5OJwXOml4yEQ7yyDtC2XGrl4qBoOBWzZc0pEkH
	 uEfotZhpK64maG49pxRn2K0Yn0Sw9WUSPMgqMYaO6RnXdoQQITk6Zj+R9O9exTm9cq
	 SEb/9n4hKipMHa4RVJ4sCcYt/lDLEczMusmvsCga8G8U5absSl4imatbNuczPP+uzx
	 uw27ETamcZDsk72Mmf+DSylc2bBKXuujexc4yeSKJ/L4UWYpDGeeUx2YFa+Gw6u8lk
	 BAFssuhhys07CYeZqsg/4NS+yqGyQAt6ebDrGCT+ClYGodLO81fqYHb5WzGEEfi4Zp
	 Fatm8fjbFfuQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC030C88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916403369.32183.16593196639923324909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa7d81d509ddd5e0abb2a169cd461b72a1ab9eb1f8a3cd8075e1072b3ab41b5
Date: Fri, 11 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789164033
