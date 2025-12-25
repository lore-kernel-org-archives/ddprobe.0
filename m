Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3297220FAAB
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766654634; cv=none; b=kaU5oJPhr5HmuR0wmP+vIpP/YXHSGFRRRd0qEcCu+LS/UnkUrXqe6GKLe6SlAsrB4YYwNWIJOhNUDvBV2cLjWImqEnB4tOC06U2AKovLgf0ttq+UjfXDYK45OeEEr+7OVgVMkCFM3ojApf4dCgXeMz40D5h/0ngvBPzhRf08dyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766654634; c=relaxed/simple;
	bh=U/j7ZK7dJoMoW8Zwx3mO3+a2WJh/6ky9jSTc19U7gGs=;
	h=To:Subject:From:Message-Id:Date; b=TzfyvNYDWYC/Eog+ex75yDXgTnOBUCO7bzTZwtVHu7+OVIrjKY3QoJxF9pBsCfsg+cMFEVkGKl18G/kEkl3YSN474EoG7U2wQCKhE9BB6DbWZGQTyLkJalzVFSbGQflEJbxWrWawRQr7BZLTsy7iFFm/tLIPqfCC6hu2Z+fGzHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVxTmXMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVxTmXMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0222C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766654633;
	bh=U/j7ZK7dJoMoW8Zwx3mO3+a2WJh/6ky9jSTc19U7gGs=;
	h=To:Subject:From:Date:From;
	b=sVxTmXMAdH4maKLBqM5vKEmrhQvRe7Uppiyoo/yY0/ECIPoRPgtrW9IwZHN00pvkb
	 p38MNgGi5AtU/jyOW0ctZ3ojZxxKIc4jbA6++jUlz64Kgyew0sQvUKNkIMuCiHhPEc
	 5mnJ6yXsPa+D5PvAG4QjVBOT1F4dFMa6HAjjB6hZYBTsQj3kibtH96CanKaruLX27T
	 cLID1y/1o8fLGsL1pVfohAWym7wHuIrNVwI17YnYANkKyVbzOjaEae/qtmJ6UTdNIx
	 VDk4GuGPJAQ1DxNUi5sgFZlZMgrszWwMQUykPZaPfdub+3bJ5irYgPC4eIr3HROVUb
	 1xkT3tlwItbZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90219E7AD41
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665463358.21980.18061064664890505381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04bfdb3447d0c7b2d8726bc1d2249806e5f6ca763aeef27657624fe36491e45b
Date: Thu, 25 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766654633
