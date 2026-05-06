Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D4E37AA99
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778052454; cv=none; b=As/c4IiZsGk6P0BzZyPKo+Ed6CEY8Hg26dwNR7Yc7aJfo1Jlqmx5Cf79wck0q6a8pignXqDfIXhaAu8f93OWoH/7yf+vlBKJn5+/BWzBHOYrUx1Yf8XWak/aSsIf12UuoCSzAQ7+ux08TIgyOFTzNla/iXD9mGKxl1KMMpsUxxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778052454; c=relaxed/simple;
	bh=VaXJFAbjMIDvOqu5KdA2t/wXVW+1iDyufKajxJrZUvk=;
	h=To:Subject:From:Message-Id:Date; b=loRzIBgNtalfuunZ9V+5EauJKzJ4mYmeFE/WO54/2+t/5G/i7tN0xX2xGGuf2UxINLd1H1ZfxuyBeZjUemzdle6RgcD7eYrMdjHNab0Nb8wocSVWOFH997c/4a0GreQjYqrN9oJSUzMCyNEIq5QMvFulwxhBJp8wPg2E2ZboT1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcwbHuCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcwbHuCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB17FC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778052453;
	bh=VaXJFAbjMIDvOqu5KdA2t/wXVW+1iDyufKajxJrZUvk=;
	h=To:Subject:From:Date:From;
	b=PcwbHuCVjaLhRx02q6t217FUXjv4HOGmT4DCItK0gngOiToR4TGnAvAyGc7KWbb+b
	 ItX2S+a1AUU9+y9IVS3T7CB2L6YATQPOlR3g1PmWgbPWt2lmlV+CuLZB9qVGE6DEul
	 irdmEtQEwwKk1j/jgjRXQ3t99B9xPaK/IkFfIKLaNdhGMAmKYrE4zJrI4ZPBxbtLYt
	 ndSpOviuPK3OeGB8Up8y7LYgiSXP1iYoSdwxGY9WHqkQCyaZ5a/RonRe8sF37JDvQ/
	 aGl0HJyEJesoetyM5I+8T8ONga1eHN9uuvEf7MLOC18MuWUjAOUQ451Wey9FFy1HYE
	 paCXyX8yKzh2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA907CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805245368.17535.4589046694272979012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e794ca7446bc3b4c45b0727efc47c7317572bc01e15a83b7f41a3230021f91aa
Date: Wed, 06 May 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778052453
