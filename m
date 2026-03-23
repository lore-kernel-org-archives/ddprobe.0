Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F97733F37A
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774293294; cv=none; b=adTSn8lX0k+wLbycBUqKb5hwQdREUPnK+I+tLeB37NRay20otl2lB+jewrRKDyzKVpWOHE/7IsakGEFd8lZXXqP44J0P3h3mtb3UZt/gGB7bQHuRV49tI3bTzY0+fB/yoztJ7SuZbdMIuzV6Yzz7Wub9UkWyq/0Na/NGohOumyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774293294; c=relaxed/simple;
	bh=tQjJQnoFPCxG9CsIIirsckwhX+Uez9/gQOwwbEvcRP4=;
	h=To:Subject:From:Message-Id:Date; b=G1fM3dxG4EqkDxSRh3ZXd+x6fbGkjAFcpePd7BhAeuVd/t5U/da/jZO360nGYMLQ2jg/ZZgQo/8NbMljD+Bfi5IQeSqfDdtVnEQZK2QMfEt6cvOM/AKJI3PA26fRImLOjgw/n31auUcHnKAPhlpk7oXmyJyiOZfkPYlNYFUElt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTq6UpXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTq6UpXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE09C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774293293;
	bh=tQjJQnoFPCxG9CsIIirsckwhX+Uez9/gQOwwbEvcRP4=;
	h=To:Subject:From:Date:From;
	b=oTq6UpXHW1+V09Ow0ZFAj1VZbSMYR82zAb+M93o03RDrd1HZqNzi9mmjkLPgdR9SR
	 aEfa20OYoYq3gXyXBlwttKfhw6twCqiVqpN5Dg8dWKpfJwqKLD+Ob7qV6gy1eUESxA
	 lNLFdwZX617tyrdMWt1IHIqe/xhFLrnxLZcONqvVNvq9EZK8buYgafaVtT3lvfcJRQ
	 NyXsykToTzzUpF9HwvFgR/iFLR2PBvh1aSx/WV6UCqo0GK83I3eB9pxfuvZQljOtHK
	 8AsyqD9evicHyqx5zxGtJEQm9ftDL2XACCaOXQtV+LPd3x89HObhguk6O13qIhne5M
	 bxxZ7QTsiibhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB9F483E5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429329358.3834.10035112826022984437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717ee6e2f119b69bba99be201bd1896dcd1225e5b09c541ea4ace54373b9dbc4
Date: Mon, 23 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774293293
