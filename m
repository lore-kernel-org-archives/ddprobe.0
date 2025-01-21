Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B022CAB
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737438954; cv=none; b=sV3/KloJDvdOyqghWsp/rxqJWV4ap8zw2Z5IoXZheK2LWQpJmTspWGIDFSevN14mgEOsLGxW+0gcWok5A+IZZJBh1svLAJNyTmfKEM2RVyaY8tw30cIVjfzk2Rm9pYDgnmvaZijSS7giCnykBYe23tsS1DZqWYIPjH+Zz+Q4KNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737438954; c=relaxed/simple;
	bh=JHMH+TRwlI8E+5Aa0FMEgiXKCHXxF1eG8Qw51rS36DY=;
	h=To:Subject:From:Message-Id:Date; b=X/1F7ccMmB0H9Uy2viWPVEpu3xMzY7BhKCjvh6pD5B5uw0iiqbWMREpAyy4VRsaGD+G872+mHy5Vht7lgFZhbVt/l3N4+5oWFZLxDhwpcQhMPs3PDFBaXoNtUC5E1PBKXittRhKiYtcxAlCaLVAIB/FxQMcH+LYBM4DluDATq1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXDYQ9uj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXDYQ9uj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63F4C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737438953;
	bh=JHMH+TRwlI8E+5Aa0FMEgiXKCHXxF1eG8Qw51rS36DY=;
	h=To:Subject:From:Date:From;
	b=SXDYQ9ujUCJa9PdXRhvb7hgAod57Dqc6X6XZV9BlHAMuFiLoz6MjOjXvaivCxz3VY
	 NWkES46276YG3VwzCnSY/VhyFrZtLgFSJ1Uadm6NFZaqCTugDP3KhcNDu1aYsjnsaT
	 BfUNIUPMQ06Adw2b2PeGkFfdsPlokDQpyPkdUynuHBgeTdjC7MFJtGVnfYtD7aZkVN
	 4xzvsjrJekALRB2iscTmJSG86BL0L+700o2yzRuSLdN/Kvta44Ve1yQAJ+Pdt3yzq6
	 ubQqsbGamW2TF/HqUrQeWK/d59+e/56+WU7jPI9HdWQhqLvugVMtMFS2nmQxDNUyUx
	 DIpOjTgiPFkqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F7C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173743895359.2609.12631771998227980399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed772380f58ed7fd7cc3383f20a2e0a9aa6fceb46d2ad946fc6b5c454b4a704
Date: Tue, 21 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737438953
