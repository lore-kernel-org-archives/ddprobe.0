Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF89190477
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753162794; cv=none; b=n3FogakRIC3Muaeg7NfDSbJsw8jhKuwSGuXVlESvGSQxQhCTDRZSTdh0WsiDpjzuAh6YxE6fsywH3Bp9bGjb+NHAug7wejCPlKLy8ZRy0EB8D+Adp58lzzC3EXf1LnuwhxD6/ftcmgeWqXdK70ew3qu4XwygAK1qiv3b8qoimbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753162794; c=relaxed/simple;
	bh=wfV4I4t3HGdxIkFKmsgadZ31FhprpmeCmk7axN5EfCo=;
	h=To:Subject:From:Message-Id:Date; b=jXYrEBawDkb2rGs3kKXOzJJT9gav5OzqaSTh455XDClN5DAeHQS0Fp4gk2ixXHR9IKWQq9aRzwlX2Y8gde6Tg2P7Z5XI2NCsx88pVCj782QtGpdIvuzXLEBnP+Orazi1/ukhwvwzdKo0fwarlXjpULSif9MAy4eUG3Kmuw/67kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1iHOU1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1iHOU1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A98C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753162793;
	bh=wfV4I4t3HGdxIkFKmsgadZ31FhprpmeCmk7axN5EfCo=;
	h=To:Subject:From:Date:From;
	b=C1iHOU1Pf+viZX7jpdtoxNuvY/oQKI7/mQJDSMpU8lcs0zRFI9HdVvCQKrokU9Jho
	 31ex0eLBcp2RkGfy80c+IFX9RJcBMRWaCaWSypk5KcgglybSpXHHFvQfJ4Rsev2Io1
	 lQTqX4DkgLiYIi1G/wbx0FsooWFYOw2YG2SpznG57TDf3g0aVPo5XJnHaBfOXml3Jz
	 P8mCo3WWUTb0bcI7/4I2+vikkv9twE/tKrvhOh7U2wB7STxgdiqSr+8kU0aCIVTo95
	 A23X11AdGZdWZ5xqHKn3+pp/41QdXHsUdqR9W4Gr3N5TAz+okfmInUP4xfOphLI4ig
	 OarYDH0dWfbkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95385C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316279357.29403.13267951390985520866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0134e3cadd2f6d8ea5b063a7ff822c41f79a4f504c5839cbe9108ccb848fbabc
Date: Tue, 22 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753162793
