Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A7F25FA10
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753771793; cv=none; b=IX6BikvT6T8LZln36+lyYsWH+KZqcGEiWabe7SRTHPwTB/XMvki7EZIwb2O5uJZ0ayd++flh+rfICQnWeyhyaNmFSPWFWeDrv9e8KkEBsn/wB9rUKrc/WVTpDf9/syM5sYtOnBL+nMuhxQ2AsicrVDqCAziFj05dYij2A8i2LbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753771793; c=relaxed/simple;
	bh=LeQjlIhoxELRu/epsFuZmMP97FPt0eGh+mCcdh1FPU8=;
	h=To:Subject:From:Message-Id:Date; b=aT6kLTpAbjoZbb+/4IaF3XzulKiWEY2gSuy/A+McSpB5BBKq4pXL9f4UsAPw/WgOfbnE9IRxsRgAivMQjq3C4MgvW0nE8/r3Z+jxTjJOJxu0phbSh0hlTpMRszsv6qZt4xh9TXzJg319nvYdqe3gI7CrjYFX4YUObhzPvrrb67Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+1PVu8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+1PVu8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E14EC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753771793;
	bh=LeQjlIhoxELRu/epsFuZmMP97FPt0eGh+mCcdh1FPU8=;
	h=To:Subject:From:Date:From;
	b=n+1PVu8n0UQerjLTsHTVIGsjzTecP1lX4kWDkiyWPQb/u5mZ6V2xSK31LhMpGSAx8
	 gfbYsZzoN5nuD64G0THGiuz15bgo1TpD+7P6BaI+CxvTplVM3FOtbgI1wiooOgiJ8T
	 6De5V0fieCFAHVk1rp8dFZ73wWblyLJqnDl5aL7ec4XzyNWKrDG57VAeYA0LJiUYeH
	 yFxTFGEPgfEEMpMRrV620dJHDokjf01E06GUdQNCZJVcFS7vSWyoK7q7ORF/coGFGp
	 dEP/tctXhhs17nAiX/h+1W/YHRgNqX7onM3oQ4jLMbzmnrwtiAyANL8nqY99ZasVwc
	 KjD05jgYoKvyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF49C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377179357.21655.3767868097455497045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a6ffe5962e6915032341f9c6e7506039fdf58caa95fc6aadf0a5d831da515e
Date: Tue, 29 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753771793
