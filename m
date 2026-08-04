Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7803529992A
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785862836; cv=none; b=DWPKkZ136H9eJ5sWda/L75wgvn+6AUzNYA/HpAmMPfUkur73gggg5f80c6vZQ5RsE/ywmV2Aw/zg01FKLy+C03s8tf6DUboMrBBlGYqmQSBrBuvCwT91uYaR0X/qshXKCPhiy1GeAZuJxLzL0wH3PV6xEJewo8NzaFlsm65muHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785862836; c=relaxed/simple;
	bh=kxS5wigZo+85wiQ02+WEajxlaPZmr2tZ47nEbe9y2+Y=;
	h=To:Subject:From:Message-Id:Date; b=AjZjbZ1PkmDOkLvCleFzhQoLGDFlboBZyr1fO/88p5cx5pffF0lKxxc7jUQDfGhnXknldTXVk7ido1/AiB9PpVTHiC62HGlLlyMVJwjj1G9u6ZfwFNCouJH2rZiQr8IfQQvvRMC14R++mDxarsfEUDzRDEJyVFO/MvVka5SnhbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiAM+zJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiAM+zJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30B3C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785862833;
	bh=kxS5wigZo+85wiQ02+WEajxlaPZmr2tZ47nEbe9y2+Y=;
	h=To:Subject:From:Date:From;
	b=YiAM+zJiupkEH9Yeqkof1AkyT1XmAwPwywWepRBMGTqbPmu55x9shd0M7IYJ0ksag
	 22TeLgscGszsSPMwGCMxwhSEqlNO1efEyEsOZ+feppfWmMuxI+4jQE37m6Ha7+sIrU
	 unHHI4HMmu084qCnluGiocrciroFmGi/Qnmnr4anglLTinX9/dqpfWAnat2m/0bGXY
	 I3MXKflTatbZE6sI5+SmtgKYReQssEDNzzJwzfVEEw1T7xHRCOw23OpqCgD88tKbGp
	 TtD3jPzfAkZcnkZqBs7/nArDRh5WxRrH9wsoXBIUw1Dhx7d4o6655klzRrQlmoPFRu
	 Hc1EbDmQbU/IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA19C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586283369.18253.15005988685384707544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfecfe3a9af15af5656be46edd0b357daea47955cbeef3533d9f298884698993
Date: Tue, 04 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785862833
