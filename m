Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1738834CFBB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761147595; cv=none; b=QM/BYEIzaayoZ7RDxWjVrg3H9JdhXqWUYhw7hBElcAaHulGBhBgZQkxcR/Cf9wSJE1bos0n2FbEE6XqMetCuKH+HX95RSqnYtjk04ZPL6gQifCILMobLhlZdVTp7TvcdCRp6slH9IjCwIJkC2lzPfobS/hIJk7mqiMyqeD3bHLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761147595; c=relaxed/simple;
	bh=W5Cr/IFC4GpSun7sRoFQ7SjcM2DqE+S5WWp+etiEIH8=;
	h=To:Subject:From:Message-Id:Date; b=aqFohCHFwtDB8WGvMWfoXUDtZC33/KHi6PFirDOHVD8s6DLQL3o9IfHKtsoRTFbTF7PubEgnJ8AxK0evrJJFHA/JNHCPIMeyoZHi0HsJ8GQ6tPeyCgmY0rCfDiqysAl43upG2e7bgzBknpYHR8U6ZlQX82VS9d2sLuYsUfc1iCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpQEGwDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpQEGwDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF89C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761147593;
	bh=W5Cr/IFC4GpSun7sRoFQ7SjcM2DqE+S5WWp+etiEIH8=;
	h=To:Subject:From:Date:From;
	b=PpQEGwDA04rgGkfzD2XgHg8jvmAGOzHnUivYbovTdxirIfYeVRo9el0yFiScgnZ0N
	 juifHiKzP9gAERTcJQSojvRMFpfNKlTRf7bvFjbu7myvoDPCC58HVSr1HsddCJQLnk
	 0YWWgw6ouTqdNAQcEjVoXzoLbOGsr3N8VSb3KkuXb+XyFoXZ86Srxbp3FXR3s6Evef
	 jn+ZPJEC4uNBlG8ADtp5YL+0faPgsnikM2/NlosVzDuAtP9cGin7y8mIUAwhPA15iK
	 zvWPE/QyDXz0Lece5YcNf1ddwtgt7b+vbQK7H9/7GSAQwfOj2VvjpQlO/NeNELBiKH
	 ECYN606LS6+vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9052BCCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114759358.9277.5923759356629355142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b20116f6aa6d1ed07320b0f95e269d0e1525c04152882b0e7949691d57a7bb6
Date: Wed, 22 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761147593
