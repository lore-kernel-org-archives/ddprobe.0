Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF132D46BF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752238794; cv=none; b=KMD9aWelvpzPsWu08gFgSxc33IkiKgoVIcPaCRUh9isBEJqSU+cib+KzMevH7C47M5/yGyjnWmG5rvEhToROw6VcLyO+CylcANviDVfsg+57MdqWPhKb7sIluLSZFEECHsowY+Im0oCkQWPOqeKAyLtZAGgCQPwJYk6qzW3PXDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752238794; c=relaxed/simple;
	bh=NHx5zziw0XiVlAnZLPNV21kCKHA8W8KYnujPW56C6vs=;
	h=To:Subject:From:Message-Id:Date; b=qhMk2j89bTymKhkZ8Z9dHyeV60BNdps1i3BglsKYjrYBKC2z5i8n2I6dkvev9W1OV7Te0+aSn4EJiPXures7prqgN77NEDux2EIWY4m/n0hcj4t0Wvchv5SZ7M5JHrd0sEfTZZrNhHeMCuncn3zRHMtSW80facW8utQOKs+36AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/aUSKME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/aUSKME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4421C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752238793;
	bh=NHx5zziw0XiVlAnZLPNV21kCKHA8W8KYnujPW56C6vs=;
	h=To:Subject:From:Date:From;
	b=i/aUSKMEuA9tgtjTibAgIhu7Vcbl82Ty54Ykb1Zdb5KJ0MOTrBJUtDMytZeXKYwog
	 uSQHGqoNO7SzqVVMo7P6NxySy129c50YR3mT2k95n0A3LV7Ap+E9ZEY8QWNYl4f56E
	 bASZ2Wzd0OOn71KP/GnTMOrx3uVEPrZCXqoZQYXk+Zju2wpS4AAHyWSAFTcoL+zIVk
	 lu4m1cawsFTjY5nKvaMRSRx4kXGj2xyYLL0UuTSOwXt6H9XogS+rO6UpKwI1Jcse4Y
	 h2jFwOEnzEr3epTYs1JangVDQxSyO3ZueTq8E8pkKt1LdPQa0A6S5Ej4O9499+Sh7c
	 ad5WJ8WiJNGjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906F7C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223879358.4156.15675926915298381336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cea2191ff02e11bc8850973711d01ecc222f6dee4a41c4e7faf2d5f5e29baeb
Date: Fri, 11 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752238793
