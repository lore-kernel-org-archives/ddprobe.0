Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E152F872
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745313594; cv=none; b=j9Ps6ZxSLVQRH/1vhNQ/kMW/m/FBLdoizwVVIpKH4cKFUGUSBhEYW1bOxfeZ3JTDk3UgQ+7+cPg+StKQwcjAepzijRX9vtzy126WGZBd8cOfPKx7HJL8fcEFnOCPkcqC7NgRiLazAUCq6cdEgWFk8LDTb2qbMmox0tCyb8s3s6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745313594; c=relaxed/simple;
	bh=GnnR8fOohJyJOWfvlyLQVQxZHSLpTJHxiwf1JniPirc=;
	h=To:Subject:From:Message-Id:Date; b=NNHdIHmTQOKwV6Vcepj4rwREwSWWCeTZaaVyyWD9pjNakuStsXtn4yWvci6eVPASWF3KiGHUu3B4pAmvbwbopVmzCF3QjlwhePuY0a7ECmn0rZTqqDU4XroNDAilroKFxyXSG90SNf5s4HTB1+T40vp0z36kQ100q5XI869ADUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tS4Sf5cp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tS4Sf5cp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17D2C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745313593;
	bh=GnnR8fOohJyJOWfvlyLQVQxZHSLpTJHxiwf1JniPirc=;
	h=To:Subject:From:Date:From;
	b=tS4Sf5cpsfCDVt92c2jSRSxTFRMFEpXbKmrUrE+lITmMMUOWVsyMjh5zv1RmLKtyh
	 9jZZjOC/2wdYFxFsdt1GiCqJcy/a68jfzsKqxBmhnlSyXBixQDmjShRGiaVf3yn04I
	 yySg+uAgtT/j5VE6SJtw1M8KmBT2JYRMGmqsoVLJ5rPo7loLcfmPCWqe+N2AfGXLup
	 kLsS+cXmwZNJ4GR2JYgORVIHdGUzQ9hxauu0i9DHoEQSeuy6lR8336M+DZDSjBQLeo
	 rrNna04PhfhGc+eY6oBTFuTfbQTrW0DvQptN5AhmFIrio/Fviwd5ZQDMkoAeMgIzjb
	 HztIbXB1ByAhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D42C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531359365.15077.3695003925896787243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5d323e5e3ce87ebc877d9996b7f1957c454e8db70d138cf9caadbe0dd5d3e24
Date: Tue, 22 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745313593
