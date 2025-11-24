Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2989B27713
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763947914; cv=none; b=axk6jsIhxAzgDDTBTjSPq4rV1Jg7IDv5Gu4OEqwjEWPuMMYdrHK2rXyojlslnMRcyEU40jBio+RG9nelBYZExdpqg+ikalwdkglPoOwAyrACQN8YR4CLFHk4wFBp6QjEsZDEIR0MLDwUg9m47usVTZUEYsn90lD4EQni6shqDds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763947914; c=relaxed/simple;
	bh=LjM9YX7+IViiwuQ8zqRZAyMdHRx5netqdjFMF6aXeHM=;
	h=To:Subject:From:Message-Id:Date; b=TffVEE9gxdsglDLn2u5/qW3ShS0TrpJev6KXJcNYzxoQIsRaA6HjgjjTqGCyXBjxN+6i80a4DMVnFM/0zM2F7RsUzFlbrle1sdyF6N9m/4gt1z06mWDs6LQzP6kHxMfpsiI/DnzmM0F0qbkTdTSFtFdV8rmtfGGC7HURiI0lk60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsoYea2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsoYea2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CD1C113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763947913;
	bh=LjM9YX7+IViiwuQ8zqRZAyMdHRx5netqdjFMF6aXeHM=;
	h=To:Subject:From:Date:From;
	b=nsoYea2QHoKe9CiG/4UdNLW2h5fShps8zFUfHAImkDlsB61ifWaNXKj2X0mRpy0+W
	 yxf4rCpkWF7I2n3bjKvakKmG338wmOQUcnsDq/gtCVDvCe3G5fjh2sZOgboAYl9Aty
	 EgtxwHNiK+MCiDqZyIDXuX6yIn8b+4z+Kpzo32UZre2XmtmIg7TYnc80H9z0mSxbRK
	 FIJv0h8zyjUlmBokcET2AMjZ/+6ev8p8SItqVu9m6AtgOgEQSuucx50E0t8n/9MDTT
	 ZecqgXnk1f3uFtRWY0kjBCx4BpzpTv7xhGXgfIQ9ODZGi1bHvWY5QvbGc9XaYcuRQD
	 b/OskXBmw95Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961CCCFD2F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394791358.5372.6282760964488701897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c51ad8c3b2000e6804289c6b0f82fe891a793b2b20ddaf2eebc0fbd58c38943
Date: Mon, 24 Nov 2025 01:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763947913
