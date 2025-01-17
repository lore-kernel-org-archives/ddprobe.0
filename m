Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399241FECC1
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737117954; cv=none; b=r1o9DqXGJ4YiIG8/hid84JmcKqeIt5FscLHmhA+wX7BnuALQK0+W03tCKb6T3Y313mFBn7egEd6Fs7qrSTxqtG9BnVxPE3xeJdr/aohd8EttciVRUVK2+V1qRHaKhqbIcZDl/9vFEMt/EEHoDlx8tg1XJMdrEoV4Lpn95MMYx3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737117954; c=relaxed/simple;
	bh=maQJvLPoodIxGLK25yW1KSwuOmWqRjmc680QvIDaBZ0=;
	h=To:Subject:From:Message-Id:Date; b=stoCOBZ8TIdtQCAp3JfbfP7arP4vBtxIolM2++KhrCmGFBfN143Fk944d4C3hcwGU+42b6bMJsHkPPAhyUbH2cZuntRNbTDaC9OhZBvrq9ZHbeP138GsOU4zgcdO796NZRlun2FYXPJVaMCUeQujo6YZFad67MSLAhBV79xmvFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8kvFbWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8kvFbWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E13C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737117953;
	bh=maQJvLPoodIxGLK25yW1KSwuOmWqRjmc680QvIDaBZ0=;
	h=To:Subject:From:Date:From;
	b=i8kvFbWhdtw8a+VnpZDZlB+6umknaUo50enX8/7/SpNzUIyFY8UE2LHBOp56mca2P
	 e4uOjAKMuAR/HofitrBESVwWRjmlUnyw7os3OT2TdxsHbOjcC8iRgeIak4t5PpjrRD
	 mPvhr6ox3jV8b+tcTaGMTeb6ECKjV+KM8hXlspBC6fK64CI8G62dOkKZYZC4VEmxvI
	 5pJQRyB5k1vWcRDM7TsUSN7mIFJwQlr6mdXNj+1skhvDY5FYyQ7GUtyx7SwJrMwHNM
	 SbkVy6JPOD6OPWJjKncIeeytI9/JSZ6ld7LigR3I/vgyRyDhRLbu2As1n08te+FvaI
	 JpEpT8zdmXjTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3F3C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711795362.20720.2737610520875475846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3035910718e821b8e12d14cb4a42027cbceebf5fb086b500936df9dc4483fe0
Date: Fri, 17 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737117953
