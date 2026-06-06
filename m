Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42181CA4E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780748074; cv=none; b=mqWL/HXCPJlUDPP6Z4nlaDDLvYLgUDagEvDapUgiNoHHoVnxNYUUqBLOW0sxvVgkTcC3D9HFGEsyZX3XtsOdMQ6XkN/+4+mJG5dVI9QfHjnHmfHHZV69TndeGv7Oq/l/T/dFDPVJiI7ag0PjcMchQNrlS0C3p23wuvHwxHL4N98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780748074; c=relaxed/simple;
	bh=qGuUS/5xiBoZkYC3rbkDTXhD1fJ8VERofj9B1bXyIJo=;
	h=To:Subject:From:Message-Id:Date; b=rxp07ie57buhlokrlbYUaYUPGLfm0Unygr6zHXgztApa8qS/MmtfrzAR/orQQv9IorBs9izKsUS/NlpdrUflDNPy+6FizjAaLLYOc7O8+YkpwwBGqmYuUDmeGI+EDNq6GW9gcsD3B/3Zref3JXU4+H1wcKjgwzuJwB3J37xihZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogv9ybeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogv9ybeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4120C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780748073;
	bh=qGuUS/5xiBoZkYC3rbkDTXhD1fJ8VERofj9B1bXyIJo=;
	h=To:Subject:From:Date:From;
	b=ogv9ybeN1LzQzXFdwXOtqtfZk/bbyBynl3vJqO3womvz+VJ5by3eE9UDWWgbRXjwe
	 rNHXYeK9DZ2EXIRD8FGAMSJNv6+be40GyzdeITaV+EiEekGV8/2qq+qtItNuuqHX6Q
	 iPYDKFNUqH2ic2l/RQbOKRA6yvgfGzBOp39uZGB0rOksAGinYHP94ncXyZGkcWJNu2
	 y67nnah4cTqvpwG+tiLmU5UnvAvsZCRWq1TEEZ2u6XmBWVP/FHui0cjrdY/HcuMFT7
	 oZlLeeFvkHpONP7DCnKjTBHsdnwQ0cdPOzzg5EDEd/Dbcm3eUbAz3t6THUl+1shJEZ
	 +LfwQleQBhEcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C7ACD8C8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074807368.6007.8045323287537035174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd0b75bbe6a0508f0c38b906fc4ea4884e1406b66bcec61f7869d2c0a9d4641
Date: Sat, 06 Jun 2026 12:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780748073
