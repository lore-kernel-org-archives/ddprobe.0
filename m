Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7A52609C5
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782679114; cv=none; b=Lp+l2RqJ/6XSiWYMF1FVjyFXoV9I43lt3GnHvdNk9HLM3jZaRQnUliDybtWQEYBm/DvRDdifb83NI2VzzV3/k20bHqvVGSCFZAgIbhL54aEsXsV9jRuJzbX/Q9VJJP0uNzQzfiEZfFRZuYQZ2iaw9QMVzhEIrl0PiwM/axD9E7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782679114; c=relaxed/simple;
	bh=mMdqYpa8FT83mWv7Et6J5XwM/C3N6hJE6olFgegGawY=;
	h=To:Subject:From:Message-Id:Date; b=Mxesn67ruy07JiM5r1ZC07HnNG7kk4VzYa5rngKXzyemudsxtFWGkr2DbMFy3czzUngyimFSWEOeAKQYRR1b7w2A44TwlavXGjTPjsbWOI/CcG+IgGej0L3qipUzQAogAIaD4JepuGK9ORvyw0rH2IER43sBydFMZxAEwo9ywi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8307ij3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8307ij3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADC1C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782679113;
	bh=mMdqYpa8FT83mWv7Et6J5XwM/C3N6hJE6olFgegGawY=;
	h=To:Subject:From:Date:From;
	b=Z8307ij3r3mEKil1PkVA4UfaEyHce/Vs7BB2LZjG4wazmvuNEknOOOBGtkLQrjdRP
	 b5CP2OUlJ32ybGvvG6W/ScBcyWVoP/gUFfeKI+OB6A6iyVuKB4SyQ+iPmBCZ9NkYsk
	 Gg4NvhSZFWlLhWHB5roXbBhtSmC7BRm73UgBUOvvltAhx9WgChCvhtjgiauOqfw+1U
	 4wi9o5Q4rFoFa90e+y4DpPD5aiQFJjJo2I2SNjVnLeYoIlhyTb/xY8Lmt28PONG81f
	 11xC9liiD6bCdUpmXqr4XVEzN9WnzqFzxN03wXz+OvZEukqqQwkPeoLSj+pcm4fwWy
	 s3Ju4Aqj0KR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC46FC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267911369.6367.16733570494086097577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44903166228080d542f3c4cceec46c02899f6a22c7a0caf6aeec6334bf635bce
Date: Sun, 28 Jun 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782679113
