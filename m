Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A31E179BC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717524383; cv=none; b=f9eqeDCqfxoJZQ7JS2UMEjT7UqE6swQITdZOv/lmgpvwucpvGXP5wPAJoWUVNOhoN0T8uBucq9DPsoBgEsk1cLjKgWIO4qZ41LcHvDJX+lPPe4H4sK/4ssFeXvwbs6JjGqtGVeNZuzGZv33lZ20wIH/aYLqYB/SQ72dlP08KDbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717524383; c=relaxed/simple;
	bh=lt/IxpxHLzMfLHEuGBd8YTvIDnZfDwh3SF7Ybq1D9Wc=;
	h=To:Subject:From:Message-Id:Date; b=okxMHtUyksA1nwzefDxnWe2RCmFKXcTXjuCgmnUBpUjw70CxNUEJVq022quED0ep7sNBQ1VbxDsEPt3BGFa9465j+vOOZA9SdhmeIFkyG+C32xkDdyT5fQE0zOxf6N1T74/+jQdzR1E420yNoRq+c0cfh5LSxanE9K2ruJ34mTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHRxsiMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHRxsiMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70E9C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717524382;
	bh=lt/IxpxHLzMfLHEuGBd8YTvIDnZfDwh3SF7Ybq1D9Wc=;
	h=To:Subject:From:Date:From;
	b=FHRxsiMZv9x1Fu4MeyROuuTD7Zw1N137jbXU1QWktkWZuWne9/+kYTE2w5+tHN/2V
	 Lvh9LwtfawLgSJIOCqRlgB5Zgmylhq9BAHbJGNY00E8ea1IPKjH+OplNLS2RTFBERK
	 PPPww//fEsSAAbraJqRON2p9IgpTDklte/C13hl9jB+wJ+LtwduQShfeWeUvoU6DA4
	 omCtez9zWhoVxnq8xJV2UvDyleGcpCKqKs+wrJLv5GPqZnX9hT4NGqMQhlfRFEiQaX
	 erzAPKogrpNw6V2l3j06sH1AhA6aJcCBftk/cWdjhMsr+4tbsc9EVMkbSQBlS3P+NA
	 Q4K04KHelgLFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C04E7C27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752438277.23974.9691081245101972102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3704d4ac11e99308b4d61ff67f6279ba7f86f845e6c3963154570e9997889c0
Date: Tue, 04 Jun 2024 18:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717524382
