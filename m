Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A7912C811
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706917697; cv=none; b=uPcONSPvaXl1somzvd84H6KYDZ78Ka9Y/YWXRiJfGhtOyxP5DaFrUTsY00Uoq/O/IS6ewdJQPkaKAsszrr6CYyy0gO2IwizyCqFNO6LyfBoOPOstm+AqazGxoNCjaPWhOGpuhr4YA5VssF+amWfBakMT2L7Gz9d0A3M9F0GIGYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706917697; c=relaxed/simple;
	bh=oqbWxMT246WaEy289SyxVChCRLsbgSysFyALL52KkL0=;
	h=To:Subject:From:Message-Id:Date; b=vEIBYuTCPrlhbsgIbBj2t2H1x3bBmCulSUE3yz2iwgTvsnHF31VuXucsJWsXeACRK8rK804tasA2HaH1GI3++AZ0hcoiletiI3PQfkzLxM4hd9mYTdwK/MOzUpsJ6lpHpzcH3SVUt0aZphMziG0O0q7PPDYrCFdqgB0i1xjU3ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hi7C7Ua/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hi7C7Ua/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C0CC433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706917696;
	bh=oqbWxMT246WaEy289SyxVChCRLsbgSysFyALL52KkL0=;
	h=To:Subject:From:Date:From;
	b=Hi7C7Ua/osRZJsKdyufIDHQQgWewHWw73tJheq6Bc1zrMo02nbMjr/N9YFtQchayD
	 6CW4AAMaIhtd1XCbrLhH5J5bf9Khwyb2JTgijTjwDntZjNuOxc2gwnfJkvPX1tppaR
	 H0JJYVJC6jhPCgo3O5ky90lrPX+/L7xc55HdGsFHhbX1Nk4flEbb8f1xTpT7yBGS8Z
	 OWSOpw/QPsI0VpPlR13KmHWudHtbMisHvaQCCeqb+8ndOChtPyzLRoc9JBTnPhyNHD
	 4DoDVZ3pTBnbqyKBWvE5dIVJ9BYB4EsGB2335FRS0Y1yVnyWS3OfYFW6XbjZ3Etyy7
	 P8EYmr2KuX2Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C23C48295
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170691769638.15847.2105414454494281085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937459b0a3bc6445a6ad52102b84399716d4ab7364d3c29ee3658d9cb9bd51ba
Date: Fri, 02 Feb 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706917696
