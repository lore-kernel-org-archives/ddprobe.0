Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378741F416F
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743017394; cv=none; b=Rf7lNkwctq5kDRW4id/0mImgNgNizlvBSQhfvAqWA5P3T+oKl2yxXyUoBB/89kDOe1SvtVIsD7BnHJ460hR0AtgFI3kueYQTId3KPTUKZeZWxaP9st8YX2Ij37uCzbF/t1QDuZrRbm4DxV7+kW0BoLpBiZurYySRIKu8sT4IjBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743017394; c=relaxed/simple;
	bh=PwDMVip8QGwtBFUVv/8xz9JbcIT3gORhCc7kOVOoTDE=;
	h=To:Subject:From:Message-Id:Date; b=K5sTrScs7q7oyXfOeWbH/IxUEqLkK058BZP7wGFlKsu/SLYbnocF9Y2R7j2dt9rtdH5T+fbmocsFnN7YkLAJtcFyMhc4vSGAJd9CXXOuVOfDAagNpR8l+Z8AIruXAenhTmF7f4blA2wZ05DkIEkOp5C6xWtWErYFZpoWjkPYdmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3mbHpGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3mbHpGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2B0C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743017393;
	bh=PwDMVip8QGwtBFUVv/8xz9JbcIT3gORhCc7kOVOoTDE=;
	h=To:Subject:From:Date:From;
	b=t3mbHpGUMEbhZR8nYOLOC2pjnuXNZdqwTd8kEUjHsAJF4IKj+YZ1cTNYWwEPSP1Yg
	 54HuqjiOVphwsdCIJqo1x2kwySh2h77+3Gjb3TTaeWG3DQnSvirLI+MKLgSNq1iaF6
	 8gdOA8n5bZ/DQp/ft1eGn0yrgkHDQupLNTrlG+K2e3Yyin9Mehraj8R8r6lkPpmNqH
	 4ZuSJWsvWoT6zQtPuClO5Md6BdXzncvm7mqM6YcqJsIKRKBKzOXa7bdvsjwN2QNMJA
	 swVJXjTZGdm8RCzuxy/LNEVaHDmHob+mTTg6L3yCSEEmPEkxJfr3YyCOav5ByOhnG+
	 xHI1Lvy+1UZlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981C0C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301739360.24083.1535960731970294954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9459e7f4845146f91b55fc042236c4023b77d1564ba17e68216aa976369a28
Date: Wed, 26 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743017393
