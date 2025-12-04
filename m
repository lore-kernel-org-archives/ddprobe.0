Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C29F155C87
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764810174; cv=none; b=NlAJWAbu+kjULfnfkOrfB1QmPHfueLGv99TvbFaBFxANFGx2uDOwuLBtxEEkwj/ab+j05cCoAKwkXBAcSnlEZ9Y8hORa1o+arO4p0Twhq7FI57dJ3q40XgGFMteTgiK0hbeN5N71tU9d4kY1DVPlWbCo5tAUpyNQX/NTGSFzx2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764810174; c=relaxed/simple;
	bh=oecCcn1q6PEPFQbCwuDNdhVaQerkW+hfoIC1F1fblAU=;
	h=To:Subject:From:Message-Id:Date; b=TZayDW8JHL1Stm9HgvZkWVpvHc07KPjIET2pbu4RxKWjKdRc5DuF1zp8lvAQ5C/j+WtdOlKHR7v/zrrW4HcWXBZjZ9emGA/2QD7IVzQFF+Jv6DB2agrb1jXL7V0yafJCir3zBDCysL7+mGIgOzsESQgcUr1GxawW4J6eM13Jy4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baCinBtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baCinBtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B472AC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764810173;
	bh=oecCcn1q6PEPFQbCwuDNdhVaQerkW+hfoIC1F1fblAU=;
	h=To:Subject:From:Date:From;
	b=baCinBtRcDr0eN+NPihA+lM3Ac5AVn8GPPv9is72dd4LEg0Qoe9feQZt84poRT+HT
	 pGXW3+GlqEH8I0ZuSobcq3st0Pszci/S7CebiUvi20K3vRX36UDWp5Gby4dmeWUV+r
	 M0PD7LC4ZXm9wtf0oAlO3fbkvVM85/QTIso0DggmJbQmiDr/dYNceANsaMSelHyuMA
	 gl+kdhfqCzxqPDIjS749LBFb2Zl0TG1qU0Ahd+7Hu7S7WJwYrk4Hvasf3MshlCa516
	 R5xfybn6JnYy8d46p/SG4bH0m7ysRW3LsZlne4Luwu+rH1XkbnG6u5Y55rs/U0//Xz
	 NrPYoUc/mYl/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DC6D1CDB7
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481017360.885.1681500473033790281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f35a528fa2e0b0ebf502702eb08c826fdb3b128c01749ff6fc77471d021ddb1
Date: Thu, 04 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764810173
