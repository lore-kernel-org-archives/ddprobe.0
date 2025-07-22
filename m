Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4482E371F
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753228194; cv=none; b=Paep83SrWXyUKRAYgkUyjPtv5Z+jZCkoL74+Ocl6SJe/XdM+p2b3KMQrF96nwGFOpaC8SZEeoKkrOa/rbeQnOwcq8D3Lt05Ep4BcEsB7dKALOwlWhjE7FAOxfmtzDdKw/VPKAEmzEI7cdRDfwjOXM4ni8g4YnWoydoBqIZqOMAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753228194; c=relaxed/simple;
	bh=Qqpu0hvUpe0phE8E7RB3vcat9gei3acWxfd7MxB36yk=;
	h=To:Subject:From:Message-Id:Date; b=HoT6JnvEe4SD7GuHNoAuzZh4VihcTf/AWpRBYhjHNu2glW7Lo5WyNQjjArLV7iI06Cb9Xjc+ubEuxtrG8J20LpdR3+Lj1T1CcAUn99ceW5/X0J3H25i42gEtb/gNcghYEXRK08Qay1UFGSNnZ30NiWNVMJLgjRrlIoaf2HFaEew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoR9m7fC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoR9m7fC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD5CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753228193;
	bh=Qqpu0hvUpe0phE8E7RB3vcat9gei3acWxfd7MxB36yk=;
	h=To:Subject:From:Date:From;
	b=ZoR9m7fCeYTmDchGaI7kcKTquajDZJ7e8SJzb/Tk1TvkUiN4b8aqvOWZQGooN9TZD
	 WbFsiLjNZd2AMXLY1EexfKiyNLMnvwcD3nKWKdxsg0I5VmLOH2v77CBzM7hDOiRVuz
	 QDmObdeFthTPw60NlrFxNPA1LxR/BvCoQ3QBzBzQI433UfNDRLGCxIavY9MuLpNLhI
	 MFZqVCamk28dsHbbgALG/6x5zO5WzwgByEtERrXrLJp2L1DnIQj8nWeRCBpeF7uOCK
	 tEMyUqqcqZjmXMRHCwv2HqYluripYfNA4q78011P1JTzbXEIzjKSuiIhprn+EqmeT4
	 whj4txXPn+7Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E1C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322819357.27518.7718780541719840933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b603c26e0661cfd13655d511d1da16e9da52f67739683bdd7bf112788ed944
Date: Tue, 22 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753228193
