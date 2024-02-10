Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B332030B
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707562697; cv=none; b=j6dMDrCeSiyetsKUt9nTRmRlXZGx7b8N6XckmFTK8l1qGSlJnC8PlvumFWdAvp5Sfdavk0BfCGfna2N4bwKZmkD0HNPzvSDHD0LYgvJ8AQHeh7ACp8fTRMuanVbsx/NzvugZBSiedPU7xec9S8zxhOHvTOA7zizUACHbb1sowKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707562697; c=relaxed/simple;
	bh=45uXgPo3RwKuowB+BGrJpyK6T2k0/iexGPm4AD2pH78=;
	h=To:Subject:From:Message-Id:Date; b=moQS/uRTB0/Xq+vgW2IJEMJlTqnse5DG3Cy5c/ff7bkFqFydSBpoHJAwp+yOaQMpuaIjqyMHq3XYyBIOO0QiszjNC8GM7SGGlyKvZxKGyHunoRmDkt0AKRnuRS8wqW974CmhM3lz+OODeb3KxO7nOas0DFtFlAgEwDEn5daAo+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoE10FjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoE10FjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 815DBC433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707562696;
	bh=45uXgPo3RwKuowB+BGrJpyK6T2k0/iexGPm4AD2pH78=;
	h=To:Subject:From:Date:From;
	b=WoE10FjHddzOm57DEr8Us55fgOvHREnBEb8Kg0y+p+MFKqxdQTOIFgQt8DNEwD0JV
	 9JQz1Om3Y/z6Gn6fhmyUw+8/bvlzMngTHsveeoZpgxZwp2Gci02JHiHbwp07HDQwBa
	 9ryscoZXqQbyC9vwGvzttQSPx1nvjGrPgSfnImd7Bdg1KXj6/YZH6yMWUf3c3OTgFB
	 yB6rHHGEwdlz8Z6bXTPQpO/NbEHlN6TnCRQtRo7HSqKKtr4qQw78LLQKBIeHBf5Hkl
	 +KASOSP8w9USgH5wMoVthViyINHGyLw3eTrEexkK+8dSQTKLZ9PQIFM4ZfaNK5W/Kd
	 6eRIylsttnrFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606FFC48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170756269637.22858.10010004796578248580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 137d643697580ead9e1573ca67702e807e623b4fb975be5bf6e5320636c3c6a4
Date: Sat, 10 Feb 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707562696
