Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F44F50F
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749862194; cv=none; b=DSvQYAcTbq95XyxTuYHKustc0s8OiBnD5gZRH57gdMrjZ6eK6UK8VQjCvUhnHkOvGoL2g1P4lYgeSrDoGUp59czWijRxWPERb0P8tUA7wBFYK0hPFduFpiFZUMVOWFOzgOqFQFAbpBJ05gTBRktj2SxGPVFC0Ecvg5agaFD95Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749862194; c=relaxed/simple;
	bh=JMamEtI4+kgz5U6Iqfl8C8lWwP/v8Sw0qTTSsfercfY=;
	h=To:Subject:From:Message-Id:Date; b=cP+CLZQ94meQ9NvF8Q1/GfzW5Fc5JS+d9Qh0VoCsFYJ2mBxLS8A5W3R66mSx8LBueAPJCACRfNC+WDAVt6r9L2ffxpFFdfnSCq5QsKMQ3n26L9C4qmJS6wPrCQdVPAUBJwtZrENiYg7vIOn4zgsS1W6AsVRBFVP+C1MgVjBZ4EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdUyKjad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdUyKjad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44E7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749862193;
	bh=JMamEtI4+kgz5U6Iqfl8C8lWwP/v8Sw0qTTSsfercfY=;
	h=To:Subject:From:Date:From;
	b=BdUyKjadiDT0a8GnqDV5q6+QdWE0UnHxhz3ZUMT/+WtZUwxSBPvoLi7uXUh+SU2xi
	 zjw7bFHU5CuzxlEgJEL+P5ePtvFeOhu5NI4EHf2zflVQ5Y1A8tM+J3pKi88MzXlY9Y
	 CIoZBgfSsc8APNeHmgJuNTN1wMPEPYo0Bq64i2Y79pnKpHHp07ggDV85KTYmY0O5Rv
	 gdeJGCrGD2MygkJz1f8XHFluE4SMGXbaVTT/o0xDFXg1pmoMr3vodlgBloZXXwj2qz
	 MNv0pRwp15e2BAazspjJdUrMH3ZhBTaBT6p0YwMPYrYmlKVppS/BGj7HnpuU6xy1vB
	 tkPPgkFMjLL5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C25C71136
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986219357.1642.9985883010175629841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 489085a392fb4e3867449b98bc19658c3c62ae2994899320443315d611179c63
Date: Sat, 14 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749862193
