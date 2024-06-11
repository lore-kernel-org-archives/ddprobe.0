Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E989D5A0E0
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718128703; cv=none; b=TaGSgF50ugjwPbhQtb4kYqe4bO7sPz+52HQMESUal6eXVgMl3pyPvQAO/DuaUG9qb6fxxoOO8zS0HURjBtxTbW4yo49dnSArNUXI7P7G62Bk22twGr8ZOpbDg7LY1yRor5H44NbUhqBc42e/LQhPOssTo7xF9hrhW2m8rfTL1wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718128703; c=relaxed/simple;
	bh=3Y6QWz2F2CeLMe3/Okkxpt/ttuozEaJlWIpZlL6nxSI=;
	h=To:Subject:From:Message-Id:Date; b=kl8eY8sjVU9NHW7LiywcwOhXnPznMkNnhk/rOQYjWsvHUtltQJGcuoebxSlmvuIlZY/h1iQQFokjDn8EJyAVlXVeO6iuWNoETNDHB9Gou3pGA4T3BZ+7dvheBQFzzZpexHvn3xBew3rA9ZwidD8ZShEBkFgZT/T/ZQQmTXRf4f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opIhrdpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opIhrdpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA67C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718128702;
	bh=3Y6QWz2F2CeLMe3/Okkxpt/ttuozEaJlWIpZlL6nxSI=;
	h=To:Subject:From:Date:From;
	b=opIhrdpaV1sfxtUXsusjybImsa4auy4jQE3ghL1tsfIPKA+DgCkxJmEeSqYSR/3Vq
	 m2S9O5xkqM67WePLlKYZ2Rao0zRAgzNnpTrrb2brLDyh1K96R+sY4uGq1bDlfTgZuG
	 6WKLQeA3Nm4oiRKVM4jRkQcHF8q7M7odlLdzVWDmv4Hvfw3GEoht3LvbJc1lC3Py78
	 yd4xgrencLAOSBHnTcUDyD64sFXu3jeOFX6ya7UPWG5/kZnH+wVg0I3hetm2zJ/oKd
	 ZxNHluOaofaani8pYs384TRkYJjuZpWw+RDZ+rKQnlhVranCLJFI5SeUu3BLvaMzK2
	 UUT4XpG+BEE0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3E7C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171812870275.3459.11873739870614006091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3acf4eb2fd59d51785558b649504cd760e5a33e910a4f1207610dcce55cb8d2
Date: Tue, 11 Jun 2024 17:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718128702
