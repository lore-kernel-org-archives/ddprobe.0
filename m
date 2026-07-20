Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF903E00BA
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784545114; cv=none; b=FH93hE7769C20teB6xswlHqAEKOLZrF8AgxgPI7qSZunEmJ2CMzcnf7s2L4LVFVX91BZV1GERnmoMKYEPEWvhEIzbSTSgcT3lUbz1XaD+wj++mP1S8YsX9p5qjSrSPfhikZz3THORY3DpHT10VVtCXsOMX0xD8xEgN7tlwGhmsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784545114; c=relaxed/simple;
	bh=uZzUcrJyZm9Shr8cJQSiFdr+2McrTHCl4DCPEoTcdtQ=;
	h=To:Subject:From:Message-Id:Date; b=bcpSFYmf+ek2MmXyCXjEMGRNRwBpLndqxyccL1rHHVtdkxtd1IRF1lSvLoWes5lQv+ZqtSiZ4CdiIkPFKP+KQBYPI7CIjGsRlv4RapJJK4I9782j4kib5oIUZR1soegNCRqyPw1+bIzARrYC6pUK/BN8N2wcmFLKYD5wwY0rtWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubcMLMht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubcMLMht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3621C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784545113;
	bh=uZzUcrJyZm9Shr8cJQSiFdr+2McrTHCl4DCPEoTcdtQ=;
	h=To:Subject:From:Date:From;
	b=ubcMLMhtczsmd8voVtIv511oz7wbjrTSV6ZXsE3CaWCeHajwmHwV8l5dFvF3pXq+q
	 lI1gSZsKY/ZLId1kIUfaEN2xNsudj264oNR8hfMDRG0SA7/kH8pPJUOnCRPv99e154
	 HRjYcdHqOmV73gSuQJBXtC7sLAHM2JRC01FKe12iuy32BZVLJtiIH3rc325xDW/ypd
	 njoZzZWmKh/aDaVkQJbVjjTQ2qaICouoRkRZQYoejKs3AQe4oUrIsM0lFjBBdncxXZ
	 /SJTuBDSOjvFFtHyPS1nb0QoIcG7dqrO7F+UDnUcFkcF6C/IjJ4dLI2MJ1rfuPsBgK
	 lv/RgcrligUjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A925CC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454511368.20230.6007753923693487983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ad8a480e204504f56ec2682d89c64d9d8f45e21cf1881fc17272ea442ad690
Date: Mon, 20 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784545113
