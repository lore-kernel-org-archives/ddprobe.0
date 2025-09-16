Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424452F25E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758058196; cv=none; b=qiApBOPT26lcmNCxt/4XJQXOCEaxeMOpHDaBiY440w3lMMCm4+f2DA9lUe+/S3kGPv9m98a0hhRglxJ1ooNd/+jvJxuVx3CMt5U3ftvyv1WtVlyjv0xyylrazBhCl3iMfOmhc1Ot+r4QcCfsetArLlZqXNPPurYl/e5gMYCenu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758058196; c=relaxed/simple;
	bh=V8BAZAgDGVqixxb9lc0Kyid4SWjjwdpRJNtxyNRTLpY=;
	h=To:Subject:From:Message-Id:Date; b=EMWvOY3I9kUh67zbLkGOZdl11YDwwRJ0YFlMjuvT6FbqqvJhShcwX8A4ikEmGHeybS3gyIF/0ppmPWdKFs3ZWNXVdCAvru88rEKR8JJK7w1aVV9X2lPWjPmArsCL5ljoPe4Tmo0+vdPVP2wgz/WqeclKQRfqAwjiu5lW/P5cGFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lzj6hqJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lzj6hqJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88E8C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758058193;
	bh=V8BAZAgDGVqixxb9lc0Kyid4SWjjwdpRJNtxyNRTLpY=;
	h=To:Subject:From:Date:From;
	b=Lzj6hqJVaZdqv+FqOORsAcpIVBA3A1rUUxsmZkkuGkS7CbEWQo7qCF/wd678T3EqA
	 Pzh4OgI03Ey4gZ7Q9OpK+iOcDZHASiKqQf84ZBiZbzQ9HumBEOYWOUHFilx2yGSxcF
	 eezvnXchMWnYEwhJSicAvn0qOCxfZjiM8k1AKmkJGQlpWyDVK4mjfSXUNv6hA2CNGl
	 Jgaw3CScMVF/juX/+Fw+wflykNqU1GJS3t4LZi3PUv1Fhw/L28oxGTiQL6SPCo5Fa8
	 /NQ8od9pPUTcUyV7q2LgSH4vncoMlDNvypjVodFu5dAp3vkAnaSYjKxF/NodW4eqCV
	 cdueFVKZIr21Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92490CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805819357.5505.10736785042610239986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ea24646d5e0bcd2cfda9ac7660e73e2ab6d57ec7aabc3ca1e94c4f88d1ca1d
Date: Tue, 16 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758058193
