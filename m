Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406513242AC
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786642234; cv=none; b=dRQvqvA4EebwPkEfizXI9O97ANqGl0BVDxAUPMIrub5n//TrHvr6+HY58+huS6Hf52dOOi6BU6yLnnINKnvTHO0iAxerElM3maeLaVypZwkFJhVLrHkgsZrnyhQ7JFF6wFt6q8npWLX6X3eC5FTaRnl1umI5nvZjamGAMwto4iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786642234; c=relaxed/simple;
	bh=h+GroqABxK7PisQ30oB/Qr6/ZXcc9JnhP4QBhPtbpmQ=;
	h=To:Subject:From:Message-Id:Date; b=XTROV/T+qQHb/fJP7DrfvR60d5xPpZiXs9bi7+pzIM0N+4WTWrJvcREl2tpBBLcaOcBhPp3Ye/1S0GeMdG0TeHtcA1UuE/A3memUCS/3+ZdENItBnrX2IBf8hcU5jSPxwL+VRE7m0PtgH2Mnrxo7sIVmo/0zPmSRVuHG+MwyCZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGj3PZaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGj3PZaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5AFC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786642233;
	bh=h+GroqABxK7PisQ30oB/Qr6/ZXcc9JnhP4QBhPtbpmQ=;
	h=To:Subject:From:Date:From;
	b=vGj3PZaaO6N12dI0OnOn4/U0IS3amEKyFuxufqvet72185l+NTAsn2DA8HH7ZKBB0
	 xSkvif1K23H+uXsQEOBBrfNwqIG+oxQPeh7W9rKKuzMAe0uXXqQOt1EOYjdXxPrqw8
	 jb6e9NnlU1187Bufmyfmk8MuAIGl6h0vXMxVv/6ymkAxPDGR/KNsC+JYXJ8/1+jBSv
	 9qDkI4H/HI5iqKq3Wi+RBepkXi0cyxnfQubyLoYjdXEwJe9jLsHeDCZjVpUK9y/gTi
	 DAAUtcRv8SJ+qX0k48Kxfyd/cuGvquJ1GmCBtfXR2FrmbpJRZrncnG5uzfr9T6B3a1
	 oE/Ss9ipQBWmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81AFC5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664223368.20398.3924958268238806816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18aa059fa422424a2b4706da71d7622344b66e6bb3fa2bc6ccff4b82883f4684
Date: Thu, 13 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786642233
