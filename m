Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F644C8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728210354; cv=none; b=AlCO03e2PaT+Eez0XSabNOnB4+tVjKuCynxrzBMenLI62lpM2qnz5+u8XyeEkqC5d3jmH4ulFaOcDEzGZkdzwWVnBs8UNLrUo9JLR1t7FCLxaeb0GO/c1DT0aopRfmavLO5dhSPsB7akDX2yzNQO2QcAseMkNMzrrSQHOf7N9sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728210354; c=relaxed/simple;
	bh=98f/AVO7AV0cNMjqpXsQtJp8ZsmsRPUOo9ToqoVKKVc=;
	h=To:Subject:From:Message-Id:Date; b=CEspbi+QHkbXWRVjQbtkFiNqOLNW6p370YX4V7GyJmuT0Fwp2/RH1yeLpxF3sB1G7d0uxXYlZtSEaD2B3ISLb4K4uN6lVZyc/n8f1f9dPB43xLPujP+5y0Zg0MQsT8TQ3QLhEylcrctEj8yCWK6OnOQ2mdMHKyNQdnPwZwRqzQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lss6rodT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lss6rodT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD2AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728210353;
	bh=98f/AVO7AV0cNMjqpXsQtJp8ZsmsRPUOo9ToqoVKKVc=;
	h=To:Subject:From:Date:From;
	b=lss6rodTT3dynhGr5mNPrEosQKuvzkl2HDGJnYFYZuQTVN8C21FQZDCm1NjT9ZA1I
	 jMutBONKTiC+ogm3sgcjLh5qbVpY8Y7xkyJigUaL69hq1NkWL6gehWue75uX1mAu+z
	 gywO2prs8YxBpkptlIGyMRGCAzGF1MxlcyBp1CQL9w28+tkCpE7POSZS1m0xvhUrkj
	 1a+BmEYmxsbECUn1LBdyEFB/hDNv/IpxGUuH30kp527vdcHn6A44uOx72jvn9wwLqz
	 q9CDFhx+mN3psoQSgDfOS/V8Ju05D3tQCvwWtoKCeQqm5xhJ9C1HWAH2hNYIDRkBJt
	 obBezFtp4r5zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C09CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821035361.11608.6083227360530285827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763a605f7eee3d786d90d9553dc287ec8232422d51e1cf41ea57e1c1a3ac670f
Date: Sun, 06 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728210353
