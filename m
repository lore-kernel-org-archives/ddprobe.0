Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF2C9460
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783307914; cv=none; b=oiuSFZuIIG/xivuSqppEbe7t4spBEgGFuK2ERL1pKRyG7GQU2KijEBwFTH4K5Lq70bvmpiRDKmpQ5qtI7fGhsf5rtBs5pOck6aysGbiiimNiuBHUgvzElqHHq3DN1+Hizccaya5vTWat69IotV8SwoZIcIUs+IKtRlmWlAknX6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783307914; c=relaxed/simple;
	bh=qdNAN87RYb79gbpIThmH75Qhfv35jj5bR9i4VBroTLs=;
	h=To:Subject:From:Message-Id:Date; b=OcmmnUk9NhAN5vwIUwO8o8reqt+f59bRXSYPRnyoUaSRO8JU4t3EKUvMkozuGUbYI0bO9NVnHHI5t+GKwhZdSjubaIYawnZKSMfvpC/FCCjVk1/QDyu7AJaWLe5ZymsKfuGTF4e4YA31RkN++UrAYFHiD3US5g65uOcppcP1cJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhVBvSNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhVBvSNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD0CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783307913;
	bh=qdNAN87RYb79gbpIThmH75Qhfv35jj5bR9i4VBroTLs=;
	h=To:Subject:From:Date:From;
	b=QhVBvSNpv2hQvXhWInMclCy5hlvudJ+Mt9uKkHfhAz3dhNnvplRooqCzPh1tyaoNF
	 QWc0jLlEvrCfK3SArckD5njxpCrDJfJZ5lHpY3RGAtQqIwyXrYpjeza+PnIVuTokSM
	 D4t6cuUMwBVVVntDj2/uOsm3NX4vPO7GctgBsLHeGGv0gxnSQMy4NlUVtvC5w8651g
	 uYk6RS1q3VVqZbiY3pjU61Cac5bkXLbF7wGXOcJOOXgumW4u1uMjLVoWJWnT0iFzUD
	 +7vuRV8nv86WgZ/tQWbA61TXVIqp4p2ziesjexKyNbjkSXKpjFCIGhGo0t35Mm2IZY
	 6mqUUsLCObJiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8608C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330791368.13662.5029348890280413609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d541e1d7eda11fae53c043f5339cb5d8ee28d53a5a6961ce5b7a179f69a05591
Date: Mon, 06 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783307913
