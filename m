Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430C81C54B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744759194; cv=none; b=KoAr/Bo6TmCCWiWEzt2EBFo6YVfGYzteqeZ67URnymOuStPoIh4S31GVXRkaP74WlzGUpZ+uevgC7O8b7ccRaPx/z3KjLjDfFyqqUsSrbgUZE/sUqJkgyYF+/hp/UDX6FSsv7kLZq0j+ClQsBTj97ryuW9WLSGW+aqVl3QEsGvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744759194; c=relaxed/simple;
	bh=0xEiXTx9ak2av8dqFJX6fVBG/wm4BZXN2jIvzZVtiRg=;
	h=To:Subject:From:Message-Id:Date; b=dVdoWZlAjF/PMcUgPnKr7dq2YCCRAbChpAkOBdsjsToHC6rbzg3nfsKJ84f6c6xwH/79V7DcCN/iibmbD4x931DAYbjplZApWty0tpYFqadmoy9q4vGBno3R/sa/Vik0ZaR2Qbk9/7oAbBhkJ3k5BbXNA8BGGHP+d93nUAbPWYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaLIWQYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaLIWQYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4563C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744759193;
	bh=0xEiXTx9ak2av8dqFJX6fVBG/wm4BZXN2jIvzZVtiRg=;
	h=To:Subject:From:Date:From;
	b=OaLIWQYnQ+QzyZpId8CP22Xtn8n14VVWYEQvztMnwdLAsuaq7XGcOhV2RUS6t+mbi
	 4Xxk9pfMErHbtwsidMvoGh3j9voFB5ZXSjtEZyK4fPEKtdoelfJBY2rzCp8Fse1cHO
	 WlfCv1z5YpvJOHQ9kt3wBg0g+sm35vWfnJSE4TJ0DUPzFnI6HFjhNEimStbaGJlFyB
	 S8iisfc1zHGCgFg9KLAydFG04jDsOobgRBR+hio3z+Ia87KlFI8kGjulN9OcoB/0mq
	 mwWnpDeji8HWi2YwJPWvsBG3W7djIjII0TtkvItpMl9aKeobEHVe1RbKkuseOpVpaY
	 /NWETbPBv1JzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBDFC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475919363.31447.7437847492816161044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b38cc73bd0aaa9709f36dfdc9917d834546418078104edb97a95efc0c0d746d
Date: Tue, 15 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744759193
