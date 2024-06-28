Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA9114A85
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719550463; cv=none; b=GcgG8DAFZO8wsPEDJmkx9DJGZJkuE8N0ptmPKEzZW5+Sgq12d95IxZ3QlOMOZrB9KkiGy/mJG16cJuwyIfbWX+WE2HKz001GsgGRf4ApUD/ELXqxoR6YSbiZP5uQYM9NBxb9LKWIPgthR8Yqcxo+JZZbJh1oZEwGgLzWsIUDLPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719550463; c=relaxed/simple;
	bh=BVhvoTyXsZyfv8Ayfpr6qGsSw+Wn9g0emaOL/qjh5+M=;
	h=To:Subject:From:Message-Id:Date; b=Fk5uoR//YeV8zlkZnK14F12fsUhseYU4PY6mY9cnQ5HmvWJW47tTsloi9/duJD9CMjBkdfdRBt5IPa/bgmaz7CdmaQV+20aIiyrZ8FNgIZOez7G+gcQ8W+DPXZ7bzJE570E0ZZiKrgXCdNfpqRbfNwVTp7/WDXZufLnavBiYDJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzaqEubD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzaqEubD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB77C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719550462;
	bh=BVhvoTyXsZyfv8Ayfpr6qGsSw+Wn9g0emaOL/qjh5+M=;
	h=To:Subject:From:Date:From;
	b=DzaqEubD9vv16Ji2IX3yV0NY35r76nKmOLDAF7PuGVnG9twdJ6qMW44qS7bpGoCnl
	 A5W4kc5Fd6/mdkYJTgitzuveCZM9hUkG0ayClOZ8gUocMnl0PuyyY4aoHvdw+d03vC
	 mBel+Nd1vjkblgUbJji2SRaEiPSbCaJMDDncHTkAd/340GDXgSoboJYqnUJbWik/ci
	 zey96ww7AaT/Zddtr974GbbT3pdoEegwvmzybu83PGaklYMT2AOaDmbV+W4VN5oIb8
	 6Zwy13LSfI4+g9hmCXL2pWmsro0fanxKw6YVnHqf4eqL31lboZNrsJiXwglpm3kHJd
	 uXS7MtH0MzKjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7522C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955046280.31371.5424587305841196469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6f59354d3ef078b09263864b57e867d05345aad0a0b24a35b84f60b4419aa2
Date: Fri, 28 Jun 2024 04:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719550462
