Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCA5179A7
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752380994; cv=none; b=NTFsl6KddCvpxmPRDRHoGbLHI0ireM+IO5uTfx9Rp+1Mnjr3z3Oh9GK3G9yBTbTjwAl3P1cyczwkuUQCYwB4DNqQF5txcxv5luvgRydN4epKPcWv9kzsmho4qRollcBhBYqQ1pDk1gQon1PaGhuarmZXfKaHEK3mJAEaYlyJJuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752380994; c=relaxed/simple;
	bh=oS2tjaJ4752izQa9R24O30eHpmFM57I0lDCMaN85ajg=;
	h=To:Subject:From:Message-Id:Date; b=liW/MY9TySrwx5Fl+j1MIah44+DafjJTLq1ojjYcGL6RUmNVfQaWpkdwvVoNKDvDgvnzduqBX5yxAqV7HIec1wh6jbAciiBeR8loZMAD5yTziI+/S1KZjsCBappLhFQdg/fnHypnHF4Wo5+hiufEyxtZ9mDy/PJLf+RtuYiXB6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gI0D/zGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gI0D/zGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15A1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752380993;
	bh=oS2tjaJ4752izQa9R24O30eHpmFM57I0lDCMaN85ajg=;
	h=To:Subject:From:Date:From;
	b=gI0D/zGZpw6TxInKiEb4Dc8DhvicjW9mJMotMMGK67Tako9zwQMutiEbu4MyJd7wX
	 jNSTave+MKgrHcuvlkDngWuFguVAZ3xOYvykHHfZbZxgjXMaPRGbD2HTZxOeQiSIB0
	 abzP9oSsJbqybLfyQ80jxrdXAp7jmtj17vwRq2jETv4T1BMBZBD7Zo07UdipOnq5e8
	 /OIk65p7diFPjx3xikrSzgP92qan3bKaN6Kk7i9tOZ/azjt+FL2YMW8OP8WFriVR8w
	 xUi7Db8jjmBCF/0Hvc038S4nnlMEoGfyDHlcoAtFparpqrepIfbLkNYphzNaBR8xZE
	 rWqOhhFVn7ILQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F963C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238099358.30967.16767112893284107546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5c4243e7885183b23b55b9ce521a138efafef58d53564c73a942688791c691
Date: Sun, 13 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752380993
