Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34483370D56
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780027954; cv=none; b=raQB4Y4PSkvpNn6EHeNTy0Gus8aFO7nfTuglkw2Gk2LiDyfw4GI8NOhr+yYyeVSZ532dc8I4ucb9Rys3jLaL3gwHjIoHWDGmvBgJMkZfvYn958AFOUVzLKOewGx0bup5PwAX/H/0MUl1WvqjFGUBsdxxx9eOozAt1fIbn5W7MXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780027954; c=relaxed/simple;
	bh=zbHEdS4pL0IK0BvnXYDgpKngTfQuhU50/e8yPAUCIeQ=;
	h=To:Subject:From:Message-Id:Date; b=AmwFXJD06dHmwl4AJOGmREmp00lhZXhf2yA1vGmTlXe1kEcRNKMumz5ykXH0tzNyhcNYm+04g0+zRdfxcB5008QM0CFrAmZxrYWAUp76lcaw+WMFZkufUwVBruyggu/ajEReKu5Y9F25yNkaVcpHLvI+S9kJMuXUkZ7nCYdQpN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRpIa8t0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRpIa8t0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E25C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780027953;
	bh=zbHEdS4pL0IK0BvnXYDgpKngTfQuhU50/e8yPAUCIeQ=;
	h=To:Subject:From:Date:From;
	b=kRpIa8t0aFWHnBMU8JaX32JX9QFRKB/CcptVu6XUNxZ+coyyyxVxcmyKsOB8HyLd3
	 G4BTg4L9q//FtWNDJgigClkmKi+p3fTjZsYbRah2ceukB5Gsb0fVtWmGy8pEIprU+H
	 gSOh4B+BEiLRL4yDPRdinvULrfMKZxktsTnhgUxkU4mx6ZyIdaoo00X1ifoGHJPtUR
	 X7lWk/UqZbI9O1rgCKHY2LZC7VvikZ4aSfBEKMs74d8yHjl9JZxWjEKvXty9D254Yp
	 79H4+rCT7WLONDDiskUSBb76lnQc59zlQ0daQwkwz/XePKiKn/NqU6h87BoUWxEld2
	 W0oXSGAzYGOYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD82FCD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002795369.7200.2068086478240107988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529defc26ffc61eebd2d259a14fca3f0d75e48cc4504ee1215b912b5d00458a0
Date: Fri, 29 May 2026 04:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780027953
