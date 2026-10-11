Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FDC3C2B8F
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791699634; cv=none; b=BPpx8sFjGW7TN6fnx+fXDuqFmvW4kCQiMoiZCYf3jqDHVam0w5jp5UYSC9NFUv3QBPoxSPF7IjI6tOfRPtiiO+1DErCDKkOLnWpT+vDXHn4gIY+ZPOFBy/tm7yO2PPo1MEzVI/tMkpxCRT2UZsAWy3maokEn1i2Ux6KqVaUhopA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791699634; c=relaxed/simple;
	bh=KeE4NneKhN141o+jMUoMwFOBH+c75gzjc7WhoKsIaeo=;
	h=To:Subject:From:Message-Id:Date; b=hHyjUCkCDBhYP51GvkeEcKeIbgl2/kzCbb+3gqRMRrypxj3FXxA5qMn12/06CWy0hN8PBsuTTZqQrO2sxYxQtEljy4mttdgts/zP07VJuHZtjUCOUHeZzO4mDYdLJ77yUohIs7HVD7SvrYOfgVjxmvUfdT0DFduCsEkzLvpwB3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbkQ7Icx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbkQ7Icx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4243C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791699633;
	bh=KeE4NneKhN141o+jMUoMwFOBH+c75gzjc7WhoKsIaeo=;
	h=To:Subject:From:Date:From;
	b=NbkQ7IcxEl29p7lJHDSD35nC+nc0ONqEPifaXM8m3glD9tGCtSuLwzQq7xBMuu7Lb
	 mhvyj+znHyR2O0aihMAXxVmCDOjFNRYkL4vHYKpvYDPC5WuM2K6MDRb3v4p7HvhNjx
	 CT/aK4lwRP7xAu9mwZoIYBZRUZRntQxTY6eazjaRCNQMZ810BoP7Y2Aszseu5yOTcb
	 1ZqieL+wMtU6TzorUVKyZZPBNO+ELeVNNBLk/kstgeITLU0d0mvJPHUnHPXFp3cxEk
	 d076tpDpsE7uFSRIXvPpkO9cRymFgTQ7AsfU+tH2Wuk7ynZG96oB3ZiwUB6Y1yJl2W
	 bB/1W0q3RjCqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0704CA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169963368.17977.8078291759784770421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0b4fc3c325688c01426f0c7e64e723d993bf48faed5ac7c79aa6dc564c3f1c
Date: Sun, 11 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791699633
