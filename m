Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F96A35A925
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782107194; cv=none; b=f0xi4OUAeE/Gs/YgYhfprSyizkUWYjs88PWQW63qPRYtok6aX3a75X4mBKprnHNVGSkopEKMZgga/0Y6AL6sOP+DG/F8IsH/BYbf1ydx5F9bv46DZqAUYO1qOKuyr1LXry9tHkFeKuj8twcUd4kUw4ycseR5kUVvOs415aH5Bv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782107194; c=relaxed/simple;
	bh=7SSA4DFFs9y71UWZ23JNZUMW0DV5KHzcqZ/GE0PEAGk=;
	h=To:Subject:From:Message-Id:Date; b=I/5iqeYh2nH/6jlhimAX9S9suK4G3WnvFPyGVoh4f2te/E3IBz9qoqYyBy9bTVZ0kiNaMeq2X99XuOD6OITouDvq0Zzg+6j5oom9YC6/2N7ArdSRqYiWge4yhWbyq4FYDjfmEct2zFjfCQfQgQwWhbqKDn52j0SeesEfkx0ZESg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i93zqKxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i93zqKxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AECC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782107193;
	bh=7SSA4DFFs9y71UWZ23JNZUMW0DV5KHzcqZ/GE0PEAGk=;
	h=To:Subject:From:Date:From;
	b=i93zqKxybbhyqs5M4YWkZI7ZUFW9L/JVMLjHGRv/XydFNwI4GyNpRfVTU8O7NE9k/
	 EWVA5zC7DAPz4F6JS6ybx5YWEgsho0qAjV9oqgWOBksAqab4BY1i07NuQWUDew4AgB
	 snwrlSG7vDKRz2zfbVnobtZF6RAAaXdlV9Vxiu4dr7cwIt2QbpHTATXYd+mGC50Ewr
	 B6q/8UxUEZctzc2OkegfTI7TkaPeS9wHVVheezVlgT6d7FAa//f6VFBjsKM98Gd0KQ
	 /I0o2vYEoEvlYD+pmr0AuHLSpK87caKc8Imr8ldgMitGYnYSZq+NpggQfF1Sli5lEC
	 C+XwebikjjHCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA480CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210719368.13882.2596728790630794926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f195a5b5d8e31bf8513bdca2c7bc5a9e6b468e43a7dd9bc5646ed9c7cc34be
Date: Mon, 22 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782107193
