Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA4F23B628
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757040594; cv=none; b=Ni9ypNY0iPnPYIqW5K/jIma8r9MivhKzSArBHxX5QSL7N754wtHyLf7g/Jzr+PEajYI509c19ovDLouy8iZjS5b39TJCpqCbmwZN3mqF12huPTaNN1M4pkiPRHtPSQ//IToSLgI/7CFB9pZYx0NHko7vtNvAVIPK5yaa946LSI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757040594; c=relaxed/simple;
	bh=zeOJthWkHeYT6bAxqLavSM5QvwsJKB1pm+wLh1ThtUs=;
	h=To:Subject:From:Message-Id:Date; b=WJRYwkQxw+kFbFw2GApme/9Gm1PXMU/aeXlvdcKvd68gF2ut9SOyWlfvFoULP+9RtU2T/PGLdukDuPR5EVx1kcXTcdeqx+33WC52rzwC0h8L9HCrTezeQWSty+W/cv4PGqLwhK1qZRxqOvW9QSueZtGCaK6wAIaquX15vckrauY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhM+Y1to; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhM+Y1to"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA304C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757040593;
	bh=zeOJthWkHeYT6bAxqLavSM5QvwsJKB1pm+wLh1ThtUs=;
	h=To:Subject:From:Date:From;
	b=NhM+Y1tov9IfhHbtgtNE29ILEANknbj8+JJ/0pRQlhS3sMuTzKmt3FD1SF/FFXiOp
	 b0ubJAbj7WjgoWD84D/YrAqFJnmvDF824FvLcnv6vXrmMyGmyyunX9FawqL3/SExkq
	 wtKJ6a9+hBZzyorZILJfMNLURh5ZDs8LZx7DjleKfGj9VToLh8p3zv5p1YpsSGBWnk
	 PJZzZpTj6x0397EtsfUMCofg7VhpyZca9tqYmsjD7D8vFZPOJvmk9eDl9G7+7gfZaM
	 2aYLTfDv8ryr7ry7N+4CHYjgtIlnIw3/3ecKX8ilK/87sbwA9aj6dv/C+P19hbZ2Fv
	 w286zoms+vTPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95198CA1012
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704059357.17520.11798867020995069205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3e2cf064b0427bacba7ad55b2ff7567b6e2795db0f6c5edf4a774d4293ea6a
Date: Fri, 05 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757040593
