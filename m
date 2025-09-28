Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1560A42A96
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759024795; cv=none; b=VmA342dD8HRwwFQpFaLKh/+P1FGUWhNYuaCptMn8NNItFA4T1zzaR3b+BmubLxRbIAHJLpGJttJnCQdzlXQuO2X8sZ3KS62J5/csWm7J85VyVysy/d5UUqSJ6P3mPDM0kcBaqHWymCfcvy/TKjajSMZy4u4VyKw6WRLY4/HKBkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759024795; c=relaxed/simple;
	bh=ghn6s3ZvrN8KFpL+OUfYiUdPmVClsP9R0hm+YOPkcfU=;
	h=To:Subject:From:Message-Id:Date; b=QwfjezufM8Kr0cyEF/5R/9+ibfe5vPDehkUfTkwCJPV6kl0qRkOjjEt2qhNZd0gMjKFH+S8TTUVgzxVKnAa+0YlK1atabF7TlQHBayta29PLd9rdP31NTqDiObH9pG4GUKLOhkyZ5YIH9BuB2/Z+k+4Ml4qdWySGv/Lth+iCwxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPWrHPQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPWrHPQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F528C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759024793;
	bh=ghn6s3ZvrN8KFpL+OUfYiUdPmVClsP9R0hm+YOPkcfU=;
	h=To:Subject:From:Date:From;
	b=rPWrHPQ7eEoMsIBwUSv9rvGg3PVsj/JetPsrmdjjoZU2tzQ9P66ixGC7xLqNfJuSo
	 pncm3lds2Gfgdu53eBfZNMGrWdrWvhZ+mLhT1vNWx73K0UJIZ6LCR5s6IdHu2R9rEt
	 JpVLv+qyYp4C77W9ZoUBJqZKYuOM5PiIDgw8kVGLAd0zWSUrSRLGZ6ViZeZwA6/Z9l
	 zpXYPqD7fXDbuACEVNnlI4O9X1kx2abyhGF8n758bgpMcEfO0PqdnIjePWQOJpu74h
	 +HXJR3XJZzBTzCYXpstYRHuEgRw0D+bd+rkjF1N53SCVcrCbU9r7Crj9d4sR5hzsfy
	 ETyP5PjkLiyDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D2CAC5BD
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902479357.22080.5495549431687981109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b764f07aae3c3756485af2bc42be07a04958f3c21eb53b2a3de7aae11d7f4f29
Date: Sun, 28 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759024793
