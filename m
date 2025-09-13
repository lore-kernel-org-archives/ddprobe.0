Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185202E88AA
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757758195; cv=none; b=aOmNoWIY/wbsEL4oKpffjWHc7eqlRb0k0BMOJuERem6HiOt8Me00yHGeeBd/B9+s3/h/OglPx+RdgXjvDwecKXF9mHEDKIWuwxlhWYmWIvrPgqCc2JsTgzqgoMu9wrQY6ZoyKNPZM6DM7BVIQiDrtxyNRlFwrcbia1eqZSk8keo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757758195; c=relaxed/simple;
	bh=81qvZtjmaU2itpSqRc8/YOKzehFChxKT8I4WSKZ3jeA=;
	h=To:Subject:From:Message-Id:Date; b=kgXEWtjf92K3U2Hxbz4DonnlOdin/3jTHXWJ1lu0mYU8xnWWpbmgGQUSF8h+wDqNAonYDAoewMHo18LGL7ncPP9usINVgGvvH8kXcxNpKZ4f8PJac1VZtYRkbgufT5KxbfXDBnsL3wLh+jdcHS6cDuUxx/H8Ag6zkNa/XRylyrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxriukTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxriukTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D93C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757758193;
	bh=81qvZtjmaU2itpSqRc8/YOKzehFChxKT8I4WSKZ3jeA=;
	h=To:Subject:From:Date:From;
	b=HxriukTlVhw1WehdoBa8E7BAik+/ArRm8s/LJtBB61xpfkYvDeVC1ywFqoliCBawm
	 qEJccpvOR78l05N9ohOkHeRZRap/8u0J9LXmFRYq5v4ed64uXot7hjlZJrsYsQ/6ko
	 0gHR7Mj2zAXFhriEfbnIa5QbxehC+RNrvj9/gRYembWfo0cLHX+LJ3+kyg5D8kLaUo
	 tHwJOblkUcH6dm3iIr2vcYHMTOB71MO8GO3SNhGxu48zsMiS7PW+y/1qArat4DKP8e
	 lRQzqAxMi+NOP1XqPT2rnNsUG3AjVpMrUlU59I3W4CCTtAY9Xa0ffJ3Kn61wHv3+1q
	 ZYPuubBA0fh8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97859CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775819359.22311.16234704479387888485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df6681c53c926b628a47710d3fee5aa3c4eab37eea1cb4969756fd59a31245a
Date: Sat, 13 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757758193
