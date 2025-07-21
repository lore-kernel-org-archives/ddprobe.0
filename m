Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B02146D6A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753082993; cv=none; b=bTMLtsDitsi4I7+wf9GtyuGuq213wjubNJmnrAoBsQRUetHG3O8PpRhRyu1iCgAjw4aH3LVAibCzXoHpGMelulyZjTnHtTn1LC5c+NrfijxmMedziU1HLpoXygyiZWZCRopVGk67MtlAYYaLAuW06dJuaIsrRO/lNDWkrr43Erw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753082993; c=relaxed/simple;
	bh=92a58lP8sgG+6zomuRlcfl3aAkYTE/vIsIVem+NpHHs=;
	h=To:Subject:From:Message-Id:Date; b=CsvBQyBbwvfi2R2Pav96NJj/AR9XseiiqyKX6ZnbV5q/NjG/bEkOdYJXNOTPAjNf2vuF7q8bPgyxZlP7XhNDikCHvNUXOx6ltp1fkfQ3YDGlW/dncxm75Am4VIXMTqFi84R8pb1Gy5UlEAG3SaMqfBxKwKQVxOhd0eGZTATHdBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efkFqrtw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efkFqrtw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4776C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753082993;
	bh=92a58lP8sgG+6zomuRlcfl3aAkYTE/vIsIVem+NpHHs=;
	h=To:Subject:From:Date:From;
	b=efkFqrtwgJQZ6/XkCNnsUtigOajIC8VJg1KPTNavqc7aSy51vfg3+MPcAl1wZNjw3
	 1PgrQCL/MzHqI/zP2hLGUwxjPkAmvc+Juh3R+xjIiJPC06tm3v7Jz3cGt4tJ1OUlku
	 x1omVbqZhn72A9M7nsTKAo5agBs4SQL/efvzT/BN9s6crg+SksdTdPBjBnpHeUkA6R
	 AMqXTQXLqg2AY0ZKxgApt+lULZQYXCt5HyuQVe/ukd6oSG/0JboYSphmkjgaLGlcYt
	 UrcQtslvnTDrDL1vvcr54MsSybFBRy3Dm9VoADzTPSs9NkrAr/mvF3BieZcPnlJnYg
	 K9dflTmJxKuAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92822C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308299358.16640.10774499336380571639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88f75fa544806c36ea838deb5ec65f1d01eabd108c71d96af864b96bef48337
Date: Mon, 21 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753082993
