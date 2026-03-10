Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151AC3BED4B
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773162894; cv=none; b=kAms6uay34V1cHaaGRm1RTPojRawUSuzmqwIXBZ9ntv5ICU3Pat7Cd63IAmsTmon0SZMC+rmy83e/O8rTrSdjACxDcGdWUVuK08YsFcUa5Z6pt4j9XHBQU8KR1M+QX5ESNXf7bc8ilLHG6swOQiukXpO7qdfmxAluyfFaQT1DRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773162894; c=relaxed/simple;
	bh=jisRoFahYHSSJFQMgVqqFYXNfGV6JsdNDc3dZyYcT/k=;
	h=To:Subject:From:Message-Id:Date; b=nr2cTLXUgDCHIfzeDb22woSfe340sQ3VidNTaetDwc6/7cLLTgT++0CeXdblgksk3o+dhQ8mE9tivkXOmtvyrxATdY80im3zFag3C1RLorSUyVpX5iNSyF8htOc0APpxf07MAONXHoj7vUIQwkduH8uBf9Hpfl9ZXYn6sRUR7kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGsJl9Dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGsJl9Dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A309BC19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773162893;
	bh=jisRoFahYHSSJFQMgVqqFYXNfGV6JsdNDc3dZyYcT/k=;
	h=To:Subject:From:Date:From;
	b=iGsJl9DwOCC+cZdbFCVNTvwm7CsvU8qjSL+Pvmv3By3DaNFD7wX44hgD2nN1tkmov
	 JEGj6B1cZqPPQwvhZ2iz2TlriMxnETMJZNufhhDdKVfP4oLjS0xMnme9osiIHrEdnx
	 +uO5/7MdujOwTW1ia9bgqjSDrG9I+GQpqJL42igsZQXOs8/xKp3CuoeCJE1xUyG2Qx
	 8LJMT9ihvIy6tjWSTn3UF76oOeIfvH8xcP+HlscJDL+8XplaM8ZPZQF1LYixENAnLR
	 XH7bSOWmcPJKCkU0OMTaFubawFu89dl1uJZpzEi1thRoVNc5DObZXC83+rAfJzCoVV
	 av8vVKkSOktIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90558FD4F09
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316289358.13612.3109335560983274310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d137606013cf23d98d9911c7b92faefa1d7bd4c5716f3f5d82164514bdccd5
Date: Tue, 10 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773162893
