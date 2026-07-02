Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49845304BA3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783009714; cv=none; b=uWH5nOqqmg5rM17E7FvItIvWSrJRe8BtLIRZpHjCjny4sP4dOmcYXbFgJJLRNpzH6CtAoagVskMnI9b0q3i8xfkoWUpXGZWsIOtz0K7XTMceWKx2SKaOi8H2QOvyM7/DvfYMPkI0Q9XmB/22OVz5GvRnTaEGIqqhOZwD+j0+BTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783009714; c=relaxed/simple;
	bh=COiILCTUaC55nKCN5GvWvVwKHfGhRtFXheCz4ZaSa/A=;
	h=To:Subject:From:Message-Id:Date; b=K7wZ0K9vb7aCcTT373fAqEWQrnq8TUk/nhmcuHt73Sipumv5VCcsubfqEwGGZ4nukKtjTmPTmZY7yS64AkRCH8DrL2osIQF3ajm4TeQTCNaZtNIgjSJdtIyFqvJ+yApQX8HUusqPRdPiY7Od8Rfr2Sgxfd28y/oc3mZsonnjNYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgviYKxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgviYKxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1DCC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783009713;
	bh=COiILCTUaC55nKCN5GvWvVwKHfGhRtFXheCz4ZaSa/A=;
	h=To:Subject:From:Date:From;
	b=NgviYKxi3Cfu1rDSKr1AXuu3/hBevV+WcvEwIwmCzIZzNMWyjRyQ2dKOOD4rJHzbz
	 +ZRYyuhSz8rcWGGmBwG3Hy9pkqy5iBxtbWltcEk5NFggFSBlOypsXST3UXDm77Z4Af
	 buGm7G6KQHwtAlo4V30AdjvAhqN6hHRincGsbJaBqhMYmnTwvLCgCpHQox/dRXMRf+
	 i3JFqjdjpTraLTnuaHVTjSLK/6XQYoFikcNJND64ZWqa/TlEsrZqB1INfT0fJnOpyH
	 RLG/W+hS04q1vsI8Hy4AYKt6EVuexK2/PnwL7bsTbyT9hlVRJJ/ihYBc13GKas3JVw
	 ThHMN5mPjFetA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95FDC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300971368.27573.7445724326728086559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae24429b2264cdec8a1e898896b2a92f92bc2267627dfacec456d3dba237a846
Date: Thu, 02 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783009713
