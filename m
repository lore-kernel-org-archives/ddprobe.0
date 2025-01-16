Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C7679EA
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736987154; cv=none; b=TpsF3AQB9/uXGjDeis6qhs1eIExZT4MSgoHyFF/MN7ye4AuiAmazK0+BcFP/+7ILT4L4CIZKd+4GtwgFGn00MIv4A4y5ybYq79froFQOTzAj/0DtyapnZK8Eolo7TMW+iX0uPfnuAD3m5oOhd67ihOe60uY6wpqNmuoEq8+xHQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736987154; c=relaxed/simple;
	bh=UEPWlJ2IXcQdW8WyozXm1mJVnLwjc2dqfZijiUJBVNg=;
	h=To:Subject:From:Message-Id:Date; b=uSyFWpSm1OGyuq/8iG1l00CLNSLhdFLqo8Tc5IlbwduNbEZQZOksyHkPmiz2hcMtQndiBJDr3CrHgVO6OvAOfRZN8Nzl/KRwkLtv0Yq3iSCIgK3VLdZuvuX9gk/tO+zdKRP1kAW9JNjRY3ArxTmVmtnYSMQ4cyTnVgSBtYOkRvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esoFt33U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esoFt33U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC526C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736987153;
	bh=UEPWlJ2IXcQdW8WyozXm1mJVnLwjc2dqfZijiUJBVNg=;
	h=To:Subject:From:Date:From;
	b=esoFt33UmK6vnKE22kLL4S8zhcB/rRhvb8uEfwMpcJzVKSkimo3BJ3Yl5jTSYadu0
	 axSOg02oJTBC0Ymw5JvXOrQUvoUfOWsbVU/xEifsFlBwoMuT7HeXVQywpCOj9g41v7
	 NcDfSg1W+4gSI/vU1KVSPSEjvdftaZb0IhXwlV8Kteyg7ilofqZxZCDUNiDqkj3MIi
	 Nvx8US1PoAvz0y0SNkTFHHd07zR8pn6RBCA6WjKUnGhxYOjleaG9I0EeH54J+UraKc
	 9PUyv2/T16NeUqPtaBODb3i+BBDIzbyx1Ru5ZiV9biGPHXcZPUAoA1V5GGC7u44WbF
	 UP2QbEjTmhinw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99578C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173698715361.25296.2654927724801254572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922221465550844e23404e3430366bb07d76fc2239edd11287b71fcd7ad7ea70
Date: Thu, 16 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736987153
