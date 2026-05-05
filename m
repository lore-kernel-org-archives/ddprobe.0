Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3838C3AE712
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777955254; cv=none; b=P+4szxFtssOD2v49vhxrbj+Guu8lydvTDYLOreiFxq+PedHlxWW2lUMeO13eZMv7Iq/p4kysVSJSe2EBtjZWuxRLzVX5vRCLk7Zhz8VPlFyPg0uJeBAWUOt+CbK/xP4Vqta6zODDp3LkUIs8VpGxGLTu+b75qmAb/bbpagexNEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777955254; c=relaxed/simple;
	bh=AeYHmBqEAtkbsijzdQlzq5+/pSTxd8vLoQsdQZRQtoY=;
	h=To:Subject:From:Message-Id:Date; b=UmHsljey0/txaE/L0uLaZtazCquBzWJS8ArlWKFKQ+WdH5xACfJyhcr6JzxCOzaQ52FdD+bIRIu/DmHbfvyrdndnh9wdtg5ATnIpyIvZY0dXOJU0PUTRFeB3YcAy/wIryotspd6Cbw9ZBzR6PLHWhhxdM3rr4I6YOs7ac9v98j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEiD79Pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEiD79Pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B987EC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777955253;
	bh=AeYHmBqEAtkbsijzdQlzq5+/pSTxd8vLoQsdQZRQtoY=;
	h=To:Subject:From:Date:From;
	b=eEiD79PmLYDw3gisqi85b3E+so65BxDijSZfXeWeSQhoUIA6oJQZAu4SushrdteGQ
	 mdIo8oNVTgJnEbWEGi/I0lk8/ud4Ak6AGYH5he6UUbYzStiLtM++oQ2QDeY3E+yK9t
	 QxANdDppnw3nAX4+pC0+rPpYK5tVjp8qxxut67wont79oe5N2OrXN3lpd47ishYYzw
	 8BX3Hg8a798B2g7CRxsvj60095QjbboVVCHSk9bRn9Ru8dZT9Ia4r/LwTYSSS9Ppks
	 feFO4epWrhbHe2boyO49F2uPargslj3tqDHphKbhbW9b9EfMmh7CnvDnaUgqDuowBs
	 NNtvkLyPyXrWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95D6CD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795525368.29948.1906207237352402109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201c752519e50c6a1ff05d10238ecd890e71e283d797958687f73764a250afe2
Date: Tue, 05 May 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777955253
