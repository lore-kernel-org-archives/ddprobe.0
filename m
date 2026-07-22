Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F78F3E4506
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784753974; cv=none; b=BBsY48obk618fHFza+6KYCzf8CmiJmflQ5GDzcGJ0SHIToYKaemX/O8JZ/udS3rdgy1ztqU3aEq2TmPShBQi4P6+zGmAHcV3+PAns+rSA4/QPX56mBjS7nLN5OLEV8ohItPBA/R2WWLUkcOIBQm0rhe3YhORBP8JYrufV1uwGDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784753974; c=relaxed/simple;
	bh=KDTNRL9FYiJ2k5to2lE8kgbAAIRkyI87xlTy53bQNE8=;
	h=To:Subject:From:Message-Id:Date; b=Y+1Zpwi/Q48BZroseNejdBQvS1lrciuIORmKh8MbNf3loIdQXUYxJ86AMNEK1xWLw+RNYqv6qBr4+Kx1rAjpodKwYgGcE6ZnDoHVcPmFsQW7+UlZsE+XPb2+Cjz4vxCeBtk9G/Nb6nqh2803N7kXrI/BHIJlPgfTY7h6+m3mPdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhVWhfGN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhVWhfGN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A07C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784753973;
	bh=KDTNRL9FYiJ2k5to2lE8kgbAAIRkyI87xlTy53bQNE8=;
	h=To:Subject:From:Date:From;
	b=bhVWhfGN1jyGq3QdKyvzAb6rQKEaZKh+M5yJD1fVSglBOIIa3pUkvSZWBkECtgjAW
	 kONJ+9TEBr0zH6JxVvZdoDwhWulPkzuAAtiRADrR/s1N9XBaK/rNkv5P+e+l1rSwdH
	 lFiVX5fBiJYNW6X7eHcHkr76n8W23zk/a98INSjZ2LvFYj/+Q3ZtcvFm/kRSPLVZs/
	 5X/tUwOhC5wGbqda4aSPlImedz+WsaxHFqCxfUgMvXDxRxr8hjBY8RUSn10hrEyUKu
	 ce4EruQmvOnNePqV8GIrKCVr27vav6SZqIO0jR9ee+EEFByFlMtYv1bKkjmJJdexWV
	 4aw9+ifXOheGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9116C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475397374.1668.9404007319296469122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afa64d0158a8d770bc63ef1462a280ffafc2d28df78e3ca580d90cd02c220a1
Date: Wed, 22 Jul 2026 20:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784753973
