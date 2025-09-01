Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BE733EAED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756733994; cv=none; b=u/dkfbYuU8BK4Iqx4YsOLv+PfLah5PwDFAKHvINEDLsmg6PMPqhlc1serALfZul6To2CHYwwzkLX3XwE4+1ZGsXlC0o+gU0nrOG5mEOsxBVxQl5qLre+hA8Kuwq0KbExuslowFqDNWt6SCr0IycKqZtsmlR5+VIn/FaFRUh1HB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756733994; c=relaxed/simple;
	bh=RWN8awKRnSII2GU18NLiHX4iMZ59ROTL8q6hVg61HGo=;
	h=To:Subject:From:Message-Id:Date; b=ek9D9ch/tJGf0mUDsAjUpPu1tuNzg5ksJT6owyK1NGQv/gZ4bUQVfsFeD/ibGiOK/dzpGwtWtbmllEnY9rayFBMCV+izDKuDZ0eNRj6wvgDVuKXjNs6drERuR9DP7sU0g2pxtMq4QASAERQH9n7DlTcpD4GmbLM526c5/vAySDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBFSE2o/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBFSE2o/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EEBC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756733993;
	bh=RWN8awKRnSII2GU18NLiHX4iMZ59ROTL8q6hVg61HGo=;
	h=To:Subject:From:Date:From;
	b=fBFSE2o/G3X2aXDHeSEQnxLyr24YYpIcp5nqjaR0qJzyWzL+09mkXGBoBHX1xdiJL
	 RYTWzJFZKCB1nWXm3uCkqYDmdYx/D9gPWhq4/+hGLWPyeNe/Ujn4z92v6ITw1E/DNw
	 P6UD1AojIE3o/k9YXoPtgi6DzbX7kxc7RX1tzZVTb+bd5x/L70iAVc8xagmccbGelH
	 yGrQTeKbFIcx0zgXbZyjZfkJ+oYn9wcAGLdLKlRA6l0qrEmScX/l6neOqaRpF2/1Jr
	 0lTtcpelJD6pP5x0W3RVlixns+Cs1DfSHbkmGODLTAcTvJMNk5bGsDnyw0p+5/9VMA
	 H5rAhRR0WH0Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3219CA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673399364.16682.11750790173703670606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9bc6af9e423addc30397fa942a2db7e21d01455e02ce9ffe9bce7629ee2467a
Date: Mon, 01 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756733993
