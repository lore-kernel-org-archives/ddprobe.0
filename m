Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C123559CA
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787517634; cv=none; b=DWb4ryttcik6tK3+pmAmOSiEtjix6CyfaRSIqrCNpPtXQ6r3WTk2lwZePtSn2VYUFKysuUwBF86BRZqGUd5oETyo75n9GPwL808w7SM2pcH51uIZkRiR/sSABAmKWW6A6IkaBFQOcF00nlwY/UMn2G0IE1EzKsuqRhTQfsA1lPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787517634; c=relaxed/simple;
	bh=FYpJ4OMTGsXLiX7+uS5D85OvfF5M7y+Hx3GqOr+MDYM=;
	h=To:Subject:From:Message-Id:Date; b=H2NaGfmaH8VRACCEsW759TyHqlxVaLI/pO77mtad+kz34KG+luT8l1wTsrvYllE8d1HFC3g2YVAm9xEkhsBDCyi1Sm3/e7D4rgM9m4oTyZLIjxc2a2KZXLbSldXjkj7m9r1Z12TaZZa0il5hcWHk4Js4GOhxI4pXmrypsCNmXuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pud13zQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pud13zQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA33C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787517633;
	bh=FYpJ4OMTGsXLiX7+uS5D85OvfF5M7y+Hx3GqOr+MDYM=;
	h=To:Subject:From:Date:From;
	b=Pud13zQrMLJNv5+zkUEPN1i2Hqd778OeC2u+D+uq1/r5H804iQ1gicKx8i+7xHIm3
	 xadbDVfbthC8b5T/lEXND8PRYJ17eKEDw48f6/MnjuJfPAvXwZC7umAZCE6H1vdiCl
	 rubWwgaVqpysU6k1HzA//wGkbVJm7OPeHubtwcJuNtMDdjsR185W3PeJ8+CFYFRWJ/
	 HIudVZ7g1/Ff9I4ddPJLoLZmTsENTxp2zlDXLfmdgnh0gik7iVN2SPb1+cXdDIAaLg
	 DLUGyQMrIu+jTD75bbF3FKICIThybaQDwW6YAAEOLBjJiwyTe0UlU8QKowMq5rTkkU
	 K1G0RzzcrD8yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCFEC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751763369.24991.1170655672256532142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3516b78aff3791340341577b045029010edffe452d1a5c7a92eb44632e9b9bf
Date: Sun, 23 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787517633
