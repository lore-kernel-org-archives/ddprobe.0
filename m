Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9F3238D54
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767802437; cv=none; b=rq0k3dNiqIompO32JBCSh4cFucD+g4mqtGAHg6mDIEsXhUurkP7zhLOiveBzlGFdLGY5fuUlv8YN/fkx3I1MzT3MpJu76D7flBPRDGNiMRcOLbRcxSCjdoWcHPSr5QT+T0EwbtcRUpTu5f35oEDZUsLyGKhCI4u7wItGJ6Db6DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767802437; c=relaxed/simple;
	bh=I51tu9w3UbdoHSj3zynaN3rNwiP7zkf4h9J0kVyv8hI=;
	h=To:Subject:From:Message-Id:Date; b=RqvCFZiHuGNP5A89ol4Vjt1bW/+rhdIDbvOAVgVlHH0ft2W69CfowDx0p0m2VG/1n1FvASCn+dHzmEdEKHkFd2IeqnTsX0kI2DdXfTDOlWsgCZg6WL/0UXlWkF8mr4PMTlHY7Injg3gBy3TCXvsDsmA1JUFRWM2aleZLCw3AR+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1ktCzoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1ktCzoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F182C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767802433;
	bh=I51tu9w3UbdoHSj3zynaN3rNwiP7zkf4h9J0kVyv8hI=;
	h=To:Subject:From:Date:From;
	b=f1ktCzoZyhSOvWTW4IwqXlPI70dH1mKEfic3+4jP74J6EkPEixx7rLQxowE3vUTtq
	 l7I+vHcSQE/VxV3R+aXLIh/3/wCaYFRbf2Do0n8GfQW7juN94eIIiIUKyBbbz9mC0d
	 oAXGF9tHo7fPttZOfXkcAP9H1DgOjBEi5xzQ47PSMONa95MCFOT/px4WQPQ9tvej8M
	 ru4X7s9l2sD18yOcxwhvQKl/UyXo4W1qg45/oHuwFRJtaPmpejWxcpWIa5al8FQOZb
	 5aJRC17LzeuCmvxkhn5u+ZSoBdQYKFGPFSrx0ayEfhKxjUr1UsDPrNlli6NoiKX4DW
	 rp9ymvzQp8eFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F227CFD658
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780243357.9397.17592249307895485112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05cd9d0e6c1302577a48612d5f26c8a08553b992eb8a6a9f9209ce4f7cb05961
Date: Wed, 07 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767802433
