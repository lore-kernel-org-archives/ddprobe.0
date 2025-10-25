Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E30A1F4CBE
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761430194; cv=none; b=QJGpiSJm/KMk850rm6wWchG+xn7tp8r27ztRG6ZRtgFEB6oAkUNTY2mNAlXPDAgNuw4mLGvKCSL3tTWjme7xUdETuif7mLPpVk5+9vxIcWd9N2ZY+yYlbZwU+BBhQ6rJdKbZR3WUjPoGXgJltCZxnPurDtYXUuSepnbUwKdNqow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761430194; c=relaxed/simple;
	bh=ZZI7xXqqvfiUPNpQKdxbLtsDwhm+RtL0kQ7zOebSBJk=;
	h=To:Subject:From:Message-Id:Date; b=HB+vlPhTpdxXQnWmPX1KS1Mk2pI0IT40RFLjddIaXvYt6d+1lIc9mywZD/IK8GaOLuRydrAKrsqh18mIo0kJhfpuZg8IkkUceoo/TcpKpIWwE3oQOJurT1UEH9DDbsxK51leMaxE/VS2/ptgScF4vsTf/6O8H/sdh7UyP19oo74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Od4VTykU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Od4VTykU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F11C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761430193;
	bh=ZZI7xXqqvfiUPNpQKdxbLtsDwhm+RtL0kQ7zOebSBJk=;
	h=To:Subject:From:Date:From;
	b=Od4VTykUq0aeAmZ8Em4MQRX1RsQiYNc+Gel+fuC3CUsLdR5y3y/m2TzeUzyVAAQkj
	 gxeXz6aWrz/qmfnp4ZNhdUMZunA8qjOVO1WLtbJXArGoTs99CNMCSNjbz6GUo8H1yz
	 0DyIv0bMbub9bg9q3liyt9oN+A8oKz8XPFSih6MvoNVXLIKxJKb4sGEd8p4Ohp6Ws8
	 8p26Wd53c/E2eC52IbSobQImWzD0t88kD8lcass/1Zxf1O6Dbec055iDCHFr7oNBcy
	 uw9jTdMhEfaRepa3Dk4pEjOpy/RUfT80Q0WS5oXdTPCls0N7mDjaA+YV/PBg1Y+ITr
	 qUqg+sX6/ndpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900EDCCF9E5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143019358.27566.10010741352222186757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9476d6be8e472ad937d2d152fcf1e98b694608bf724d023ac986b8097a7ca382
Date: Sat, 25 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761430193
