Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1624DDB5C
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791226834; cv=none; b=iQt5DNkYYfWcokY4bbSvSJADBFBrCIBLWJvWUgShb7mnTuKKMgIYjcaEqr+JnLnQPVOw5rrXDxqZYqrkemGSceL6U7Rs9WUizVfu80ndrPT1H0ZpjOZYk7PLIIWtkkC72/NLfX09oVmPJcHkpzpjNNXPuHLCoOl10hnet0g2AUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791226834; c=relaxed/simple;
	bh=BcuNZlgPhhiFxYsMZeEFjQkuRE4D+zwutngq3TbEfTk=;
	h=To:Subject:From:Message-Id:Date; b=C1Tn72eDSvaLGyGoN85Quxb+OcTJ1XRTvQOTM8e0QPibVYx+37i6a8V/XgJykMjanXiGEIqfCCC0em+xldipA7s0eivzCg4RHu1jcu+dJN5yuftdPgCvZr+YikM8qw3+CVnE0UzpZXax2lyLJ9B8q8xSZFXQWJ9WJV3tKbfYoM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPZUy3ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPZUy3ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9938C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791226833;
	bh=BcuNZlgPhhiFxYsMZeEFjQkuRE4D+zwutngq3TbEfTk=;
	h=To:Subject:From:Date:From;
	b=UPZUy3ei2u8JNSF3YJ4xna53l80eb3linOiQtjAvfus/DYZiQXhDTIgVE0q04SLvh
	 XQfPvt/L79bgHCw/RuLtDT5acGWoARkilWi/f8BlKNu+/28hCG3zJoqvLAjNk+cWEC
	 ne3OXouD1yiLAKoaNSxmxOICO7FTZGgvCqEnhgyWgG2EKTgdJjlPoO8FE0qYdENy2p
	 rcpFlVW+bOTcCsyB1Tt+DDyVRKPkYesq3i8f2AKvrX1DR8mu6iTHNDKR/mxShRXy75
	 0iQfm9g+ryyLPCexDwUgpw0lce7WLRX8feSauV4YOFb95lU/9UrACGtOSWq6NyLnXL
	 AbwWSxkC1uXEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF200CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122683370.800.16534021356835041874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9261828775de3bced95bc5e17480b0dc0bb8f979aa65005e1d007e287e641a57
Date: Mon, 05 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791226833
