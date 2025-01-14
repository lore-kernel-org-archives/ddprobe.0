Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3F1229612
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736850954; cv=none; b=k5pIiudWylJ1z0Lyg7rB95Bq1jZqwybXGBR7FBi3Km224LyemRgMkIzJ0RU2qVyt9NOE/Az0cmMyRiM46ffuJ2GqMDEXW7fEPiLbEJQG1ee+1YVBRFD8SBsjcD1w+HrmpJM6YRAaPOJgY9zVc3S7SMRiBKtL2i+7RLwQO6z3syc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736850954; c=relaxed/simple;
	bh=PTzDJgoJi+rsgoUuKHCbbVka2DAd1SeS0O503rnfoC8=;
	h=To:Subject:From:Message-Id:Date; b=V9MsVF2j1K/0vdnTiDpDWUJjPMsiSRmQl7hyM4+l4UuRbSkqop9siZKQ4hkXegJ6SucgXYZmOOhG8pjBZbtenuZdlqzV7iRibTNvHd85inelIOmTm+wLts763cJTINegEOUyv7bd5Mcfszi1Te85mwFkuEpFuLrR1KYEcVH2nhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGu0mCSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGu0mCSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3F6C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736850953;
	bh=PTzDJgoJi+rsgoUuKHCbbVka2DAd1SeS0O503rnfoC8=;
	h=To:Subject:From:Date:From;
	b=MGu0mCSxE8V3qwCrO7goHVFFP9ADqRTgewQLBT1Xd0gT23h5TD7DMP6joaKHwVI3+
	 1ZE6eh709Yuv4+GY8ZP6ff12nzWKd8TBavXEc/glg3p0x4KnJa6t24RGXJ+T0DNaoV
	 NJTGYWphbJ9+aFtNWCo51Ze1xV405POdQ0Q+5ChLZ3LeVfTDf8FtgupdBXgXfrZrz/
	 trEDhxCbQ6LDzv0mZZhqXnpwg0KGFGLjTInGQ+tUcQ8uNaDnF+V/KxJX37EuDGxOqt
	 K08G+3zWJmYAHCSrRQqchqRzXOexPlICqYoRqg4p8ENUxeo44S/cosrPKJj0JIIYS0
	 IYf4ez6U5E9yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B5E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685095359.26567.2562456189040501625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f970362f807028a905736471a5f39167bdf525e19089f1050ef73bc6fe8a8d
Date: Tue, 14 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736850953
