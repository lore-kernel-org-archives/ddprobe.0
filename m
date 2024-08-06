Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13346A936
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722904554; cv=none; b=Tlxxebh1kASKjvjKWetdktHVaoLrSAlaI9AGAYf17WNyiep1opJ/ChqdZR8F+J3CZe69pNoRFD9/gS7FMWtn+GIoMT/qJsJRNKDMtS9b2RJNxd2iXxtGAoEAwnj37Y+ZyEEzUVXLJRPouWUD8SF65bz+J9d3pnnoYMYDnZ5OglM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722904554; c=relaxed/simple;
	bh=T0DnhWpYvFi0KNeJyK+148KABQ1I1vma3p1l/QZCNZk=;
	h=To:Subject:From:Message-Id:Date; b=DGRLEoXYxNsGUhnCHu1Sw6FJcEk1YyAcKkkiCoKgQ3pOq3NWDebdCfsP4e/wzTwm8BknRujz4J9r2hIOsftnyliMxj0iUuQAqxXdjYGcqDRV1zGeMeF8nUCNQwa6edjhw2HP3Utci4wTrwJTTn9nMlYMCAE5V6KAjHzaoScymrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZkNWgXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZkNWgXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9434C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722904553;
	bh=T0DnhWpYvFi0KNeJyK+148KABQ1I1vma3p1l/QZCNZk=;
	h=To:Subject:From:Date:From;
	b=kZkNWgXLOMCDm2HFVXyH6VnOkSaSIlDPUnw/YMeXmSUiDYHtz9SYZVZX1Wef3KB7u
	 YwG44P3DIte5D5Rm8wJr2V21hix6ZIezJD2sej4zyTwuGJwyG8sAdJ7XArFAHb6JlR
	 cGzjaHUbfacKN4kVyYbQJAL7cUMqPCL0z4QuSu88XqVKJXQ3i8EDuo1EUSBSB7Gaz3
	 wVNx1ZpyrQ56x5gIXcnRw3NRSuJ6KVPAhGWhoYi7xhhaySM/2JTCGEdAtXDHNC4SPY
	 P4n7yMKtUI9LBxB7PgPs2U2xgrWTrbkaYi2BRl4KwQ7RMS9vRJTgRCxl/n2ryTO2zj
	 yxzeV5ZG/nQ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A0BC3DA7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172290455360.8154.13349325596641261141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0521e930cbdd5c279039fd8a56eb246c9eeefad4e9ff35e4f3e861a082d05b70
Date: Tue, 06 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722904553
