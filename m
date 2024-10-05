Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4129D1369BC
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728116754; cv=none; b=dyAR4QfKJX0ybY+wB2hIasnyzNnA4HqEXa19SpYLJeGP3UuyADl6G5E6M9MoTyuiw/R3lHF1rNh2S22sKYd2zoCdBiPo6o8INKMGI2wXALEUqBx7dSgCgsqisgV0nJBWat4DItawZiX/fXjM7+3wjWhToqCpLkKJEu6b0FvWxMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728116754; c=relaxed/simple;
	bh=0CK8+AYYto/cnsd6soG6MByauWQ+ibxZQn9dfL/YWiY=;
	h=To:Subject:From:Message-Id:Date; b=DkG943s/A3v+jEd0ae8lhpo911HZugEOcE7JFvIR3MBGkA3gImqssfoiyGQedTD9b0k8JRssI1s13AQ6tJmWOKxe4IoJsNKjcCTnB0pQI2BasJmn7wzJ+5gMUeWZIVaXXGoHEvSqB+OPCY5wh6tFqIEQy0RAPf6VlIz7zmIkZno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIqBpu59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIqBpu59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB297C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728116753;
	bh=0CK8+AYYto/cnsd6soG6MByauWQ+ibxZQn9dfL/YWiY=;
	h=To:Subject:From:Date:From;
	b=ZIqBpu59kPRjppCDTJmT5qqKGvgFFu/cILKurxdFkdqHZPUL+Zet33Kc27PMY1LRG
	 CbY5kfv/yVgCcUuR+TqwoaKrlP8YeUyXLDTFpUOGFcbeZyfj42jSf6JL7nFR7pqXbI
	 ELfNwZ00gFkP3S7+PzXDiJD6pA3m13SNfnYynGUN1nb7uokFo2GlvEOiFn4bzcfd9G
	 UFWcrlW2BSo1PaTasRCTPP5ym6XuOnVePUbPclOQt73VygUi0QpdqTbyThlAPtkTSH
	 oFYFV5wK90LtMA9N3tRNgHdDYNY4TDL/I/rxwAFEAlebeNglfrDwmHR7D/R1MDA4M8
	 fxNeHGhuFHp5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A538CCF8875
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811675366.16504.2810233025326258615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1377aefdad4b10ff12cac0ca8cad914594859b71604c63ac1f1bd52ff1738d9f
Date: Sat, 05 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728116753
