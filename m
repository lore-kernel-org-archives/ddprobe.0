Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE3026F2AE
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757653195; cv=none; b=jZ/EMDQnvCSNZS/YC2o/J78HWm9JXkyfqSJPYQWtmMUjZQClExJgET7AjlwysqI6WDxmDjJ8aZPI1FHSLB+QatBIKPz0Sj2LCf113bznn0JUlfY1Blw8RdXReKP5v+mgLyPz4dPftrvib4jV1xfvbeH//RBVgZIXM70tX7YZKgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757653195; c=relaxed/simple;
	bh=5OlKICvs7hL8l0WL/kad1H3MMZjMEpmFfdTMuVG8Vhg=;
	h=To:Subject:From:Message-Id:Date; b=UTj+801yrNWlbLinyY8+LVNwCynIriMQdUMU8hczdfFOoZ6BXuXnir1S4bmtC0Gj5kWl++lkbTJWDBcLH14eQ5D4oRzJz7PLf6zI8h7oWDwtDnSmhrg+KahX5T7CWXM33duImcAyeMmua/y1vV5xmqlAA+fCvcyb++C9mo74YzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlB1U1W4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlB1U1W4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ABDC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757653194;
	bh=5OlKICvs7hL8l0WL/kad1H3MMZjMEpmFfdTMuVG8Vhg=;
	h=To:Subject:From:Date:From;
	b=jlB1U1W4ebHqGZWryvmgekUaZO+dJrGTEokS9bG3OXnvx38HKYrcxU7LoL5wZ1LDQ
	 +2ykRrv513FBipD/FFdLPA4cv3B1a39c1nDDG/y6fATsohLKVoDtw3p4qT2ojFT90z
	 u4S62ufGhK/5wvv56BfXbJSqx9QAUEQr/Qt1jv8qoimvEmgD5M5vThI9jkrYdha9kB
	 +E2vjGmhB9ukgnmYIMXob37o7284stOgrarHX4z/WyCLKBnvHZIxVLHUGOyNeL35Qh
	 a9rpIVL76kzBKDGYftaNnams/vqlBVCewx9E1y5O7GFmnfTSCIavMSjvmgZRFyiRIp
	 +mLinPDpjlagw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EE7CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765319358.953.6508571642240358123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58592af35d7cfcc3a769d253f6bc20c0dfca5da64d4b6aef5b37402f9110403b
Date: Fri, 12 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757653193
