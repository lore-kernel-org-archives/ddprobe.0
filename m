Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B4C14F12D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736978154; cv=none; b=sVc/TPFtvOHcbk1mkA/mF4JZyu3df3PhGx8WfMDKH5jl55JVndSkEhCdx/uR1pTFirtMPGebC+Voj/Aao7h1OhQy09YDjzNLt36VMGUsVzfu0YbcLreu18tH6E/95jQ4mMT6fAl7h76B1BSqG9Df7vfZJb9eJZT2/e3hRP1uyJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736978154; c=relaxed/simple;
	bh=MAecKyR/T/9j/+RpH3DwRIVZ8TA2VLHZpjb74YdCU5s=;
	h=To:Subject:From:Message-Id:Date; b=u3A9b6930bC5Qxz2S6HIto92mBUoOncuTiagSwr5toIb2Yj6jaMRvklOftPg87zRHwcTsoBAqXa95pgs6kYHk3yHADRInvwSWNBZnLKZOze7VgpjbzwFmNlordC8tA3l3fGq/alsaNxCf8kjENrDNF/SW+6uHPRvSonrChZEK0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZARDHvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZARDHvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA99C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736978153;
	bh=MAecKyR/T/9j/+RpH3DwRIVZ8TA2VLHZpjb74YdCU5s=;
	h=To:Subject:From:Date:From;
	b=PZARDHvdRSQXykkVb2zFzACzSTJcIcTsejAYycV/l2doYZNMW+9iQpiPveo/4FocF
	 prRwriDBqRzD1XNf9bTnPqvEXsDKTYPDa+d7KCjD12cscY9MnmKt4HJRgVQBtYYPVC
	 CTh+f3kOpJ1TDw+fhCo7sU5wKdZA6dDFwMdjwQ6M08Iy5WBmaNJIg4kMtw+WSutD16
	 YwaPcQ16eGGbVbaxeNedeiXRCtrFpxQEfLHZntuSOCw6/k7hU3B++IZcWry7K2cyv3
	 7BIsCBeN35T9MLjmoeh/6xDC17rnwzqn1ltR6FaMd45Jps+cXUy7iuy+DDOLu4CTVZ
	 z7MgVGvIlgniw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5800C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697815366.5987.14337139294741532439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191d3ff0a05850419413f1c85ee01db7dc905c26cf32917244fc921f31e1fe2d
Date: Wed, 15 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736978153
