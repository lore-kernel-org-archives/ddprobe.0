Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9459D1FAA
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719974723; cv=none; b=GDxc4Zd6IbOpg3sXSrHzqMKw50vGC460u0CRDMUkcdeCi8BGNtdchJeCBZIfbeiyPDapPlX6d/HMqJzRCsHGQoGTbQprlXUBznBhN8eeAQ0vXs3fWpsKyI7U8a6WQCYkNxBnJ+7KGreK7sA++4029IEtIfeoxSZhmZhPKB719/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719974723; c=relaxed/simple;
	bh=phLeFjfwoVAHTYTkDIXArv4xLA9L2Djx0J/QGF2mJVM=;
	h=To:Subject:From:Message-Id:Date; b=icgv6noSB6Y0YE+QCrBmxs35r8vxcTwzbkZn7fJiHTX6vjHYvsYlU28tM0DDgGrPQNgPyn3I5Tb9z3e3pFeIEvbcLzpjbAcz15L2boqzcMM29jQQPxIx15vktOHDYGFLYL+OAbyUQLc+wJD83/xvIHk7xnmOAYfY2EQhalUTjrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0Sj6L99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0Sj6L99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F33A1C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719974723;
	bh=phLeFjfwoVAHTYTkDIXArv4xLA9L2Djx0J/QGF2mJVM=;
	h=To:Subject:From:Date:From;
	b=C0Sj6L99CADE+AtJcorlmqEGHWJt+9ud/MQEp2SleOWog+hVpqcz8BQflABGI/6LZ
	 Pwk5YCxkIRCfAKEs4yrwj1QXGa2hNeQLFiz7PSnnXTgh4omai0MBOJ35FJ9/pKl08y
	 yUH3muhWt35WxbHhrPjBcFbmq3aBlKhWc5YXDlCCp8kLDPq3Ze5wbFLqapBIpgi8yQ
	 12tWxyMlJlloO5F7sevHZVoKzbRrK3R+TPdr2A65+cbez+KjcqAfU5EEXSnGEomRub
	 +m+PyPc+kXi4qYnoLxhjbTrGQvQS86y/ukPKCVNelsudOMQS0fa3ZIr254s7GG9cOA
	 RA1yzzzrJeEsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D837FC30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997472283.24282.12891508293511576416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc064f419acc85201b08d28812e2349f7084fb492ffa1d53e5b174629e184faa
Date: Wed, 03 Jul 2024 02:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719974722
