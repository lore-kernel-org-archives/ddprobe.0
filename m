Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F441A704B
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787760634; cv=none; b=NHJr2oh7DrlazZIpfff0iCDdOJvMCIOdGhPMl2K0kRa3cQFDSpzMPm5sVbVucTXGktuJqgF1vFMbX150OJudYKEsiNQVNfzO46Ac0zZwzxkfI460RLEqifIjVBKNapr1kXVQyKrYNGLocsg6G2YfHQ8UbjWmYYcsbwDHh01Sf7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787760634; c=relaxed/simple;
	bh=+3IYFaFplbq+lv0YLG4GDWjRo8H2WUj9oiwyUaMY654=;
	h=To:Subject:From:Message-Id:Date; b=FCdDM7VV+lBLVcVE8sTDQUy3G8fewZ7Pl9xL0okraHrlG8yr6nBvzFSSCRve2tSlKaD46pdFjtDfFms0xbBbSG4KMgnnnhGk0p6bF6fZGYV+ZbkFhfWk8UFLAyoxmnTEVj9AgRO4haSWPFly4iZgxlbVG44xmMr1gpMMSPgCyLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4E18ul+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4E18ul+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE049C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787760633;
	bh=+3IYFaFplbq+lv0YLG4GDWjRo8H2WUj9oiwyUaMY654=;
	h=To:Subject:From:Date:From;
	b=s4E18ul+bGxiLHHMbwRwHfhJoQRp/ml7fHQtj2lB1mVrFZazbPWLUOlhA7yWcA8La
	 yGW+1ldODZQjHy58HbePu+nKFF293JDXrf6kbPmkJEVcz1pI9KsS8r4O3UTsDPBZeh
	 CZQf6+NQNygHF6eSnPQQWXWa52rsI5eDz7zsWtc7lq1Si0U3bmGO60AL8KXWHeIq73
	 Ushe0nR/uSysQc3mJAzeoBZhDkRxUBAqoFEMJyaom+sNKz4IxETItqzMxoYaqKzOu4
	 YnQsc74sMLdVn4cdpEocGPutyIaHh+0+gcEcJHyxIaiSMn1zql8ds25Tg3G7HKgAPH
	 tp1P2un6rq3Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0F7C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776063370.6591.3687759357730615028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899ec52185b4572643fc0724de2234cae4bb6ff6bd09b297d7c6a9f2cdca60ed
Date: Wed, 26 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787760633
