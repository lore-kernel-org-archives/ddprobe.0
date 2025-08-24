Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F18A16EB42
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756030794; cv=none; b=KHdfVfVGM7tWsMtVScQfDhbXu5lnXeEbrabg/GNmz60LFcE4nJ0xQnKCsmLtSGeds0lbs99Q00/Ez3DBS2KkFd8+jQ/GE+eM+MTA6va9K0gl3Xqvgz/Q3WYcKvUcAvkGGv6jZsfUv5+R4RngyTUX0T/z+QGfHqtXqxr+6+WRqwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756030794; c=relaxed/simple;
	bh=zkVHV7Z8hPatMJi54f0kzzt3ZrjyEqDnqdqiacov5fk=;
	h=To:Subject:From:Message-Id:Date; b=VTgGU6GAbbMMZxABuivzTCOoh8L01EleJ4lyzvRyO8HYW2NwEB5/cuOIftRJndsP2AUZbJznt5rJKhY3BL0aDC+5XmzMqfzXjWSw+WUypqplGgyUx+X03XWa9FAKYz+NUXPqlWg9fB+025oKHIeaRqhl2Sj+jVf8PWNGq9p6UaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kN3yRXou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kN3yRXou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756030793;
	bh=zkVHV7Z8hPatMJi54f0kzzt3ZrjyEqDnqdqiacov5fk=;
	h=To:Subject:From:Date:From;
	b=kN3yRXouoUiJ8xAoR1Ku12gzJ3yXexH1ooM/Y0qNOHgCEk73cQb0Yd8Xz29nGqp4F
	 7NZ8xPI4hyE6Tf8lvCk/UpNgZjduAeR2VGVV9GddNoYs1J2yuaH6LBtwWmXexV67Qt
	 hlAdE+7snJDm8IfTxMMxsb8WGktsNFYNqaVBhRDEvNqElDzSMTysnn64i/wIsIF33o
	 83sydh/tHDCv9rMuiHDCUOrPurDwbOsF0iEUWLVK3hLKpleLvN6MM6qODFWMQqc0+T
	 4RXkjMOh8Dr9Mfi1C6FH/EEhIbOJxztPf+WmL0xRLCewhJ3LI05gtEA48psEvwrWm+
	 Wvz50S0YFkiGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95998CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603079359.9384.137896766203683470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e80f4aea00313fa12e3b9e627c0b8cd900f472f76fa3f5f07c402209f757cc
Date: Sun, 24 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756030793
