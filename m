Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2321E515
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786350634; cv=none; b=SM9bUFYt7APMC2ZWz+G3w/s+S1fH7a0zzGEneyfnnlY2hRd9tYVJ0MArRDoyRCIS8QYtcyfvAik6nbcSysYgpYaOg6LHOfDCunVn34y/wEXLmDetz/bt7HzHDGgocsoLR/Zgvs9VzMy5FumEV1jQA9lEIV9oG9uHJoqhzOkcsoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786350634; c=relaxed/simple;
	bh=/jYA1JFY+Kj3Xc9Zu0UZid0M9PN7e2/pRsGkdFRqaug=;
	h=To:Subject:From:Message-Id:Date; b=ETLBoJQ5H4rDBXpPmNIkgQYc3wOliOLf1WPFooI6DieNXNlByE7yqBv0RJVFlEZPRGula9ZVEH5toHyeWIzlfWIpA1GjL9FMAAvhGkpsauh690TY78sltrf6z0yXWUHDKigv7ziMgHfix49EdaoEqfOERRyyQFUpYln/59H1mbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRctieKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRctieKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63A4C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786350633;
	bh=/jYA1JFY+Kj3Xc9Zu0UZid0M9PN7e2/pRsGkdFRqaug=;
	h=To:Subject:From:Date:From;
	b=PRctieKwVv7tFY745IgeiQOnn+3LfWtJoJG+dNWz9o4miRGDpLkouNfXPD+k97iWF
	 JTkeCGEkekyrK4Zqk59oa/XHpWkdgxrAmh6BXG3yddwKenQD7IfyuAbtTsCh5uR751
	 p7R9W3NCmKrhotLuLWplQUe+aAHw71B1MioDFpZ3hTPojcHj0nAu5OITkqdUs85AzF
	 bot0d4SyR3KqCX8JSpgzbv5YBVLF7kDmlP517UUyQecsgjvijLPrnCrK97BVx9G0/y
	 SnaimTu5zVyav8mgkEcENCYeKKX4ToBmBcqsthCAA2+NpaA1L7AIEui3KNzZlZh0a0
	 6Xh7VZDEu/Zag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B005EC5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635063371.351.2521376164189260525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79799f4c306a655dcd8d33519ae0946aba443c380df9c39efd08d78b99e10aa7
Date: Mon, 10 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786350633
