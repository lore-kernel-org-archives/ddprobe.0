Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C253125DE
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717269323; cv=none; b=oKa6soLFlZY3Ea+SRYVGC9DVzj6ffnz4/yfEy71ajr1YTXRs/ific4RxFqeSFgmfn7W2NmDWi6BcfZ+Eg0QdL5XWM6X914mwHOn3pfZLjJtP13BZnU4PCpDoqjssH3ibpGPvCmtMPQVLwW2Wn78JevVjCnytCrX9K0boxoif7j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717269323; c=relaxed/simple;
	bh=jGQEADZd2tlAKFI8shHPOunWKy5VF+RrfJpj4ztPNaE=;
	h=To:Subject:From:Message-Id:Date; b=i5jIxD8SHXLjen4l600eQNByFEkSnZ41BiQlwCWHoRbqQdfpmi1jiY2wo8ayysDcgyJzxT8EydXqmRXX9NJvWHglEzdBZZ6Xr3HV07Kyz8krwiWDupORP3EQuWbj7KvIf5anJTREvXPY+PipwsQIfSAgw0WMdSy5bmXseC1AvOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5HhuO0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5HhuO0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D378EC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717269322;
	bh=jGQEADZd2tlAKFI8shHPOunWKy5VF+RrfJpj4ztPNaE=;
	h=To:Subject:From:Date:From;
	b=N5HhuO0XyimvZyxHn+PcZLoetB8aJFf/Ll1FPf1vp255bhTRNKGkcDtbUJlq0XqI2
	 lC3JcUZJQqzaolZcrqVofjD296jRR1fjTEkJGtEDmJdN0H/uXBOeBzFzk4mnf9Z9Tg
	 S2CpWLOo0g9bucW2dR9R0Grn3IXxvfbLEVY61+wpghRjieKhi8TCrhbWjdbv2+qmlM
	 Mzzp9N6NQbidzHeh+9LnBoz38RmlBao9rgLRS46jKxA3nGpK38rRE8v9p1jaGd9Xx1
	 7wkdvy+gjrrWHacG+HwM0lpitoNvloRJmHhLcOyN4T3jWKUL/EEyE/T30Gx1oKAOQ5
	 zHCspRW2xLvcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC24C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726932277.27021.6591821758329873040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58208a0bb8b53bd730120df3ef42b6bae936c010dd2253d5eef7468ae378e40e
Date: Sat, 01 Jun 2024 19:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717269322
