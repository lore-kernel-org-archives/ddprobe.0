Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404B379FD
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727628954; cv=none; b=Q3IlQZcB62ZZ9sXnyn8NioyLeAIgbUCu2wpOgmZICC6PNvnlpW7kpvbZwdFfAqiJnQce66os1B26aDG4ejulH/BLFCnOLzncPYwA7ap4Wk5/v2E+G9wZ+dkZKlw69U4jTTTz84nQuk6hte7TmXt+3YCMoxZsYyhws3ljY12R5AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727628954; c=relaxed/simple;
	bh=ADztSXQKo8hcCRQhSFhVqnAmcbakBZ3PDj0tHOpi+6Q=;
	h=To:Subject:From:Message-Id:Date; b=sJgCJcHGnu0/LBNw/QFZzbw02pFmvvxRjL7E2UchANTGCPqGV72qwVEL7zcxl11Xy7ga8bq50zoo/i+rfYL/SLE7JkGVgj5gcLFhrKXLfVeP3MncktMrm6EPDj+oy2OnS/gLmgjIlXawfBHc/63s4sfTbbyyT64zYIIRG74WO1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbyKDfm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbyKDfm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A956FC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727628953;
	bh=ADztSXQKo8hcCRQhSFhVqnAmcbakBZ3PDj0tHOpi+6Q=;
	h=To:Subject:From:Date:From;
	b=VbyKDfm9IzQp95BFYi3QNkIdeiJlXbMOKm7AI+Pkhq16RdcUnkrSgvFy2OLyrEx4j
	 eXCYWXCsUGJjp6LhVjTbxL/1+7No9E+/KzAQTqtqs1NjSzK93bVURzW5zlS6l4xrfz
	 9dFqABLF5dn2YRfJ3Gos2F9A0cTD+FMs2ZUTziTiufjeTp2Oxkg7FauNnMIOz3ge0v
	 xUkfGytOURSeWGGzq6tK6+WhvJkRuzzzOjffHYWqMUQ3d+OEkMXYyaDPlDpEj7TBSN
	 QPtoi+N7xEDSf/voXag3WIFVyLS+7mECFgIrMYJ7tcvZHK2BErM00oYsdoVT1D8bTB
	 WkZY8Q+WJelYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98748CF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172762895359.24851.5981228156933931829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f619f033f5ea14b307f84aa671be7577e041b743f3e277b4cd6553a8897b928d
Date: Sun, 29 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727628953
