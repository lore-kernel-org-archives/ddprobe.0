Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBFA212566
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762506594; cv=none; b=Xk9Zwbckj5Efx9cMimEPJI2hM6hilqRSAsNyk7zJuuY5ERqVZWs41EHV1Dk/iI1ha4jK8Ye4rJ2VN+lrIsN6HSWBe/wPUNJr1DpPUBTI/OUGSU3QXpOJ/904GbApLnRhMmzfGzAeKCRLWNuH8eUjMalSy69qdNiOYqwfEpBii3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762506594; c=relaxed/simple;
	bh=17+ZqL6OpHhgm8zU3ebEZ24tCS0xM6WwtOB/03jKaHc=;
	h=To:Subject:From:Message-Id:Date; b=YafjFymzzn0w1nHsTh44e/BOjaqzA78b7oKsfTdIjdxapSZ8NI+BTvWKmfAQLNNscSKnHPp1Rg2OKONdBqIL4KrV9o8ocFvU6xOH7TTFc4tijZtk+1xZ87ne8D/1vgu72ZlJOT6yEA2PdbV2Cyp7VdtJv5l1i4LKPEMPH5mwmuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+biX3zd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+biX3zd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B74AC116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762506593;
	bh=17+ZqL6OpHhgm8zU3ebEZ24tCS0xM6WwtOB/03jKaHc=;
	h=To:Subject:From:Date:From;
	b=Z+biX3zdDa5UgRgpX33o4FRdg6ffbNeusAz2ZH44NKed1vowhiEsuZIuDXWwWm6P/
	 R8lf3iM8I87BnX0r+6R07ZqP3kF573yCLad+SbtTx85EQbh+qv7i8de7iskmA+tKJf
	 W7F4HM9eAm7zfeXWph22DFWIh+80aTr6guUP19lZ8skWVYAPyHaO5068zEQZaPavgB
	 D8WcdtnlvKV5QblWUfBfrikXze17Som0X5/6Wh/eYq8qHcgLuNxtFKDZT711NTbA9v
	 wrjnpdMtikTRYsN+IxTI2GlCpORjhy4P1X7XFmQoITjMUbLlSstHa/xTj1XzCyclXV
	 Keup9pPlJY+VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B6CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250659358.29104.12138654839928658754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d39d138b1772c3bd40789a4f20f8b815c500e1fe7907de7d0a2c81bd96be8ec
Date: Fri, 07 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762506593
