Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8381D63DD
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751309394; cv=none; b=BnHe0M6feCO4QXoJNRy1aUvbUDynJgn5GUG/wUVU+OUN4sarpcoZNUR2N9AixlNfaq3eq91Y7VtkKwmbguP46A0/boQ87U75zgXnUPuYy1ApyZuJ+rq3oz3X07L/qK8pPoZMKdXhUUsLGgilj16OXgFrhCwDFC5uvIPxjdLeMNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751309394; c=relaxed/simple;
	bh=ZhUGH4IkVQJQ+lIxwN0uHb1LiVQKaPRhMzXgq1tOsKU=;
	h=To:Subject:From:Message-Id:Date; b=k1Px+FI1T3TY7N9BVJTxMyDpdkkwFL74cwF6FZGfV0L3Q5iEsF9bAwt6Z8O7zzm785Via/pyiI19ZvaXOxKN2TaNMYoJ453JhodKi6MKcWFH/thifV8mf7Qk4lxH6U5zzDSIuG0ZOPyWxbCmnBUlh2zIrc7Kl4Y6oFFvAVmmQB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkdvh97+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkdvh97+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F89C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751309393;
	bh=ZhUGH4IkVQJQ+lIxwN0uHb1LiVQKaPRhMzXgq1tOsKU=;
	h=To:Subject:From:Date:From;
	b=tkdvh97+pSsxPVA3WUC9f6RfdWmazX8gImSCbjsZr6o5fwk75C9h/geuz8FJufzy0
	 qYeuqDAFACdntfOhtolIc6gZy2SKsuIZ/miZmGZPjNmiQI1sSAnZ/sC4gPJ7CgSGNz
	 pf60z1i49bC5txakkm0OCF5zL5FcZ22koeIoSwTc8wyIuM1J4St282NqLbahbEGIlU
	 k02kSaebKRXUwsTMEp2uqCSNZoTiHJrCwWoKjwQSAXSdqFOARFQchCm8yPITq+cR+R
	 kkJR9NHxrahR4rHPzrzXlwGxJLQjcIaLS9tImcNxUpHRG1V7uEA4NuhMxK/mRJ2wiF
	 sHsoDdy7IIWrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AA6C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130939357.32527.152381493352163205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e094e61a243bc4a89782074bf71d19dd0fde708981cd62f813c641f618acfaac
Date: Mon, 30 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751309393
