Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1660917597
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760612394; cv=none; b=pE9x+Dty5GOhboZbgH+Iz0rgDSUdIolDsT8J366fsfrWoSKmh/eHt7xAft+p1xXtccqLQumVmxi144BNZSfGyNLG90M1nJZBPIhsTNypI4v2UUsBgA1vqKcUqZCE0FgDwESfM7vGtq37PviU47JeD0A2tyhW/9nfoCU+Eo5BvmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760612394; c=relaxed/simple;
	bh=ixU4+Jg/xpCgy2EF2qhuo67gvS4NHJIfy4sJmCHZfMc=;
	h=To:Subject:From:Message-Id:Date; b=E14h0WaXem2t8dKL2OhO4KBvtJB8pf6s+PLzPWAJz187U7ktoX2ck0eCDgJjjh3S3QgmMM5E4vj3mLhXRCav3MDuRaqfweovz7SvpgYfOSwK3NKmS8G4Oq9rE1noZJ8eeapsngwbQPTl+YCFRgz0uHdzf6hl/pajkT72X2mUZpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZnVPiA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZnVPiA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BE2C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760612393;
	bh=ixU4+Jg/xpCgy2EF2qhuo67gvS4NHJIfy4sJmCHZfMc=;
	h=To:Subject:From:Date:From;
	b=EZnVPiA15LTWYw/+pRaartkjXq4/JnvyWuVREoMb9VLHS51qhmdb47Srcosg5gsNZ
	 VYJXxSZQKi+bKyM4pGSg8s+ha8VsN64Ngg+96QSqVzzgo/2NfUm8uUH74c9KAlUxTK
	 2Kv7X9zuJJ4uxN9/OGu/tXS5fGW76Zl2Psk4Q6WJ9ktW8GMC/EUQlC4D87wwYqOxmw
	 nhOxA2AFy/Eg/wAogrpcOH8xpBNcz5pj43iY8cKz+d2QsMY0/39YtjUuV+uDmv5GQV
	 4/TgyQt+3zolYAaK8t0tLIXZffSuA97EeVFYsvM/Yoam25lCkAfZjFt9M+YKbTYEiX
	 zEhPOxficwh3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BFFCCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061239359.23939.15742471312530586307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389c41d7eb7feef16744c20b8f43a7c3ac09ba2d9eacbb95ea3ca41213f9741e
Date: Thu, 16 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760612393
