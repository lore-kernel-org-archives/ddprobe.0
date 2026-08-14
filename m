Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6952B2F28FF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786702235; cv=none; b=cIvdmYmOfRYfhJ86c800e6sGsDYw0E4O0fkxfFvVZpIUVZGLn+WEZbOw81/9rNzJX0cRV1fD/kFyRAmcunI+WBhQ9DfVWa8aa3FRnyMrfIoLg8cpUUoggEkpH34AvgHTOtvxwqbIMhBpYei3o82t7U4HPp0WwH4xAZNHE/TgG44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786702235; c=relaxed/simple;
	bh=byMpWBLDT0Rn5GpWgCFJ7kt33zg7SBR83yoqntPTiGE=;
	h=To:Subject:From:Message-Id:Date; b=aEgmxkw8Khu7l7r12cKzUjkl8qOeQVinnsQGByFoPxHpKuw29lUas2W/5xjL4qy/M+D1TLo3nc8F7kJZnJMRV/gO2GAkFierVC8zEuZszz/NumGkSRgrdp8S93e34bUSg+vBoZg5MRMiELAR/rW/EbT+9FAZLXORfVsPPQRK+Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YU6YhSXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YU6YhSXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D82C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786702233;
	bh=byMpWBLDT0Rn5GpWgCFJ7kt33zg7SBR83yoqntPTiGE=;
	h=To:Subject:From:Date:From;
	b=YU6YhSXHGFyutTqO4+MnEb68eM0QSgPiCIfeYSk7FkVSrTMZzUX8D7FOrdkTgsqpt
	 Z65Wau1ztyOvTut9UZvpAEJ0NrnwcYMngKpmxIEm+LgoVHtbTbHL3ak70be3snDLKR
	 z4RNc0arFKCO6kKH0ZtKilNf1UOVB0loiNKMcdqzWsD5IaX6mZTEh8nktbkiy/gJ0C
	 PmgnnQZtyy5ncdNfbQvsBSJ6jMmp0ifvSODboqf6sa1PFeUfhTDYNU43LL2xkuUlUx
	 5T513e5ZQBNCYBh9mONNb7GX07qQKC98qaQVlmfs/8mdMJcYsveagt5Y9Q9VCe9QSn
	 cMqTa0N9vp1IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83D1C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670223368.9163.16841922001192605705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5918c5c215efd093c1755fa115fe2f33174f7f7282eb3004fc5f1c5b84a3a20
Date: Fri, 14 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786702233
