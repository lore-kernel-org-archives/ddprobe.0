Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A98420463
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786632634; cv=none; b=NNeDrWb473HuXbBPawsiCZtxGgyqpBmx/ECmBKgBovMy2+CfFEowSVwxA6XRXnbV3iI+P7oprdbgtQXYqhmpr2xLRzT647cLwApS1FKbXkzn3oecjJYKIWHlYjxDqo45sEipFXznhZ+cWb7i5hfH+Tv6Iwxt79pp8OPHel+AELg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786632634; c=relaxed/simple;
	bh=TDFJ9Yhv6pKh4B0Ne5T58TFvnsxvoaQJIL+Vt8FmwKc=;
	h=To:Subject:From:Message-Id:Date; b=Fo0nAR/tLknMu+xP+EkIF4TH3FMQyG0QvLzWWbrzeuVZYHGXjN/bMkLGEZjkK+RYtoybmv1R/FTvsGrwQNoME7bFje6Ofto/Tgi5zHPYKHaLR7asIsD5J1ichJrIqi2RHAJqbfBGyPQP0sLGx7ctoB4Yx3g6YPVPcU/GRkcrLOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGB6OtIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGB6OtIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAED7C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786632633;
	bh=TDFJ9Yhv6pKh4B0Ne5T58TFvnsxvoaQJIL+Vt8FmwKc=;
	h=To:Subject:From:Date:From;
	b=rGB6OtIHOINLcPKuIl5Os0z5XV5tEYXv5/rmnm5nhVRYaku1ebpo1TPYsR1je2oyx
	 hOP0Yq2iy6I6+HpxGk+GWMe98o2HztI+Rymx5XXzNnr444c4C3IXzFHVmw4FGprKHE
	 1IqwxEXSl7L6g035LosgnvRtaTfnpmg4MioxwwVTC+4rGCucnOgK1xpZxE2D9VdXOn
	 WFN+NG8ycG+HWbpCBfAcDJzvH5/y62ZZxpLGuThEBymZKK/vBATUux7cvhJDrX//OI
	 wkkyQM00TyHP8jJqsajscS6c59PbW7wf80Di6OlnveyJHBr+h6PRfPk8ck7iZ7ROyf
	 TVligcRHbut8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A853FC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663263368.17208.5872574369746625517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4c4c60fdf6e8fdb9cf342b26b528afd30a7d826978398d118f85bac5ec5f54
Date: Thu, 13 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786632633
