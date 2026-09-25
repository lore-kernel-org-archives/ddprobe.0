Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDE83C818D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790311834; cv=none; b=Vi+8c3h7mxz6/T1/rG+9XPLwd+rzX5kNyxDL00AUj/9buNu1faoBT5RVXXgRKnIHjCdhQFg/wLXC03goSEdzsUTMl72wuQ/AZvj2eWc5lVDxqxOeVwQEwHE/HNh+82Jlik9OeRCULguab+o4IvJ30Vq7k1wxlhU059astpvLxMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790311834; c=relaxed/simple;
	bh=IXw4OoEz8vQ5x3zin8gm+ci5cBZPre0SHDJjfOCFC3I=;
	h=To:Subject:From:Message-Id:Date; b=UCg2mih5yBy3V2lm44a6XM+ZbrWctT43S780Zms4YAeegsvlbzs9RkcsEkD9eu7eeVMzkvrXxOWEuOZJTbghswuSl+u2wf0Dobqa4nzXR9k2bWB7FGrCCaOj1gSgz8XuEmFVUK7v6YKL0cY0gesLPxAeVteXo+SSza9bQ5OcdJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRaMnnbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRaMnnbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2DBC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790311833;
	bh=IXw4OoEz8vQ5x3zin8gm+ci5cBZPre0SHDJjfOCFC3I=;
	h=To:Subject:From:Date:From;
	b=tRaMnnbrzT6Wxx15ZJpXB1JSBQ/Mf5JEYJYuk4DsSPVJvW9t2hu524R2ZVAlapuf+
	 ADz0XSsP3antGPOoM2pjltZvtwofeAqgEKsdpZGYqXEEGapVHRoF/24SC+9m4QGYAx
	 /nmBIMCU0u0KY1Ii65Bx5y7nozbI28qVzsd+5qRyZM5sbT74VXw573CppxlRGpMuYE
	 /5tko91K5fmjDNxEBTAzX3FXgmvsgVPZx3+u86RE8n32BUQLm0Y8h+8/+cOiADMuJQ
	 syRXg23vTqfjb2y7Nrt9aRQkRrO3852REu30CbJsEYXlnNmdxQHYUc19+aerTRfe6t
	 KEQV6tylLuq2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD526C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031183369.4105.14180790719999934033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507600c6b7cbf1c9bac2af386b7393c67c60adb4aeed533df23e8da1801f7034
Date: Fri, 25 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790311833
