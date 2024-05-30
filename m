Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EEE7F
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 00:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717027463; cv=none; b=FH5nG9XmNxNnNaWwq3G+tZSPrx6wnYsRonbPzdOXi/0YU0oueWd060732mDQ+1k6gmzGUmyFEML5JY0kGXupJQNNOqs2Mwl/cgq5+daOIKlzFroAB8KO6psnHr0nd/i9Q5tVJKNZNP79yVw57Ur+BO14ZpOSyQDChf659NLDUsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717027463; c=relaxed/simple;
	bh=keHtUf7P2SGUK5ZAUXpERv6/TdwGzY4/ATfIOsxg0Kk=;
	h=To:Subject:From:Message-Id:Date; b=lrdiLAwlZkSUw9FxLZuVLyg8CyiFCoTfqosY571h3bm92ZtAKK6yc77T2o3THoO15njg+/oHbBqOXzr+NRNczThH96sktwDWoio9mZhl/qr8cH3uojbmrIV+vdRPixrj1mnIPGR52FfUJumVLjnSRpmQkmn+P/479xHatppWnWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5F0hO1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5F0hO1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DDEC32781
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 00:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717027462;
	bh=keHtUf7P2SGUK5ZAUXpERv6/TdwGzY4/ATfIOsxg0Kk=;
	h=To:Subject:From:Date:From;
	b=G5F0hO1L0r3sMyUH5D74/768oXmYJSP4z20QZCdYCzxcWo5ddQjGbX6B4sIEcUqCr
	 YiwzH8dUXUD/uIl5/mc3syuEteZ/nZ+iqRZQ1nGa4s0ItuqPMGdUHm4wZ+ht8s9ccD
	 eEU4pAxWfz3OShIiEDlVEi9QyzgPm/FKzDs2xP16QXHE8eDvmZL92iRm9E13TX1Q1m
	 5v4PLWr3CLQw4R86tdGcXcLgrQRJhB3e3i7exu/+MlvxutqQy6o1M+hJv4/iqsXLI4
	 ECL2tblGCYbpN2AJGiRSo3PZcRx7MCyi79vwmELAVOSaYFccprGz6p6yfzwnlVbh+l
	 +Cuh+EeKiXKhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A45C25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 00:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702746278.14645.15521049420358433741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c239892350fdb8a622334c0ccf38ae98d316b1842dffd9727449465725dd94
Date: Thu, 30 May 2024 00:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717027462
