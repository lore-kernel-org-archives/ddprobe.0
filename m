Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222281E1E1E
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757314195; cv=none; b=SjdngEum65n3LaG83sGn15YpLaIYRp7NYwQaKOtsC1kfvm9mxP/Y+6aZHuhh7Aq2eimBwFn1JKyHe6Mja8ZaG/9CDPcFjw0AZRbTbx8VyLH7rJVTtD1EpuojIJ337R9+sPQr052JPsKyhjkpAjgqfRQJquUzK5tTUv1gZEdPByQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757314195; c=relaxed/simple;
	bh=/7Px1gUGBKVQ+87q6if1U8HmIF8HF+eA5C6xGI+zWWQ=;
	h=To:Subject:From:Message-Id:Date; b=EEsQ879RIgTpzt/syY9dEb3uQL+On0BsfkgnozAmSTj7/DWB3WTaNnGLZnYaMYnffM+6GSNpeewxU/14C4K0RMlipAWqepLl4bNLf6sNVPS+fr9MamHmLfLck+tgS6UQ39kPPztPp2RDklfIF6bo6kdVoUYEgVN7vKOPvyIRxfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sz0Z79Ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sz0Z79Ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ABAC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757314193;
	bh=/7Px1gUGBKVQ+87q6if1U8HmIF8HF+eA5C6xGI+zWWQ=;
	h=To:Subject:From:Date:From;
	b=sz0Z79UbILEWU9I6b56MegPDdVGZuSWQI+We9l9ZTjzjmgU3IgZvIVKhbDPFl4JQw
	 XGn5S1b1RnhHhuBWI7vCxYXm9YZlZ/WDtOhWa2AQ9W+vlXEqiqFHtllIQtmChOzwzN
	 K7zoSuggKy+3PwpLsPfC4KgOfIlfBYpG2Aoph2ZaAZ+ZWsg6cPG/TLNmabW6rftb+A
	 4trrWJUoSwd9VCSWmekE5a+/3e/tZ+HhtthHWrXoHZ8f2ry386xdnYyrVbjCWrcnLE
	 EWCnNMEdnHf3aieBwPuIn+lXf0xDsRa3oqkBe9VBOofI8OZ36Zxs6l0FaegJbQj9GB
	 Ugwh+22F2eVwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9519BCA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731419357.11206.17602237631166187462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4090d132e6684aad241a75cd26875ce1e80fa546fc5bf76e730e76385ff5126b
Date: Mon, 08 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757314193
