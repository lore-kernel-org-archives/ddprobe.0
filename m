Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1377C218580
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758170994; cv=none; b=hH+ZjZMO+l90eDtV2+GIrCTytdt1urITtDqXHPWUjVDNHcy7iBEzyDoY1p+MsRsa/Ifdo+pxbWfLYXeKX6g1fs2TFPP/VTtnkAUhlwAwbHxdazf6PBSR1/u74xBxSrjex9evBz3KH3XmPl2n0L28B4pTqzYQKSblEtwz9P6eKKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758170994; c=relaxed/simple;
	bh=yswVfSg4TBUEixEZ5rBrta6YkaJ4FXoGpGf13Ehaxlk=;
	h=To:Subject:From:Message-Id:Date; b=Fd01XBvWViK/AfUTghSXjbBpd3mnF27IuMExyVplqqjskyo7ONi2BBk1tYwoq/AFM5Swcuycp1Oo83h2TQuPIfPWJOBFK+T1QjKJfo0N5+AkgyUXq1syoR8j6qBzKB+5S4Cz8AY51WbmXS0SOsLgXy3JSHWU28KeciM1cZNbYSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZFHFN+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZFHFN+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D6DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758170993;
	bh=yswVfSg4TBUEixEZ5rBrta6YkaJ4FXoGpGf13Ehaxlk=;
	h=To:Subject:From:Date:From;
	b=dZFHFN+fyAlDzzDQJRY5W/PG7ZAFU7a8UzgkOR+rKA1ytHNzU64qC1PZ+guTz454Q
	 qgBrRdLo/AjWujmSF5+kPIhgV4wjiiz514/0CdwbWWGJUPHOZEPntoISWwC9oV+tbB
	 V0m8AYd5wuU5gI6Ruk71b8QmJm+baytVDlSQk0scn3rbq+O4LqFSl7mkTrVocokQGr
	 XLdOaJQPKLaFLxBOprcX35X4zxsIcn2+QR7EpM5wv7/VfMp6H5hflPI/IFQL8fzoWd
	 TDj4nLuC9LKnj8kCpMchCKuiftLj1F2v/AcM64mlims07VnYeI4dG9QiXRBDAVzLX0
	 6wvC6yomIVwmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DAACAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817099358.5141.2323776758856951904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6428ca247f9ac9effed3c266b27a39a8ca5d26f650ea90ceccb6e2869272f588
Date: Thu, 18 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758170993
