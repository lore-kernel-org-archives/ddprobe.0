Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FA7645
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727796354; cv=none; b=YS8PJYPpg00AdeJ4KIQ7siJmyBPJgV+nfC5lFKb+9yEfIgzB2EhXA3tfs+EgDadml6RE/cYP/47yFIIe3gNufPiQmcf8YPZ+kkIpG2yxT2Ed/GXrGdETd2s6BmqvSxfcng+f+nkSKImo5rj8ELOJqjmulptvCrI+rDMo7HPMDVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727796354; c=relaxed/simple;
	bh=pCOcQNG0BtA2wnzoQfk8mwkVUBO6Xf06Dye3k1v6pGQ=;
	h=To:Subject:From:Message-Id:Date; b=oq5yQcSmcS9gL0IzTfcQM/DaycjLQCSrhK0kzJS5zHvb7825W9lxTtMUUAYXaOniWESBzKXGBNLJlzBVN+nhAx8Y467Eif4iasBrNHiLKrNO8bTXn2VXZGBSm5b3ycvpjvWnG78GAFjY3f6wHDnRfsUf6PXthAEYaXJADmR+alU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2mYZkIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2mYZkIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EADC4CECD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727796353;
	bh=pCOcQNG0BtA2wnzoQfk8mwkVUBO6Xf06Dye3k1v6pGQ=;
	h=To:Subject:From:Date:From;
	b=i2mYZkIUCMAMTm+yjFa/jPytfKmVHLVNaJcii1T9XDgyP3eyQFdQqYZ3Qc8Wmk6W9
	 XzaxHU4ljtTbwuny8U15A/dmHvXt0lpbxsw//pE0x09gtL7+EeNVBN8aRr34oMZmja
	 1ItCICbRlXLPh9FYNStNkjPcnovnFKv2HxNU1n/0N8l3rhovk8qOvR3raqv5ytCnzR
	 PdwpuDzE6HaSBSMLERALf2jd/BdxGKZaXiRPYBItPsaKrCmMIkZdMbPHR/tyBHrR9g
	 ouJjiziXC0tDNSrx7XNttow0//WSvWUBHyKcvMdSzYZcjo5V/2ZHJ2dMFqJjRyHFD0
	 rA8cJwGCRXxpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A75CEACDD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779635359.19187.2341613759965400547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3af5521f2a27badc556f8dca8c2e5c0f1c1b7657f8ac92f42bce936eb5aa62b
Date: Tue, 01 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727796353
