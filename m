Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1164D1F5834
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752356994; cv=none; b=VLFl2U+J/m8Fa7mesMKb0TgWWmDLsYDwZk2DypS1mub4yCESbELVMTenulIPYU7rbwuYoprTJ1PcUN+LHLzcQt1NvDNwbiuAvvgQl90d+VQpsXvBhsEFVesTUILeztV9ro4U2KV9SKNGzBbF2HtykNc/TacMg/7MBDM9vzpaZUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752356994; c=relaxed/simple;
	bh=pIkFzzawcOuJAM2CAtCNvRKdu+q5OsNJNvidOXHFfYM=;
	h=To:Subject:From:Message-Id:Date; b=I4I94b1npdL/nVKHiDkahWlJVzeTHIOfsTZ7XeUBUy6y5pXKHLOussR+JrjDofpxry+gTaFJ/a9w6KbTnV+NWjAFQtNLo8+qYm5WTU828SKy5rHPkgalkWX+AIeAatSFU5o54KmZgA0DRnte3TSUKtLiuRGzzkm498ni7DhFj74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjFiRenu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjFiRenu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41CFC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752356993;
	bh=pIkFzzawcOuJAM2CAtCNvRKdu+q5OsNJNvidOXHFfYM=;
	h=To:Subject:From:Date:From;
	b=hjFiRenuGVD0b+gnYGG1A/n7Qa4XJbz3MfNpcg0sSNIdaq6VVoYyvbswlcu1WxvbP
	 UYCz1L4shhPCf7/+73GXsfwbBHw0NkgnMfgfJ7dC3U525IncMsHQVc91CKwnZSJ4Lr
	 nQvsXDAPn5dl1t2P28gKrTJ2EWXw444sDexNIfm4uZ1y192zIQdD2yU+lyZ2z/K4D/
	 t1YdKW8ymMJIduAc47Y/cuhs1H18VXRployLowZXas8WFeP+bd9Vdfunn1OTr9BzVt
	 opubcAqzcBrdglk2FkUVI4bhKeO7VQa05OtahvTtoO8X2p86+w22M1v6QRedjzr4Z9
	 pOlg3NnpgQ+sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B55C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235699357.27618.8571289382728134873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611f7e577864a9517831cd1b7e0b2c4b178d1955d757e67e8f9b0bdc22fdfdbe
Date: Sat, 12 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752356993
