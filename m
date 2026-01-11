Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1861E450F2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768140234; cv=none; b=ujkOZbHi51bsoRglV4uoLU99oT3+FeGJWf3NfMj8jucfqTiLgOM8ihAgLvNhCVLAHx5jBLF4I6vykyNCAgJfAX2d8UQOMWIdpsIPubMwtFwbfJaKxXdU2HaDBUSBKg+HW4gpI4Us87pyDHztlcR4CtUUTkZZ5jrSoDYaJbmEbQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768140234; c=relaxed/simple;
	bh=djBJVDJqm8g6DHC94EOmyGrG8DqKXMBTF/teydWnXks=;
	h=To:Subject:From:Message-Id:Date; b=RW6LKMItgqw7dnQ5foA9TySX8SIaas0qyj3LODIQRGXzfY0JMCAPhk5XHgJqabFh9RN5FptlEe4zuThucIoGTzp093g/TBv6h3mwrC27q4H6GhIQmNGcmmoNCP6/ucgwE1+bEdGatHYDJeWLgeE7C8no0COFTJFyesTwC9mn5Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIW+FX00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIW+FX00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8147C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768140233;
	bh=djBJVDJqm8g6DHC94EOmyGrG8DqKXMBTF/teydWnXks=;
	h=To:Subject:From:Date:From;
	b=pIW+FX00uZn7XYDWbQ+wg6IWKfY8kBxzGys/mh6btAqpYctLpm2OfJpCQkKtsQisU
	 5lB5MhythhFoJcagHESXezZT/quwLYDThyv25G58Ga6SIPLb6y1WYLiosQV2UO4y+H
	 9J7T3UazcqvjeboPSA0R8LI/lMnfNfq+XQKij5M21bAWmoA6LqAzaRdAL6uZCtahrg
	 ZThx000bnnePmLwHFl7WHVckEL9fpfeK+NqpbFGU/nui2WImEbhw4tUKkeKkzhku9+
	 0v1xvbcmv72kMYCYy9AeklETvQcDN0qm8lXXz9A+bn3CF0sVKQqvOt4x8GR4bv7f5V
	 tmMfyfnj/TSyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962CCD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814023358.31042.7149597193642224562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8298d0e783bdb79865527189ee6197c7bf3e1d5c79745e5fae5b749964609be3
Date: Sun, 11 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768140233
