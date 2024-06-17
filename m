Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3166E1386A7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718638703; cv=none; b=Ryls9ardwANxQiCn6NO/465gsnuGe1coYZaH68CkEgcIxcwbby/GQryfgaGj4aTmhseDmNkqnaxjQrdVLj3svpQtyJXEWwe+CnvIXAulKCVcA1R0Myc0X4QqtYAkg6gmLIRrsvH61taKrx15Vk+ECKmWGsvkOn+T4Hl3k5IO8GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718638703; c=relaxed/simple;
	bh=h91b29LSky/yU7hUEU7wSrdM8nz/fM99bhiSuJ/Tquk=;
	h=To:Subject:From:Message-Id:Date; b=LvAPTWkm9Jr0FqsWWmas0EUlBy8jLDfbZrIVW1QApHo16Zhoz1ZnBUJkzA/97obHEC/xwupWV9/eCkksbIegFrGrKapRe8a4XFRzpZsKND9t8OBsHDkoh8KmodtiUhsC5N8vDpILXuJXx4S3RKK1+p2tdn8AZRzb3H3UFZ6tmQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgqIzz+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgqIzz+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06058C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718638703;
	bh=h91b29LSky/yU7hUEU7wSrdM8nz/fM99bhiSuJ/Tquk=;
	h=To:Subject:From:Date:From;
	b=mgqIzz+EeyWv/0c71Xb1R5lx8Qw+E/b3a+gh5p118TdawuY4JL3b2slpy5rjK9XAv
	 j8dIKrI6n7H5JYJcZW5RnfKa17pi7dknQt45RwijzQxXwQTrY1UmVuNtR002MJRwHC
	 7VICA2YTT19ntQFL8wQVwSXNU/xtizutT9YKj1+Sp/it77XHbimf7Bv4uVVslxC9Yn
	 zfVCTFZ18skrTs3U4xioIB9ALq0JGzPkW0Eiu/HGgMfcAVXZ8Um1rF76wsheG8n98P
	 NxZ83Ym+a1nBn/sfAvWXrqnSst7cY47ndsM/D5To16USsHZ8d93ZVmhivAG7LbnLfg
	 sgrg66Mpxptpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D976FC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863870287.23469.12746728863521926729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6671c0d4a2d8341e67ce15597aa3b5ee485cee9d69a525c7a335ec236d75f12
Date: Mon, 17 Jun 2024 15:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718638702
