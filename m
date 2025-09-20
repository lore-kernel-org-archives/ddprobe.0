Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A396231A55
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758394195; cv=none; b=OKaGEfWV25p/5xbwn4NM4v2wqldL1XvinplaK8NPEadxVE75UoiO9EIDJSrxE5iaqVGwiMLNNo6pyzgh8NnXCplTez85m9d4KnyvfxBG52qYVVWVvrbqPdx241K8e+94PdJ3S6UHcV0GPAufulWLP4GgKQ4scg/1QAx2+t8FWho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758394195; c=relaxed/simple;
	bh=EWtsmd81CINX8WVWPgtAKKFo1856FRlK+3UwFQd+ua4=;
	h=To:Subject:From:Message-Id:Date; b=uDyFIG8i5gXeRmyF1bGpRoBXmMy7QX+HtDDrTZ40W41RGhU4hFmdAyk3ylzBanjIhmm3lzELsH2826cpm38ZaxsKIATYkfOzYuEZlNnYqKPlX0CDQEDzgQhywRxUySR2PfDKVVweWW/CGRfJ+tUFxxKiKMAy8VdEERa4Cjzh0ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+hW6yx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+hW6yx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DAEC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758394193;
	bh=EWtsmd81CINX8WVWPgtAKKFo1856FRlK+3UwFQd+ua4=;
	h=To:Subject:From:Date:From;
	b=I+hW6yx2qT5FA2tUTvQt4bboIo0moAz6OCEa0qvigWsnsbczK9xXoTogYQxO0z30U
	 0EJaUmYpLSo/WqSg1P3kI269qQzycJdTxPDU8Dk0rFBE5TiUjTjPkEP0RyNs7BwvVs
	 647HZrd+d6Z/n/Y/785kIghQjqY7SAXakbMEzO9Y2PfKufNQTy8Co7jNbsFS1rSCy6
	 0i6Dg28ZG4gKy23cRVKeAwepyG5Zvd1AEb+c0uWM0x3sNSQ0i2da9HNHWkA5aR2p/N
	 VpLjXpLjL2F5rjX2Wi1vq7a142LqSDz0LZW/oqMXJahCLNgMbQYIqF7+rI7QjmFncT
	 ORIcXF8ZJbGag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92201CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839419357.28229.10432240214420432830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02b84665ea552140e14a2ae8b463e653bdcedfcf0373aa0cc1ac638c5730dd1
Date: Sat, 20 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758394193
