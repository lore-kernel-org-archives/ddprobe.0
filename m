Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476CB2D8390
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762578594; cv=none; b=HvGJtbkzs6CzaMP3m3YUqmxRMiNvbSqv1K2++2uOZryTqO3c7vl6Gmd3enhZQ/malPBdCm8a+BweGGOKTy8Ua339Co6lgykDaiLZe7zCBD+wgfKcNSbl2z4gkbtXzsmU2Gnj3cdIMH+N00D0b6eZuIyt/NCaJTxhvWxrgShlq8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762578594; c=relaxed/simple;
	bh=D38Rb4hJD5OoFHjV6EdFJEzCYWFhbvxLLSBKLpX7xDw=;
	h=To:Subject:From:Message-Id:Date; b=hbpbLIGbL3832v7CpNd3HdAAZ5EAY9JhJ2O5ln6Z3m6YmiGOcA4TfYdx0rGZlNk7OJKLMzUjsTbj3bqfhSrGvNsJtmAgjrm3hYbTvYiVwGSTwR5zX1JGMxvgeC7Q+G/FfUGOlwRnMxD7PYNMSBdtKFohvjmzOTJIYzuKXi/LVhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XunBLPeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XunBLPeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A681FC116D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762578593;
	bh=D38Rb4hJD5OoFHjV6EdFJEzCYWFhbvxLLSBKLpX7xDw=;
	h=To:Subject:From:Date:From;
	b=XunBLPeWQomK/XW3FDYa94P9eWjupSvgOmv8neG/glDpKGtNY7wn9Eyu6KUiWCoz9
	 UdJ4xfctPYk0jNdDqkUoy6wnXNuko0MVVtHBgUOIyz/kNZ2HglTtn5SJSIYqaOwZm2
	 mgx8KDNSG5bs9iXIzGtWZtYenJjsf275PFiAR+CBGyGVySQyZ+gWT46K2iMqizQtSC
	 Xx+2kJp7oRajihfReCSBThW5nJ6JMRXKc1viZ/+rRYTNJBvUdLPdsC2ch3OGsTdblk
	 WBG3sDGZP0/VpG3Djqoo+CflPqrP6D42g60fOMSS2esfJ26lR0xghAuSZBCJ/OITdG
	 S2zMF9R8zyNfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9914FCCFA05
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257859361.17764.5257401223047490483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f66dc72cbb984462ee54c4bb4e1531e1541f63588faa6d17ba6aa85a5606bb0
Date: Sat, 08 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762578593
