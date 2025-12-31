Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB672D6E5A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767177834; cv=none; b=iT9xR50u1nHlE1BSuGL0YgELBydlJAd4jY0GHbEEYHaApS0ylbwDZTYa3+EjIsbsLrchI4xRWPKw/A8RMvbI3WougTVHKjvZsFMsymO4/HmL3uMqCeJgS5Y79h87TrSPLFYt/nmpt08NuySujCK8IA59OG5UfQqU2Jv+mDY1Xus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767177834; c=relaxed/simple;
	bh=Cde/RB3NhhsC9Az+JvT+YfosE7hlgebdSaB973xLlMo=;
	h=To:Subject:From:Message-Id:Date; b=ZwWgW8EFJG4k4NYn7Ciz174xKN8Tco7sTrluzvVxw4OdCte9vfqQHzR+wZqP9c9OtGDIIeU57eRZEWn5xvhZbQn7l/snmiPKqTreYEDEzhGhsHgbJ0PPHCwuLNxEbWXpqmbVYB1esklv27F0HgPtqlsjMU/R15eNQKI6ghnrUC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9cTxfga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9cTxfga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0356C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767177833;
	bh=Cde/RB3NhhsC9Az+JvT+YfosE7hlgebdSaB973xLlMo=;
	h=To:Subject:From:Date:From;
	b=C9cTxfga+WVb+53N3sHFCbQVOIq4QShSrb/J74GCHELOQBQsn2GPzR8A1mUjHTA8G
	 SAGZbSgiq3P69ow3FNJZrs+gjZ9Q0nVmk0b5fq4F0utSPR7dd5fMVddt0LC8FKEGNr
	 3MHWx7Mq6ssDNqBcN4wwhCWIuawBLp7Q7lLFs75Ya8/lTI/OsNzw92VLPbjR++c5QV
	 VKOd8D9SCK9hzBCMA3FErARQVpSpLyRx+FY6Zcl2IrVksHyqRJOGFgWTQLSS+H3hv5
	 gQpCnBZBsIVsOAwEkpKqBdsaatuK22piz38yGYHePb9vmg8CoIfJLcZHsBpZeNoevT
	 gPGu+ul+Lu0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA2EE6427
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717783357.18902.5454645001699744479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8255c03e0a54a3dc2214e8c3fdd25874ed7793074bfb5da0b2080575315efc
Date: Wed, 31 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767177833
