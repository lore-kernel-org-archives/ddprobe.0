Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267351A275
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768798434; cv=none; b=CvE9EQ4h4vmlrbB7NPP5wpXg+VQQm6XKisyKBGDslf2esYU6oPVH5Dx4xj5QOM32XSshD6ukSzPtqq8+APZwLKAFoNKFQ981gHB3VsIkE1hpPtnDmZvdlVUGJTPJjwvSRmAFOOurGBwzCkUxOw6iGNcfro1H5Gw0n8l47sDQAHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768798434; c=relaxed/simple;
	bh=ILaxISJ8T8azUCTWwbmu8uJUEIIw77wjG1TbvYUtFSg=;
	h=To:Subject:From:Message-Id:Date; b=CwsZbsCbklwqUIc3jEyBux8ZBhIGP7LtQ5tQHHgqhXU5TYYzKkMZgGbl/KgxPlZ8qOSxHpFhHT2BsVK69hDNGTLq5MAmL3/gG5E+/vppoRSCjAMUJZJocv824eesflYtxLl1LCss4uZoH1gnq0le9zQvBOQCAfyVpb7ohurlG+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUa2weWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUa2weWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7680C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768798433;
	bh=ILaxISJ8T8azUCTWwbmu8uJUEIIw77wjG1TbvYUtFSg=;
	h=To:Subject:From:Date:From;
	b=uUa2weWGqroqaPVAPmIYYWSAkLWk58J7U7i36MwUiN6r9tzkNe7rsLK2/+A7INu33
	 iH7F7lOpUrdPDJz+X4FM8KTJGcfsVmXwwbgi0a3u+NzvAvyH79fy8//elVuaBuUt48
	 ayJFoFZ7JuYEnOxjTQyxNUfuISrbIRJVBndlYSY5BEh8caUjs+QK+QTo1mqxNPrRBE
	 e8xvMXZqX7SSD6o/ssQhA/Gf797946+MkuEBPMe7iVtiFaP4cpUmvoECv/feb8TFwF
	 7tqN7DchUlWSV3Ex9aHHMkSGyk4DrJDvkpTpJNyYGZaKhfzlh4Amz4bXCt264uT9UQ
	 J1fxRyt8qpomA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B31C98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879843358.16730.5066906101486537257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174e514f2f6bf55de1d19aae046f40d80296f615d511bedb3575663877c1ebf4
Date: Mon, 19 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768798433
