Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B9C35CB76
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773823494; cv=none; b=XWNXos0We81JDIb2D5Qa9mP3MbCuYRvpG530soTNOBKhXZuUutaeEqEpZojpL8YXBKccOI/yriWmnrl+zkiZc0oAB0FWM9r3MRbhpR5Ipmok9JEn9jjQOSwMJBEJ1VwndAIdSv35K5htyZuTvcvaDQMkTQqOzTiEmQ5pi1rPeHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773823494; c=relaxed/simple;
	bh=Hof3uroirqGfKhIitKYAZf4HhaGtDTgHhTxiRS9bWWs=;
	h=To:Subject:From:Message-Id:Date; b=B2PnCahEDOvvWMdDOBwmetbzaMcUwd3cUnqUICxd+uLpEc5pMmXJ/g7DenFXTm3AjjYOIv+sYgEek9SehjfJDObQRLOAoBEC8xGdCBBc91kT5vZ+ejcsqd9N7SWNtGj4xNLhjXcNQO0bfazf9EKrRckpwxGkvxMgZcuyXImWkxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5zmqFfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5zmqFfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6CEC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773823493;
	bh=Hof3uroirqGfKhIitKYAZf4HhaGtDTgHhTxiRS9bWWs=;
	h=To:Subject:From:Date:From;
	b=I5zmqFfSyYpjVSa8N6mj8mCw/PI47PA9LbYZjrZPjfDR+VcxHtK3YwylORvI8abcI
	 s2pQkwWxnKmMs2f28eNqlWmuopSGQbxolpBEPYFAx/QWvdJ24KmNVFYlngeIhm7h7T
	 QWqOl9SeFeB1nciNGFw8OnwMhJJYHvwiiqa8yLLqLA7+N8EK7dFkz2HISEen0E7MJB
	 LnrASKvmdm4aOhgKmmeQY4ZoioypDf2lkh3NsD0Dq6QMBKVPcBLZuKMiwM81dBueOx
	 hrShy62N5O/QblGu91dgxqUZqL/1FIHsyW8BLKt428aOcoF0rgxFXDVAaTi8JoYe8+
	 03wxxDa42QyVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC5FCD0DC
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382349357.1325.16383798427888311483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0529ee383062c96b071a4c81282db7eb383d5f3b8cab913780333904a875a238
Date: Wed, 18 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773823493
