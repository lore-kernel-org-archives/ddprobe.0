Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6401519BC
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750738195; cv=none; b=cVhCuX3AR7koRDgSGxRgrWzgt9Mfn5FbvqGX7+/aMDwWk8s2r4C1FGaOPefB2y51JvDUQaVXC1miyg6/zLQpxchkqmCzqVmCBJBlvN+53EHd2QInrveRm1AwZaOxaWNPFCXtIoQivJXUIaVMPfYomZYJpDXKb2YYJNDvW2OjGZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750738195; c=relaxed/simple;
	bh=4HmEbTF1pG5pD2OXszvoRxaiUgvIHpRFj0yNmUSVR88=;
	h=To:Subject:From:Message-Id:Date; b=bBg8DX/hw0KWkAozpLU+WQB4euMQZwsbfL3lgVNQL64FgOCacOn0w2T7uoRRV9lE0RrUvoQC3GZPEXci7fg5xZ8FvVcd+k8EFjAFN6PEIv8O6CVY6s3fJFWPzaW6PDAzxUsCxcR2dxN/9ghRM2kVW2lleq6J0YqD5RJGgVcQaxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0oqEDE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0oqEDE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D596C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750738193;
	bh=4HmEbTF1pG5pD2OXszvoRxaiUgvIHpRFj0yNmUSVR88=;
	h=To:Subject:From:Date:From;
	b=l0oqEDE7ptN9py0krhhhdRkJH8f6yUvQbDWudV+Gl6qJl7xbK/r+7pZ24KfHj0o9f
	 PKixX6zaNSiQLWiT85UbDGdTafYeKsuLL6xkhi7CEV4OLASVKDV7biPJXLPw4TT4B/
	 ft4WzngGSlHgLbbjOMCqiDqgVWOgX8rnbOF7Fd8IdxPThC+cCTZxjY/okiwJT9qWy8
	 XGJrUva/pgoNQn8TcPEyO+Up46+vB8n/Xp3uaWGaU0xf//aLqTyvmif7WSJu8zDnzj
	 0BwehNS64iiHX3LiGVLF5YQYcq8OZgrWWFEEMu/Ido3lFMQwtSQM0UBz3BBb8Sk8AS
	 7umopC0rEHGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E833C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073819357.29567.10750113497901462933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40df57293def221b2d5edf0cc643c7a1ae9247d7b242e1445df50982b07431d4
Date: Tue, 24 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750738193
