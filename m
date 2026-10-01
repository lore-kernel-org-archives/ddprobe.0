Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8EC175A62
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790820034; cv=none; b=EzzmgTZlIcYqovfvIfwAqpRdf6KzlT+OgsQpmgLSzbDUeDjpaWz9KihhD3Xx4pXXfz736EdmPG7KecB77GILj9Dt3LyQB4awBfqcxammn+wOcdHTlm4ocFelvO4mEvV/uzugP3J7bzwIQVQ5rXBclaj0yFAWyo1nR2jDUtzLB1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790820034; c=relaxed/simple;
	bh=6JQvamA6ng3KM1HBbZ4lto2kqwJzXHx7inQdWjz0YF0=;
	h=To:Subject:From:Message-Id:Date; b=a72/4Srkql7j8Gkl5ErNa6a5prxizeSuUU08vc/le/TYGWIULuk+xNCYkUJa8z6zwTXIjNVNhxmdyIQUOFUQdrVgLocgIzfFo+wrWvnvq9jdSjq/7LjuxiKEkF+/BBFoSEUI2QjdNvQCBBV3814cTjqC30ojM3T4sA7bcbpn9c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJ1T9+eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJ1T9+eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CEDC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790820033;
	bh=6JQvamA6ng3KM1HBbZ4lto2kqwJzXHx7inQdWjz0YF0=;
	h=To:Subject:From:Date:From;
	b=aJ1T9+eu4w9+kMw8w8981RYG9RydTOHWtW/V2W1nZrspr9oj2Lrm1BCN6165jrpF9
	 mtF8YmAKAAYbX4G0XBNQHcpuOQppJRRZUpCmbwjzHH/7p+nhudLVuO6p1bwoz1YgR0
	 a55nBRDYr37+QpbjJKZ3Hvgtqhnp/DMVACi/nBNdXSuRNNOVl5VR+I4pYjQDU1yE3W
	 22BKiPk/VH8bDTtkBWSqB4ekIcJy/f9tsFibRRjCimANTk36Af2NkDtY4b3O/PPp13
	 fzfqLqjSNSTwqXZwEfD48wONdf9tUa5btTKqMWsQHITk8Xd1DDZtJ4kKn3rgYWs/sM
	 1uNiRmI7oSDag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9B2CA5FC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082003368.12468.12753499904258188107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e65ee18ff340e5f9c9e122f5d50e1390757db5ad699201de262ddf53d7d618d
Date: Thu, 01 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790820033
