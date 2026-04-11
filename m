Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1BB1DF74F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775948254; cv=none; b=hB7o+piWZqej3g2Ge5ctm3hibdVaBz1v7TRbYAKbKPvfps4kYJ3R+q882tWtvoWlIyllwRELPAiVobUiebOkR95RNwpaArcVhQYKUNMNNfZ6iZU/krBWlDdtvNA8kUtBTHHuNJBLv0HyvBSGgnP0JPSzcXJkLflVmx/JDdhiBFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775948254; c=relaxed/simple;
	bh=NhAsOZFiN5U+Uw2i2yRAf72kO6SmopoiA7inPZ5ZJQA=;
	h=To:Subject:From:Message-Id:Date; b=qFVPR7wDLOemh/ivKrKRB+1YtoA6ASEyyz5rrNG/mUIEu1EJ1iDUlpz5cwG9/1g2UbuBMfBpbNgkGJvxwcBbOHmhpudBscQM/6+gH5UM3k98+P7vulAY9ZH8jAy070hrE3PexyzEroDPsXP46BnXjxgqD7YunebUhjHHx7PpeY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ril4vybk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ril4vybk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8CEC116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775948253;
	bh=NhAsOZFiN5U+Uw2i2yRAf72kO6SmopoiA7inPZ5ZJQA=;
	h=To:Subject:From:Date:From;
	b=Ril4vybkotJlgFQJckIJ0ID9atb6fKPHNhFQrwzeO1Vo2KgYtAoETCTK6royKnnlY
	 JfOIqwi7Stb2btAx1FKrDn1x+LHShJXzeeOkGPLsz1dO2x6u/kZKua9IiVpjNAhZEN
	 nu5BQIExkYLg6ht5FYMyJzboilxDqW/X/5kKOvP3tkBCp49FQ5olZ/H4SimTq4zYNq
	 1o9js1NVfSQpCGyMg4YDhUC0B9F5B3oHAm/FfFb7wX4rnUBClLb+0TyHZpBfBX0IMu
	 n4rguID5ES75Diaop153r0iUq0zqjrEozpz8h18rNSfqEuBcZ3jGzKXxUelhBFHGA5
	 9osjZmO0hFplw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA11F3ED5C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594825368.19531.9866082628125264058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113a0d202d17b7ff23fdc7843de39be57132fa6f15051dce6bf7255805e11519
Date: Sat, 11 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775948253
