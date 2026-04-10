Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC601DED49
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775788654; cv=none; b=HlqEkHzYhZs4nNuaA/n/cRdcqmSfFtEGqOrNM47FKs0qzbmAJEgFeNyguWPMovMiO+OMPUROB0B7aJSCj08vSEHAcMqL7kHabLL9Yoquod5S670A8RVzeYFwb7BALt9vmiEGIqFRKY3DdwBcCFwEMDScYBAV4O8cQCcGsrQmq8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775788654; c=relaxed/simple;
	bh=nCUYuNv0/yVPQqp923eA271/g7cejlsF7e+iOw8uAPc=;
	h=To:Subject:From:Message-Id:Date; b=cAHurWJ6pkw2vVyUjwgOTXJAo+3o18nvIxYhdj1Y+RGm5JnWtDPKf9/1hnj3vUfYXcvPlENyBDNmU6cmPdcpao57VJdpLRFy9EZRUpDEaLVMAf2RQki0v0Xi3rwLVpMfVHt0WH0j9XMDenTn83sjDg9x/Z/bGmW82uacSeMldeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhsAP1Le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhsAP1Le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2A2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775788653;
	bh=nCUYuNv0/yVPQqp923eA271/g7cejlsF7e+iOw8uAPc=;
	h=To:Subject:From:Date:From;
	b=KhsAP1LeYtwy7oG1/YFsn1K2Z4I07IORcX8g0fauWSQXpiN6MDoyZCW9GSuLiIgTh
	 O9/HryqAuUX6MtSACsoGKP9gS5msvPE33KH7adUidgWcBKjUdcBGQHkbzj6CyZ+t26
	 LiRhoRMkDYcV+ruOaZsdCFbTSwgGxxoZTnn2y1Woo899VJmLDF6zHvF/j0QlFFDnbz
	 rbp4n4Kh+ZMN5fJvYothf3f8HRWZO04RgRCES4DY94cb35VX4kjrZ1EoXZ+S9g7ART
	 Av76flMAPB7+bvwWBx4a9+M65nlLtDxg6C2HFle20aWRqF+1wYjX7stvGUAEXeMckN
	 LXJD2yzD4rtVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABEFF36BA0
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578865369.24234.2908296023715507281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8863ac8e60b3bd0c9b05f6a5fe063b5e580c01e0fcc073b52cfe04a5be3e3b
Date: Fri, 10 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775788653
