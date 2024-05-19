Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C873DEAC7
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 07:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716102143; cv=none; b=kV60Y1UuAzugh1dGS2JCKYOptyn/N9+8wc8aSou0ADCVRXw2SsYMcl/RtgdQOJCGX7ij3SSoiWvJ4LyP6Jrl+Y97xJJiLgH/KeSSDh9/ux5s374i9NcvqGsE4M9utuytD5vIzfzklGg2/JfiUjheOi7P0aLjzwsPELX2oYQOk0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716102143; c=relaxed/simple;
	bh=IZNgbCE6uglQJizfQSYxH40LWm+64OGeciKW2BVRLWk=;
	h=To:Subject:From:Message-Id:Date; b=GqQip9Rvy9dOrXg2qaUjz2A/diGy9YnQIVCCxs8jxFwZbRurfCybnHrZTmKytckJMgH8s5FyGYi+v8IayBY9RMT1bwD36Zi5+bJ9skt6GQD5bLQNno6EYVd7SScDQgeAOdn0SlZJgemO9UZx+5dSoH+D9aoB4nWF8nXqdIqA2KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkDVuCoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkDVuCoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22A58C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 07:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716102143;
	bh=IZNgbCE6uglQJizfQSYxH40LWm+64OGeciKW2BVRLWk=;
	h=To:Subject:From:Date:From;
	b=JkDVuCoPHOXOciPp/yJ4sEee260o9z1CRDKCHAkFU424zGzaOwKQmlPa6nsFQMKkZ
	 GOvnabzu9OY9NQAajD4SE3W40EiX82v1JlSdlmkdy96FNYvmeei2m8hRpcVkS2tK87
	 /Y5+rbmrk+CTTf2tohRGzrh1taYC5TWUJDiUEtYYsNvYeWx9tG4b9tjJahimdOdPDO
	 ccxAiNbTmjDwuT3kRGw+MNKiq/YgOs+k/YNJo0Q/bGJ8rA1P2s3RhpLydhaOHNf3zr
	 D04VAL/XnqwngsQYYQitC7PVanhk9HWYERQf5VAVVqqNXA5+4hnmtBf1Wtwx08hFBY
	 8EbU1bpmSETCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEE5CC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171610214290.2073.9360645721327277543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f616ed3dc7b7b060c7320060d8022438eb18e597d3f7f0eb35c6e64dcd1505fd
Date: Sun, 19 May 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716102142
