Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131462E5D32
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757317195; cv=none; b=lAy8HmYdQzArzb5gzbBGsS4BgL1mgT1Uahn93RQmhj14JvYgZ6q75WabbWEArqepDQ+y/9ZyTATCzdf8naqrukT8DYx3c22ncDCVI3WkXz3rA8F6QZXug4otAg2j6+DdmHx/y9851iEgqIqke/OwENNs/RmT8+0Rx8OT0xBoswE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757317195; c=relaxed/simple;
	bh=+myda1TO7UqlbjCydxLyrwdzePMrEiAD/wWihLWSCds=;
	h=To:Subject:From:Message-Id:Date; b=ZxFDi1+cyEZlobKpYE53RcTcA6oba2XpS6cHm06+IfLEyyUiMgaDxOqMFI1E8ZeFkyg2I9fthvMIAyHDS/H/t+Wir8WGQ3OykSI1JK4fSdn87Pjfu1rDADSr9tYXjvHi8bm15+cdPfV7WtrIbtGU+ZF3hXqz5812GE+9qF2/H0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoK0jSvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoK0jSvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F87AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757317193;
	bh=+myda1TO7UqlbjCydxLyrwdzePMrEiAD/wWihLWSCds=;
	h=To:Subject:From:Date:From;
	b=uoK0jSvMPMttcUhNcjHnEjZVNQ3nJed+fnGqyhq6iJc0anGIq3BpNR2GhIIz9QoMN
	 dQmvOyE/+KvT6ok4qYfeg7+R2zX/o1bWNQ6devaxFaLuqk16rHojcYW+d6xtSFkYSR
	 C9JJ+7ZaWVed0k2oQxg/BJqsEU/eshIRNNrG6aQ2lLZHdMvlJsvg90tIjTLiRz7lzv
	 LNOIGM0a8LFq1v2waiie6GcRL6v266UK0nZY3C+OW7USOYrj0U5zmQXqVJHQZ8lwLh
	 XSSVJfHjrEP+P48BTjqBXFnsMRe+bIlCBMMichITP2GEn6Z4Hm/odGALP/f+t7N5zq
	 hZBmw4HkZGwng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B0CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731719357.17716.17004664109987334572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f742ebfa43cdc014f3e371345c1fbe018d5b9738ac6cdbce387063cdac0e9602
Date: Mon, 08 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757317193
