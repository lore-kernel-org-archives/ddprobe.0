Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBC615CD40
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 16:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714666943; cv=none; b=H4DoFcTE1sXy3vlQFzMYWk7DbAGpITSZCd+tr8gEl6VPlLFSng1ydiVZOeUEu3bW9Krx8zQtl/LJcQOJf/DaUiu7ZXFHgYaCOvQ9d3uFc4VhnGBa9sqzPbhT5dLj4Ol/kCjoZGHEWH5PcQ4Ex3d2HHfWQPc5d0+VPlHatDEXmm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714666943; c=relaxed/simple;
	bh=9i7t218fJPhuHCEn7CgzIcMtvpoB6vompidZlKXFqV8=;
	h=To:Subject:From:Message-Id:Date; b=BkZR/NWeK98ddW+qR0KdUvA1rKXDGEUEGO/SIrzfxEsP4lJvxeztAkp4Z0HCrNr9lJYugLwAwcCIseYUoO+h+i7mZ60Ey5G5kj1e+/36CRRVZOhGqhhGr0Y+i94Ox1X2Z17Zh3ngL5BSJRdYs6rVgzlsPVg2VrRs1BWXPpBBjZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUR7VmwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUR7VmwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D0BC4AF14
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714666942;
	bh=9i7t218fJPhuHCEn7CgzIcMtvpoB6vompidZlKXFqV8=;
	h=To:Subject:From:Date:From;
	b=sUR7VmwNWPT07msKZO5/YiSTQGFMN5rmrZu0km6CHf0NFjR+v3Ju8RKGLXcC/X3uu
	 +vKegy5GkbNlsj1Hy/jVx3DVwrCxD64TX39u/SJeieWjCuX/uroyErYHqL6OwOsvyM
	 8OV05S17dYsLngtH3OZ0cG627gyU8K0mM06Q5WDFYh5HK96AMLglWtWEiwq97eMiQ8
	 Dk0dklT0MaHhEtyBrMQXFWfRDDigP+/g1266qgFnqeZ2zZpBPIMz0O4u257O73k9hO
	 GgqC4BLPsyeMrMDgTSYEk/QP3MyFTgN6xb6oDlF/QpS4kjxo6sBDvqpxL0WvusfLE8
	 KRK2Lwi0TlQDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0071C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171466694277.19626.3708140511477249190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771346cc1e8d497bc5edf06c040ece387baf820dcb34bd3ff5683d38ddb59c6b
Date: Thu, 02 May 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714666942
