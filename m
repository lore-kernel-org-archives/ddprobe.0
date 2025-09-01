Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10481230268
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756723794; cv=none; b=cgUt8y46VpMaih9AOKojt/rcA0YQkXX1QMgrd+eAv3QriIMGhu+0spJVvvxdzVb1kIKm5yOafTikyU2OHxe1ZTIcrj0S90geydD9uExActiksedlkmZUv+xAAcLh69Wd6pFugDe+RRuz02cQ1R76FoVCmqr2S/mvULAemLd+SwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756723794; c=relaxed/simple;
	bh=byX6aECjSNhrP58XqpAoqvCebH0iXgufCgujZ73jxVM=;
	h=To:Subject:From:Message-Id:Date; b=gg66b7mnT3wsdEcV8AvwmSlhI7oxzyEKsOwILxwV+2HikaI3qpws0SzjKIYDBAEJ6nKhmBdhqXOzr0nenGX6O2fOgazYFTSiGRKA7uYIvfmTcyR5RMtz0LH7TC4kiI59hIcftm5hrmqOKTKJOISWapdlS3E4w9tQdN1+VqN8FM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nch68edv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nch68edv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1226C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756723793;
	bh=byX6aECjSNhrP58XqpAoqvCebH0iXgufCgujZ73jxVM=;
	h=To:Subject:From:Date:From;
	b=nch68edvTTeDByenzexvGdzgZR1OkYkXxx8NAit8mDAb6RWc2ZgBkNHFIRolM4DHJ
	 W5iEUEv8GWf8vEP9OQVH53dwW+IROLuHgW4z7FzEO/ASI213MP+hiT4x1uqWKgeGeN
	 tF8vD3iUjQRbw386LGV0Vj3VAflEp5dsEzl+f0pY+8Tc1AdUZqiKf2pbayN//2ul5a
	 1FZSa2fiHRL7u0a2d7VI8C6RynOHtMyFD4qaQEu0wFdTjN/ZaiatgNqNXWhj8pjS05
	 ooXhKIb6ElUXsNRof/lpOKp3urXx8OfxGEYjE/z1IXwTAoHkIx5jEUno7NeSMM5/iV
	 SGgoUmUn8sURg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E516CA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672379357.15478.12674786162068412313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9887fb7fecb52e8c93543c16db3a86798abaed7950ab56e0b721c98f67ccdf48
Date: Mon, 01 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756723793
