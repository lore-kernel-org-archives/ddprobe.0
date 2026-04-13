Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DA17DA66
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776106054; cv=none; b=DaRDRz0K4vSzrT+0g3cyRfMtuG+w12yAPadG097I9MY3PIvv8nXPNLrtHVYzGFxACKq8H+yJgnIDWi9tPO6/7QT4wgbarnm5tP5/n2cngz2M/ZhF+xaZqxkwZsBGBdll/YqUz3Ipm6C8Rs6Ya9weXUjhYHd2FSR1YWHzCx2n2i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776106054; c=relaxed/simple;
	bh=+Nl5BSEK8USgB+8/9dsAoWkbrtUqx3hYmJUzTV2263o=;
	h=To:Subject:From:Message-Id:Date; b=rYc5kMc71w8PXqcL25QSzUl/MT+/dTB1j+L0MrcfzCFGNJ4d48q8X2PfEtDrJVoC15a7tsGsWLk7QmBFyywGZxv5JQ7YGyquEaNaLpwwtr0fWE1Xcf+cyfqDlHLLHD5JzfdvkZj5aPFV24RouqN9HBNfj62EG+59h9hzeKiSHDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ew2TDxNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ew2TDxNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB7AC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776106053;
	bh=+Nl5BSEK8USgB+8/9dsAoWkbrtUqx3hYmJUzTV2263o=;
	h=To:Subject:From:Date:From;
	b=ew2TDxNw8GYAvNNSRnqZDeh+YE/YFEr13zCJ+Kv7SUYExFSyLbfQtuRoycOSA1hlW
	 jJThzvrZTMYr4jhVPozuSQ0GqxPl8wP/G8sw2ykJwuSYH95lC1Akn+63nix67afgmD
	 k2nckqjeD5SUmmiUls1ktvEBMmnE9NlIE8XAx3qCyJfQGQZXRWRY8GShAt0X/1Ussd
	 QNox6zl9pazd/T5sTj7GGHKgGHfsy0RzcnB8Ko/LrTOuk91GpTCfEG/FNGLVESVZ7t
	 7Js9JTtqTe13IO3BdC334938NeqeF98cfvX6EwnkF6+wneRuOHnCu5lEUJ4J6agISV
	 tXqsucyrOnyaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3B7F531C0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610605370.29084.8381130349716437583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccec3e46091d5a36b991c91dace14ab5ab7da044247db8ecff2fb74ead3eb047
Date: Mon, 13 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776106053
